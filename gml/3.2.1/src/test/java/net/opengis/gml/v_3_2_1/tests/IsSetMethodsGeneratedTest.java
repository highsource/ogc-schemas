package net.opengis.gml.v_3_2_1.tests;

import net.opengis.gml.v_3_2_1.GridEnvelopeType;

import java.math.BigInteger;
import org.junit.Assert;
import org.junit.Test;

public class IsSetMethodsGeneratedTest {

    @Test
    public void testIsSet() throws Exception {
        GridEnvelopeType envelopeType = new GridEnvelopeType();
        Assert.assertFalse(envelopeType.isSetHigh());

        envelopeType.getHigh().add(BigInteger.TEN);
        Assert.assertTrue(envelopeType.isSetHigh());
    }
}
