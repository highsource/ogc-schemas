package au.gov.ga.geodesy.support.gml;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.StringUtils;

/**
 * Type-safe access to the xlink href attribute of generated GML property
 * types. This interface is assinged, via jaxb2-basics inheritance plugin,
 * to all element types whose names end in 'PropertyType', like, for example,
 * NodePropertyType and GnssReceiverPropertyType.
 *
 * GML property types either contain their target elements nested inside them,
 * or they link to them using xlink references.
 *
 * <pre>
 * {@code
 * <siteLog>
 *     ...
 *     <gnssReceiverProperty>
 *         <GnssReceiver>
 *             ...
 *         </GnssReceier>
 *     </gnssReceiverProperty>
 *     ...
 * </siteLog>
 * }
 * </pre>
 * or
 * <pre>
 * {@code
 * <GnssReceiver gml:id="R1">
 *     ...
 * </GnssReceier>
 * <siteLog>
 *     ...
 *     <gnssReceiverProperty href="#R1">
 *     ...
 * </siteLog>
 * }
 * </pre>

 * @see resource geodesyml-v_0_3.xjb
 */
public interface GMLPropertyType {

    String getHref();

    /**
     * Return target element value.
     */
    @SuppressWarnings("unchecked")
    public default <T> T getTargetElement() {
        String targetElementName = Helpers.getTargetElementName(this);
        try {
            return (T) PropertyUtils.getProperty(this, targetElementName);
        } catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Set target element value.
     */
    public default <T> void setTargetElement(T targetElement) {
        String targetElementName = Helpers.getTargetElementName(this);
        try {
            PropertyUtils.setProperty(this, targetElementName, targetElement);
        } catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Return the type of target element.
     */
    public default Class<?> getTargetElementType() {
        String targetElementName = Helpers.getTargetElementName(this);
        try {
            return PropertyUtils.getPropertyDescriptor(this, targetElementName).getPropertyType();
        } catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    // Java interfaces can't yet have private methods, so non-public helper
    // classes may the best work-around.
    class Helpers {
        static String getTargetElementName(GMLPropertyType propertyType) {
            String propertyTypeName = propertyType.getClass().getSimpleName();
            return StringUtils.uncapitalize(StringUtils.removeEnd(propertyTypeName, "PropertyType"));
        }
    }
}
