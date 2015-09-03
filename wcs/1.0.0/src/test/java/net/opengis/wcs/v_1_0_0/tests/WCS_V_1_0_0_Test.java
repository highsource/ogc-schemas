package net.opengis.wcs.v_1_0_0.tests;

import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;

import net.opengis.gml.profiles.gml4wcs.v_1_0_0.CodeListType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.DirectPositionType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.EnvelopeType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.GridEnvelopeType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.GridLimitsType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.GridType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.PointType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.RectifiedGridType;
import net.opengis.gml.profiles.gml4wcs.v_1_0_0.VectorType;
import net.opengis.wcs.v_1_0_0.CoverageDescription;
import net.opengis.wcs.v_1_0_0.CoverageOfferingType;
import net.opengis.wcs.v_1_0_0.DomainSetType;
import net.opengis.wcs.v_1_0_0.LonLatEnvelopeType;
import net.opengis.wcs.v_1_0_0.NamespacePrefixMapper;
import net.opengis.wcs.v_1_0_0.RangeSet;
import net.opengis.wcs.v_1_0_0.RangeSetType;
import net.opengis.wcs.v_1_0_0.SpatialDomainType;
import net.opengis.wcs.v_1_0_0.SupportedCRSsType;
import net.opengis.wcs.v_1_0_0.SupportedFormatsType;

import org.junit.Before;
import org.junit.Test;
import org.xml.sax.SAXException;

/**
 * WCS Tests
 */
public class WCS_V_1_0_0_Test {

	/**
	 * Holder of the context
	 */
	private JAXBContext context;

	/**
	 * Prefix mapper to keep the XML tidy
	 */
	private NamespacePrefixMapper prefixMapper;

	@Before
	public void initializeContext() throws JAXBException {
		this.context = JAXBContext.newInstance(DomainSetType.class.getPackage()
				.getName()
				+ ":"
				+ net.opengis.wcs.v_1_0_0.DomainSetType.class.getPackage()
						.getName());

		prefixMapper = new NamespacePrefixMapper();
	}

	/**
	 * Test that enforces that the marshalled coverage description complies with
	 * the provided WCS 1.0.0 schemas.
	 * 
	 * @throws JAXBException
	 *             Thrown if there is a problem marshalling the model.
	 * @throws SAXException
	 *             Thrown if there is a problem validating against the schema.
	 */
	@SuppressWarnings("unchecked")
	@Test
	public void testCoverageDescription() throws JAXBException, SAXException {
		net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory gmlFactory = new net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory();
		net.opengis.wcs.v_1_0_0.ObjectFactory wcsFactory = new net.opengis.wcs.v_1_0_0.ObjectFactory();

		// Create the direct positions.
		DirectPositionType lowerLeft = this.createSampleDirectPosition(
				gmlFactory, -180.0, -90.0);
		DirectPositionType upperRight = this.createSampleDirectPosition(
				gmlFactory, 180.0, 90.0);

		// Create the envelope.
		EnvelopeType envelope = this.createSampleEnvelope(gmlFactory,
				lowerLeft, upperRight, "EPSG:4326");
		JAXBElement<EnvelopeType> jaxbEnvelope = gmlFactory
				.createEnvelope(envelope);

		// Create rectified grid.
		RectifiedGridType rectifiedGrid = this
				.createSampleRectifiedGrid(gmlFactory);
		JAXBElement<RectifiedGridType> jaxbRectifiedGrid = gmlFactory
				.createRectifiedGrid(rectifiedGrid);
		List<JAXBElement<? extends GridType>> rectifiedGridTypeList = new ArrayList<JAXBElement<? extends GridType>>();
		rectifiedGridTypeList.add(jaxbRectifiedGrid);

		// Assemble the spatial domain.
		SpatialDomainType spatialDomain = wcsFactory.createSpatialDomainType();
		spatialDomain.withEnvelope(jaxbEnvelope)
				.withGrid(rectifiedGridTypeList);

		// Add the spatial domain to the domain set.
		DomainSetType domainSet = wcsFactory.createDomainSetType();
		domainSet.withSpatialDomain(spatialDomain);

		// Create the longitude latitude envelope.
		LonLatEnvelopeType lonLatEnvelope = this.createSampleLonLatEnvelope(
				wcsFactory, lowerLeft, upperRight);

		// Create the range set.
		RangeSet rangeSet = this.createSampleRangeSet(wcsFactory);

		// Create the supported CRSs.
		CodeListType crs = this.createSampleCodeList(gmlFactory, "EPSG:4326");
		SupportedCRSsType supportedCRSs = this.createSampleSupportedCRSs(
				wcsFactory, crs);

		// Create the supported formats.
		CodeListType format = this.createSampleCodeList(gmlFactory, "GeoTIFF");
		SupportedFormatsType supportedFormats = this
				.createSampleSupportedFormats(wcsFactory, format);

		// Assemble the coverage offering.
		CoverageOfferingType coverageOffering = wcsFactory
				.createCoverageOfferingType();
		coverageOffering.withWcsName("Coverage Test Name")
				.withLabel("Test Label").withLonLatEnvelope(lonLatEnvelope)
				.withDomainSet(domainSet).withRangeSet(rangeSet)
				.withSupportedCRSs(supportedCRSs)
				.withSupportedFormats(supportedFormats);

		// Assemble the coverage description.
		CoverageDescription coverageDescription = wcsFactory
				.createCoverageDescription();
		List<CoverageOfferingType> coverageOfferingList = new ArrayList<CoverageOfferingType>();
		coverageOfferingList.add(coverageOffering);
		coverageDescription.withCoverageOffering(coverageOfferingList);

		// Marshall & validate.
		Marshaller marshaller = this.createMarshaller(this
				.createCoverageSchema());
		marshaller.marshal(coverageDescription, System.out);
	}

