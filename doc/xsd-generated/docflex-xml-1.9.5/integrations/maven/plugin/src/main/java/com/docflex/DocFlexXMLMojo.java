/*-------------------------------------------------------------
Copyright (c)2008 Filigris Works, Leonid Rudy Softwareprodukte. 
--------------------------------------------------------------*/
package com.docflex;

import java.io.*;
import java.util.*;

import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.reporting.MavenReport;
import org.apache.maven.reporting.MavenReportException;
import org.codehaus.doxia.sink.Sink;

/**
 * @goal generator
 */
public class DocFlexXMLMojo extends AbstractMojo
  implements MavenReport
{
  //--------------------------------------------------------------------
  // Mojo Parameters
  //--------------------------------------------------------------------

  /**
   * DocFlex/XML generator arguments.
   *
   * @parameter
   */
  private String[] generatorParams;

  /**
   * The name of the output directory.
   *
   * @parameter expression="${outputFolder}"
   */
  private String outputFolder;

  /**
   * The name of the output file.
   *
   * @parameter expression="${outputFile}"
   */
  private String outputFile;

  /**
   * Specifies the destination directory where DocFlex/XML saves the generated files.
   *
   * @parameter expression="${project.reporting.outputDirectory}"
   * @required
   */
  private File reportOutputDirectory;

  /**
   * The name of the report.
   *
   * @parameter expression="${name}" default-value="docflex"
   */
  private String name;

  /**
   * The description of the report.
   *
   * @parameter expression="${description}" default-value="DocFlex/XML output";
   */
  private String description;

  //--------------------------------------------------------------------
  private String getNonEmptyValue (String value, String defaultValue)
  {
    return (value != null && value.trim().length() > 0) ? value : defaultValue;
  }

  //--------------------------------------------------------------------
  // Implementation of AbstractMojo.execute()
  //--------------------------------------------------------------------

  public void execute() throws MojoExecutionException
  {
    String[] superOptions = {
      "-d", new File (getNonEmptyValue (outputFolder, "out")).getAbsolutePath(),
    };

    boolean ok = (new com.docflex.xml.Generator()).start (generatorParams, superOptions);

    if (! ok)
      throw new MojoExecutionException ("DocFlex/XML Plugin Failed");
  }

  //--------------------------------------------------------------------
  // Implementation of MavenReport
  //--------------------------------------------------------------------

  public String getName (Locale locale)
  {
    return name;
  }

  //--------------------------------------------------------------------
  public String getDescription (Locale locale)
  {
    return description;
  }

  //--------------------------------------------------------------------
  public String getCategoryName()
  {
    return CATEGORY_PROJECT_REPORTS;
  }

  //--------------------------------------------------------------------
  public boolean isExternalReport()
  {
    return true;
  }

  //--------------------------------------------------------------------
  private String getOutputFolder()
  {
    return getNonEmptyValue (outputFolder, "docflex");
  }

  //--------------------------------------------------------------------
  public String getOutputName()
  {
    return getOutputFolder() + "/" + getNonEmptyValue (outputFile, "index");
  }

  //--------------------------------------------------------------------
  public void setReportOutputDirectory (File reportOutputDirectory)
  {
    this.reportOutputDirectory = new File (reportOutputDirectory, getOutputFolder());
  }

  //--------------------------------------------------------------------
  public File getReportOutputDirectory()
  {
    return reportOutputDirectory;
  }

  //--------------------------------------------------------------------
  public boolean canGenerateReport()
  {
    return true;
  }

  //--------------------------------------------------------------------
  public void generate (Sink sink, Locale locale)
    throws MavenReportException
  {
    String[] superOptions = {
      "-d", reportOutputDirectory.getAbsolutePath(),
      "-f", outputFile,
      "-launchviewer=false" // do not launch the default viewer for the output file
    };

    boolean ok = (new com.docflex.xml.Generator()).start (generatorParams, superOptions);

    if (! ok)
      throw new MavenReportException ("DocFlex/XML Plugin Failed");
  }

  //--------------------------------------------------------------------
}
