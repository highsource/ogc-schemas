package net.opengis.filter.v_1_1_0.tests;

import java.io.StringReader;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import net.opengis.filter.v_1_1_0.FilterType;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 * Tests for the FilterType class.
 */
public class Filter_Test {

	/**
	 * Holder of the context
	 */
	private JAXBContext context;

	@Before
	public void initializeContext() throws JAXBException {
		this.context = JAXBContext.newInstance(FilterType.class.getPackage()
				.getName()
				+ ":"
				+ FilterType.class.getPackage().getName());
	}

	/**
	 * Verifies that a PropertyNameType object can be unmarshalled.
	 * 
	 * @throws Exception
	 *             Thrown if there is a problem.
	 */
	@SuppressWarnings("unchecked")
	@Test
	public void testUnmarshallPropertyNameType() throws Exception {
		
		String xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
				+ "<ogc:Filter xmlns:ogc=\"http://www.opengis.net/ogc\">"
				+ "<ogc:PropertyIsEqualTo>"
				+ "<ogc:PropertyName>someProperty</ogc:PropertyName>"
				+ "<ogc:Literal>someValue</ogc:Literal>"
				+ "</ogc:PropertyIsEqualTo>"
				+ "</ogc:Filter>";

		Unmarshaller unmarshaller = this.context.createUnmarshaller();
		JAXBElement<FilterType> filter = (JAXBElement<FilterType>) unmarshaller.unmarshal(new StringReader(xml));
		Assert.assertNotNull(filter);
	}

}
