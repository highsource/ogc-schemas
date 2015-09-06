package net.opengis.gml.v_3_2_0.tests;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import net.opengis.gml.v_3_2_0.DirectPositionType;
import net.opengis.gml.v_3_2_0.GridEnvelopeType;
import net.opengis.gml.v_3_2_0.GridLimitsType;
import net.opengis.gml.v_3_2_0.GridType;
import net.opengis.gml.v_3_2_0.ObjectFactory;
import net.opengis.gml.v_3_2_0.PointPropertyType;
import net.opengis.gml.v_3_2_0.PointType;
import net.opengis.gml.v_3_2_0.RectifiedGridType;
import net.opengis.gml.v_3_2_0.VectorType;

import org.junit.Before;
import org.junit.Test;
import org.xml.sax.SAXException;

/**
 * RectifiedGrid Tests
 */
public class RectifiedGrid_Test {

	/**
	 * Holder of the context
	 */
	private JAXBContext context;

	@Before
	public void initializeContext() throws JAXBException {
		this.context = JAXBContext.newInstance(RectifiedGridType.class.getPackage()
				.getName()
				+ ":"
				+ RectifiedGridType.class.getPackage().getName());
	}

	/**
	 * Test that the rectified grid element can be marshalled.
	 * 
	 * @throws JAXBException
	 *             Thrown if there is a problem marshalling the model.
	 * @throws SAXException
	 *             Thrown if there is a problem validating against the schema.
	 */
	@SuppressWarnings("unchecked")
	@Test
	public void testMarshallRectifiedGrid() throws JAXBException, SAXException {
		ObjectFactory gmlFactory = new ObjectFactory();

		// Create rectified grid.
		RectifiedGridType rectifiedGrid = this
				.createSampleRectifiedGrid(gmlFactory);
		JAXBElement<RectifiedGridType> objectToMarshal = gmlFactory
				.createRectifiedGrid(rectifiedGrid);

		// Marshall.
		Marshaller marshaller = this.context.createMarshaller();
		marshaller.marshal(objectToMarshal, System.out);
	}

	/**
	 * Creates a sample rectified grid.
	 * 
	 * @param gmlFactory
	 *            Factory to build GML types.
	 * @return The assembled sample RectifiedGridType
	 */
	private RectifiedGridType createSampleRectifiedGrid(ObjectFactory gmlFactory) {
		RectifiedGridType rectifiedGrid = gmlFactory.createRectifiedGridType();

		// Create the grid envelope for the limits
		GridEnvelopeType gridEnvelope = gmlFactory.createGridEnvelopeType();
		List<BigInteger> lowerRight = Arrays.asList(BigInteger.valueOf(100), BigInteger.valueOf(100));
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
		PointPropertyType origin = gmlFactory.createPointPropertyType();
		origin.withPoint(point);

		// Create the offset vector.
		List<VectorType> offsetList = new ArrayList<VectorType>();
		VectorType offsets = gmlFactory.createVectorType();
		offsets.withValue(4.0, 2.0);
		offsetList.add(offsets);

		// Add them all to the grid.
		return rectifiedGrid.withDimension(BigInteger.valueOf(2))
				.withSrsName("EPSG:4326").withLimits(gridLimits)
				.withAxisName(axisNames).withOrigin(origin)
				.withOffsetVector(offsetList);
	}
}
