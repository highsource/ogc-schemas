package net.opengis.wfs.v_2_0;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.Marshaller;
import javax.xml.namespace.QName;

import org.junit.Test;
import org.junit.Ignore;

import net.opengis.filter.v_2_0.BinarySpatialOpType;
import net.opengis.filter.v_2_0.FilterType;
import net.opengis.gml.v_3_2.DirectPositionType;
import net.opengis.gml.v_3_2.PointType;

public class GetFeatureTest {

	public GetFeatureTest() {
	}

	@Ignore
	@Test
	public void marshals() throws Exception {

		boolean addProperties = true;
		Double[] coords = { 10., 50. };
		JAXBContext xmlContext = JAXBContext
				.newInstance("net.opengis.wfs.v_2_0:net.opengis.filter.v_2_0:net.opengis.gml.v_3_2");

		Marshaller ma = xmlContext.createMarshaller();
		ma.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		ma.setProperty(Marshaller.JAXB_ENCODING, "UTF-8");

		ObjectFactory wfsFactory = new ObjectFactory();

		GetFeatureType featureType = wfsFactory.createGetFeatureType();
		featureType.withVersion("2.0.0").withOutputFormat("text/xml; subtype=gml/3.2.1");

		List<JAXBElement<?>> queries = new ArrayList<JAXBElement<?>>();

		QueryType qt = new QueryType();
		qt.setTypeNames(Arrays.asList("testType"));

		List<String> propertyValues = Arrays.asList("p1", "p2");
		List<String> pNames = new ArrayList<>();
		pNames.addAll(propertyValues);
		if (!addProperties)
			pNames.clear();
		for (String p : pNames) {
			// The problem is in this line
			qt.withAbstractProjectionClause(wfsFactory.createPropertyName(new PropertyName().withValue(new QName(p))));
		}

		qt.withAbstractSelectionClause(getIntersectsFilter(coords));
		queries.add(wfsFactory.createQuery(qt));

		featureType.setAbstractQueryExpression(queries);
		StringWriter getFeatureXML = new StringWriter();
		ma.marshal(wfsFactory.createGetFeature(featureType), getFeatureXML);

		System.out.println(getFeatureXML);

	}

	private static JAXBElement<FilterType> getIntersectsFilter(Double[] coords) {
		FilterType ft = new FilterType();
		BinarySpatialOpType interSect = new BinarySpatialOpType();
		DirectPositionType pos = new DirectPositionType();
		pos.setValue(Arrays.asList(coords));

		PointType point = new PointType();
		point.setSrsName("EPSG:4326");
		point.setPos(pos);

		net.opengis.gml.v_3_2.ObjectFactory gmlFac = new net.opengis.gml.v_3_2.ObjectFactory();
		interSect.withExpressionOrAny(gmlFac.createPoint(point));
		net.opengis.filter.v_2_0.ObjectFactory filterFac = new net.opengis.filter.v_2_0.ObjectFactory();
		JAXBElement<BinarySpatialOpType> je = filterFac.createIntersects(interSect);

		ft.setSpatialOps(je);

		return filterFac.createFilter(ft);
	}
}