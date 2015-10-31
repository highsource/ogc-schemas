package net.opengis.ows.v_1_1_0.tests;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import net.opengis.ows.v_2_0.BoundingBoxType;
import net.opengis.ows.v_2_0.ObjectFactory;

import org.junit.Before;
import org.junit.Test;
import org.xml.sax.SAXException;

/**
 * BoundingBox Tests
 */
public class BoundingBox_Test {

	/**
	 * Holder of the context
	 */
	private JAXBContext context;

	@Before
	public void initializeContext() throws JAXBException {
		this.context = JAXBContext.newInstance(BoundingBoxType.class.getPackage()
				.getName()
				+ ":"
				+ BoundingBoxType.class.getPackage().getName());
	}

	/**
	 * Test that a bounding box element can be marshalled.
	 * 
	 * @throws JAXBException
	 *             Thrown if there is a problem marshalling the model.
	 * @throws SAXException
	 *             Thrown if there is a problem validating against the schema.
	 */
	@Test
	public void testMarshallBoundingBox() throws JAXBException, SAXException {
		BoundingBoxType boundingBox = new BoundingBoxType();
		boundingBox.getLowerCorner().add(0.0);
		boundingBox.getLowerCorner().add(0.0);
		boundingBox.getUpperCorner().add(4.0);
		boundingBox.getUpperCorner().add(4.0);

		ObjectFactory factory = new ObjectFactory();
		JAXBElement<BoundingBoxType> objectToMarshal = factory
				.createBoundingBox(boundingBox);

		// Marshall.
		Marshaller marshaller = this.context.createMarshaller();
		marshaller.marshal(objectToMarshal, System.out);
	}
}
