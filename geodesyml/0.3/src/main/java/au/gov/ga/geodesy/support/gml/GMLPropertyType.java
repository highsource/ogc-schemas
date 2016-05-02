package au.gov.ga.geodesy.support.gml;

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
}
