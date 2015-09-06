package net.opengis.wcs.v_1_0_0;

import java.util.Hashtable;
import java.util.Map;

public class NamespacePrefixMapper extends com.sun.xml.bind.marshaller.NamespacePrefixMapper {

	/** The holder for the mappings. */
	private final Map<String, String> URI_2_prefix = new Hashtable<String, String>();

	/**
	 * Default constructor that sets up the mappings.
	 */
	public NamespacePrefixMapper() {
		URI_2_prefix.put("http://www.opengis.net/wcs", "");
		URI_2_prefix.put("http://www.w3.org/1999/xlink", "xlink");
		URI_2_prefix.put("http://www.opengis.net/gml", "gml");
		URI_2_prefix.put("http://www.w3.org/2001/SMIL20/", "smil");
		URI_2_prefix
				.put("http://www.w3.org/2001/SMIL20/Language", "smil20lang");
		URI_2_prefix.put("http://www.w3.org/2001/XMLSchema-instance", "xsi");
	}

	/**
	 * Returns a preferred prefix for the given namespace URI.
	 * 
	 * @param namespaceUri
	 *            The namespace URI for which the prefix needs to be found.
	 *            Never be null. "" is used to denote the default namespace.
	 * @param suggestion
	 *            ignored
	 * @param requirePrefix
	 *            ignored
	 * @return the expected prefix
	 */
	@Override
	public String getPreferredPrefix(String namespaceUri, String suggestion,
			boolean requirePrefix) {
		return URI_2_prefix.get(namespaceUri);
	}
}
