# SalesforceDevTrackingExample
Sample Force.com Migration Project for Jenkins that allows tracking changes of sandbox metadata

Gary Hamilton <ghamilton@acumensolutions.com>
Version 1.0

* Download files to Jenkins job ./workspace folder.
* build.xml defaults sf.org to "dev"
  * dev.properties is loaded.
  * Metadata is downloaded to "dev" sub-folder.
* Set sf.serverurl, sf.username and sf.password in <sf.org>.properties or as build parameters:
  * -Dsf.serverurl=test.salesforce.com -Dsf.username=<username> -Dsf.password=<password + security token>
* Examples
  * ant : loads default dev.properties with sf.serverurl, sf.username and sf.password values
  * ant -Dsf.org=UAT : loads UAT.properties with sf.serverurl, sf.username and sf.password values and downloads to UAT folder

