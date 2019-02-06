package net.opengis.sos.v_2_0;

import static org.junit.Assert.assertEquals;

import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;

import org.junit.Test;

import net.opengis.filter.v_2_0.BinaryTemporalOpType;
import net.opengis.filter.v_2_0.TemporalOpsType;
import net.opengis.gml.v_3_2.TimePeriodType;
import net.opengis.gml.v_3_2.TimePositionType;
import net.opengis.sos.v_2_0.GetObservationType;
import net.opengis.sos.v_2_0.GetObservationType.TemporalFilter;

public class GetObservationTypeTest {

	net.opengis.sos.v_2_0.ObjectFactory sosFac = new net.opengis.sos.v_2_0.ObjectFactory();
	net.opengis.filter.v_2_0.ObjectFactory filterFac = new net.opengis.filter.v_2_0.ObjectFactory(); 
	net.opengis.gml.v_3_2.ObjectFactory gmlFac = new net.opengis.gml.v_3_2.ObjectFactory(); 
		

		/**
		*  This unit test demonstrates the SOS2 GetObservation temporal filter bindings 
		*  are incorrect
		*
		*  At the time this test was written the temporal filter operations all accepted 
		*  an arg of type 
		*
		*      JAXBElement<TemporalOpType>
		*
		* ...but instead should accept an arg of 
		*
		*      JAXBElement<* extends TemporalOpType>
		* 
		*/
	@Test
	public void testDateRangeSelector() throws JAXBException {
		
		GetObservationType getObs = new GetObservationType();
		getObs.setService("SOS");
		getObs.setVersion("2.0.0");

		TimePeriodType timePeriod = new TimePeriodType();
		timePeriod.setId("tp1");
		timePeriod.setBeginPosition(new TimePositionType().withValue("2010-06-25T00:00:00.000Z"));
		timePeriod.setEndPosition(new TimePositionType().withValue("2010-08-02T00:00:00.000Z"));		

		BinaryTemporalOpType filterParameters = new BinaryTemporalOpType();
		filterParameters.getExpressionOrAny().add(filterFac.createValueReference("phenomenonTime"));
		filterParameters.getExpressionOrAny().add(gmlFac.createTimePeriod(timePeriod));
		//  THIS line does not compile, but should
		JAXBElement<BinaryTemporalOpType> binaryTemporalOps = filterFac.createDuring(filterParameters);
		
		TemporalFilter temporalFilter = sosFac.createGetObservationTypeTemporalFilter();
		temporalFilter.setTemporalOps(binaryTemporalOps);
	}
}
