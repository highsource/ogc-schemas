package net.opengis.sos.v_2_0;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.ValidationEvent;
import javax.xml.bind.ValidationEventHandler;

import org.junit.Test;

import net.opengis.swes.v_2_0.InsertSensorType;
import net.opengis.swes.v_2_0.InsertSensorType.Metadata;
import net.opengis.swes.v_2_0.InsertionMetadataType;

/**
 * Unit test demonstrating inability to unmarshal SosInsertionMetadata on an
 * swes:InsertSensor request
 */
public class SosInsertionMetadataTypeTest {
	@Test
	public void testSosMetadata() throws JAXBException, IOException {
		JAXBContext context = JAXBContext.newInstance("net.opengis.swes.v_2_0:net.opengis.sos.v_2_0");

		Unmarshaller unmarshaller = context.createUnmarshaller();

		// without this validation handler JAXB fails silently
		unmarshaller.setEventHandler(new ValidationEventHandler() {
			public boolean handleEvent(ValidationEvent event) {
				throw new RuntimeException(event.getMessage(), event.getLinkedException());
			}
		});

		InputStream is = null;
		try {
			is = getClass().getClassLoader().getResourceAsStream("InsertSensor01.xml");

			JAXBElement<InsertSensorType> insertSensorElement = (JAXBElement<InsertSensorType>) unmarshaller
					.unmarshal(is);

			InsertSensorType insertSensor = insertSensorElement.getValue();
			assertEquals("Incorrect amount of metadata", 1, insertSensor.getMetadata().size());

			Metadata metadata = insertSensor.getMetadata().get(0);
			assertNotNull("metadata is null");

			if (!metadata.isSetInsertionMetadata()) {
				fail("metadata is not set");
			}

			JAXBElement<SosInsertionMetadataType> simt = (JAXBElement<SosInsertionMetadataType>) metadata
					.getInsertionMetadata();
			assertNotNull("Missing SOS Insertion Metadata", simt);

			assertEquals(1, simt.getValue().getFeatureOfInterestType().size());
			assertEquals("FOI_type", simt.getValue().getFeatureOfInterestType().get(0));

			assertEquals(1, simt.getValue().getObservationType().size());
			assertEquals("Obs_type", simt.getValue().getObservationType().get(0));
		} finally {
			if (is != null) {
				is.close();
			}
		}
	}

	@Test
	public void testWierdSosMetadata() throws JAXBException, IOException {
		JAXBContext context = JAXBContext.newInstance("net.opengis.sos.v_2_0:" + "net.opengis.swes.v_2_0");

		Unmarshaller unmarshaller = context.createUnmarshaller();

		// without this validation handler JAXB fails silently
		unmarshaller.setEventHandler(new ValidationEventHandler() {
			public boolean handleEvent(ValidationEvent event) {
				throw new RuntimeException(event.getMessage(), event.getLinkedException());
			}
		});

		InputStream is = null;
		try {
			is = getClass().getClassLoader().getResourceAsStream("InsertSensor02.xml");

			JAXBElement<InsertSensorType> insertSensorElement = (JAXBElement<InsertSensorType>) unmarshaller
					.unmarshal(is);

			InsertSensorType insertSensor = insertSensorElement.getValue();
			assertEquals("Incorrect amount of metadata", 1, insertSensor.getMetadata().size());

			Metadata metadata = insertSensor.getMetadata().get(0);
			assertNotNull("metadata is null");

			if (!metadata.isSetInsertionMetadata()) {
				fail("metadata is not set");
			}

			JAXBElement<SosInsertionMetadataType> simt = (JAXBElement<SosInsertionMetadataType>) metadata
					.getInsertionMetadata();
			assertNotNull("Missing SOS INnsertion Metadata", simt);

			assertEquals(1, simt.getValue().getFeatureOfInterestType().size());
			assertEquals("FOI_type", simt.getValue().getFeatureOfInterestType().get(0));

			assertEquals(1, simt.getValue().getObservationType().size());
			assertEquals("Obs_type", simt.getValue().getObservationType().get(0));
		} finally {
			if (is != null) {
				is.close();
			}
		}
	}
}
