package net.opengis.kml.v_2_2_0.tests;

import java.net.URL;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import net.opengis.kml.v_2_2_0.KmlType;

import org.junit.Assert;
import org.junit.Test;

public class UnmarshallingTest {

	public static String CONTEXT_PATH = org.hisrc.w3c.atom.v_1_0.ObjectFactory.class
			.getPackage().getName()
			+ ":"
			+ org.hisrc.w3c.oasis.xal.v_2_0.ObjectFactory.class.getPackage()
					.getName()
			+ ":"
			+ net.opengis.kml.v_2_2_0.ObjectFactory.class.getPackage()
					.getName();

	@Test
	public void testStates() throws JAXBException {
		JAXBContext context = JAXBContext.newInstance(CONTEXT_PATH);
		Unmarshaller unmarshaller = context.createUnmarshaller();
		URL resource = getClass().getResource("states.kml");
		Assert.assertNotNull(resource);
		@SuppressWarnings("unchecked")
		JAXBElement<KmlType> result = (JAXBElement<KmlType>) unmarshaller
				.unmarshal(resource);
		Assert.assertNotNull(result);
	}
}