	/**
	 * @return The JAXB Marshaller.
	 * @throws JAXBException
	 *             Thrown if the marshaller could not be created.
	 */
	private Marshaller createMarshaller() throws JAXBException {
		Marshaller m = this.context.createMarshaller();
		m.setProperty("com.sun.xml.bind.namespacePrefixMapper", prefixMapper);
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		return m;
	}

	/**
	 * @param schema
	 *            Schema used for XML validation.
	 * @return The JAXB Marshaller.
	 * @throws JAXBException
	 *             Thrown if the marshaller could not be created.
	 */
	private Marshaller createMarshaller(Schema schema) throws JAXBException {
		Marshaller m = this.createMarshaller();
		m.setSchema(schema);
		return m;
	}

	/**
	 * @return A schema instance for validation.
	 * @throws SAXException
	 *             Thrown if the schema instance could not be created.
	 */
	private Schema createCoverageSchema() throws SAXException {
		SchemaFactory factory = SchemaFactory
				.newInstance("http://www.w3.org/2001/XMLSchema");
		File file = new File(
				"../../schemas/src/main/resources/ogc/wcs/1.0.0/wcsAll.xsd");
		return factory.newSchema(file);
	}

	/**
	 * Creates a sample rectified grid.
	 * 
	 * @param gmlFactory
	 *            Factory to build GML types.
	 * @return The assembled sample RectifiedGridType
	 */
	private RectifiedGridType createSampleRectifiedGrid(
			net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory gmlFactory) {
		RectifiedGridType rectifiedGrid = gmlFactory.createRectifiedGridType();

		// Create the grid envelope for the limits
		GridEnvelopeType gridEnvelope = gmlFactory.createGridEnvelopeType();
		List<BigInteger> lowerRight = Arrays.asList(new BigInteger("100"), new BigInteger("100"));
		List<BigInteger> upperLeft = Arrays.asList(BigInteger.ZERO, BigInteger.ZERO);
		gridEnvelope.withHigh(lowerRight).withLow(upperLeft);

		// Create the limits, set the envelope on them.
		GridLimitsType gridLimits = gmlFactory.createGridLimitsType();
		gridLimits.withGridEnvelope(gridEnvelope);

		// Create the axis names.
		List<String> axisNames = Arrays.asList("X", "Y");

		// Create the Origin.
		DirectPositionType position = gmlFactory.createDirectPositionType();
		position.withValue(20.0, 10.0);
		PointType point = gmlFactory.createPointType();
		point.withPos(position);

		// Create the offset vector.
		List<VectorType> offsetList = new ArrayList<VectorType>();
		VectorType offsets = gmlFactory.createVectorType();
		offsets.withValue(4.0, 2.0);
		offsetList.add(offsets);

		// Add them all to the grid.
		return rectifiedGrid.withDimension(BigInteger.valueOf(2))
				.withSrsName("EPSG:4326").withLimits(gridLimits)
				.withAxisName(axisNames).withOrigin(point)
				.withOffsetVector(offsetList);
	}

