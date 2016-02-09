package au.gov.ga.geodesyMlMarshall;

import java.io.File;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import au.gov.xml.icsm.geodesyml.v_0_2_1.GeodesyMLType;

public class GeodesymlTest {

	@Before
	public void init() {
	}

	@Test
	public void testMarshaller() throws JAXBException, IOException {

		JAXBContext jc = JAXBContext.newInstance(net.opengis.gml.v_3_2_1.ObjectFactory.class,
				au.gov.xml.icsm.geodesyml.v_0_2_1.ObjectFactory.class, net.opengis.om._2.ObjectFactory.class,
				net.opengis.iso19139.gmd.v_20070417.ObjectFactory.class);

		Unmarshaller unmarshaller = jc.createUnmarshaller();
		JAXBElement<GeodesyMLType> geodesyMLJaxbElement = (JAXBElement<GeodesyMLType>) unmarshaller
				.unmarshal(getInputResourceFile("MOBS.xml"));
		GeodesyMLType geodesyML = geodesyMLJaxbElement.getValue();
		System.out.println("GeodesyML (JAXBElement): " + geodesyMLJaxbElement);
		System.out.println("GeodesyML (value): " + geodesyML);

		Assert.assertNotNull(geodesyML);
		Assert.assertEquals(23, geodesyML.getNodeOrAbstractPositionOrPositionPairCovariance().size());

//		Marshaller marshaller = jc.createMarshaller();
//		marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
//		File outputXMLFile = Files.createTempFile("GeodesyML", "xml").toFile();
//		OutputStream marshalledXML = new FileOutputStream(outputXMLFile);
//		marshaller.marshal(geodesyML, marshalledXML);
//
//		Assert.assertNotEquals(0L, outputXMLFile.length());
//		System.out.println("Marshalled XML:");
//		try (FileInputStream inputStream = new FileInputStream(outputXMLFile)) {
//			int content;
//			while ((content = inputStream.read()) != -1) {
//				System.out.print((char) content);
//			}
//		}
	}

	private File getInputResourceFile(String resourceFile) {
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("geodesyml/" + resourceFile).getFile());

		return file;
	}

}