	/**
	 * Create a sample direct position.
	 * 
	 * @param gmlFactory
	 *            Factory to build GML types.
	 * @param x
	 *            Horizontal
	 * @param y
	 *            Vertical
	 * @return The assembled sample DirectPositionType
	 */
	private DirectPositionType createSampleDirectPosition(
			net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory gmlFactory,
			Double x, Double y) {
		DirectPositionType position = gmlFactory.createDirectPositionType();
		return position.withValue(x, y);
	}

	/**
	 * Creates a sample envelope.
	 * 
	 * @param gmlFactory
	 *            Factory to build GML types.
	 * @return The assembled sample EnvelopeType
	 */
	private EnvelopeType createSampleEnvelope(
			net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory gmlFactory,
			DirectPositionType lowerLeft, DirectPositionType upperRight,
			String crs) {
		EnvelopeType envelope = gmlFactory.createEnvelopeType();
		return envelope.withSrsName(crs).withPos(lowerLeft, upperRight);
	}

	/**
	 * Creates a sample longitude latitude envelope.
	 * 
	 * @param wcsFactory
	 *            Factory to build WCS types.
	 * @param lowerLeft
	 *            Lower left position of the envelope.
	 * @param upperRight
	 *            Upper right position of the envelope.
	 * @return The assembled sample LonLatEnvelope.
	 */
	private LonLatEnvelopeType createSampleLonLatEnvelope(
			net.opengis.wcs.v_1_0_0.ObjectFactory wcsFactory,
			DirectPositionType lowerLeft, DirectPositionType upperRight) {
		LonLatEnvelopeType lonLatEnvelope = wcsFactory
				.createLonLatEnvelopeType();
		return lonLatEnvelope.withPos(lowerLeft, upperRight);
	}

	/**
	 * Creates a sample range set.
	 * 
	 * @param wcsFactory
	 *            Factory to build WCS types.
	 * @return The assembled RangeSet.
	 */
	private RangeSet createSampleRangeSet(
			net.opengis.wcs.v_1_0_0.ObjectFactory wcsFactory) {
		RangeSet rangeSets = wcsFactory.createRangeSet();
		RangeSetType rangeSet = wcsFactory.createRangeSetType();
		rangeSet.withWcsName("Rangeset Test Name").withLabel("Test Label");
		return rangeSets.withRangeSet(rangeSet);
	}

	/**
	 * @param wcsFactory
	 *            Factory to build WCS types.
	 * @param crs
	 *            The coordinate reference system.
	 * @return The assembled SupportedCRSsType.
	 */
	private SupportedCRSsType createSampleSupportedCRSs(
			net.opengis.wcs.v_1_0_0.ObjectFactory wcsFactory, CodeListType crs) {
		SupportedCRSsType supportedCRSs = wcsFactory.createSupportedCRSsType();
		return supportedCRSs.withRequestResponseCRSs(crs);
	}

	/**
	 * @param wcsFactory
	 *            Factory to build WCS types.
	 * @param format
	 *            The format of a file.
	 * @return The assembled SupportedFormatsType.
	 */
	private SupportedFormatsType createSampleSupportedFormats(
			net.opengis.wcs.v_1_0_0.ObjectFactory wcsFactory,
			CodeListType format) {
		SupportedFormatsType supportedFormats = wcsFactory
				.createSupportedFormatsType();
		return supportedFormats.withFormats(format);
	}

	/**
	 * @param gmlFactory
	 *            Factory to build GML types.
	 * @param value
	 *            The desired value for the code list.
	 * @return The assembled CodeListType.
	 */
	private CodeListType createSampleCodeList(
			net.opengis.gml.profiles.gml4wcs.v_1_0_0.ObjectFactory gmlFactory,
			String value) {
		CodeListType codeList = gmlFactory.createCodeListType();
		return codeList.withValue(value);
	}
}
