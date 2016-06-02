# SalesforceDevTrackingExample
Sample Force.com Migration Project for Jenkins that allows tracking changes to sandbox metadata

Gary Hamilton <ghamilton@acumensolutions.com>
Version 1.0

Sample project for retrieving Salesforce metadata changes using Jenkings:

Running Apache Ant in workspace executes retrieveMetadata task.
Run in Jenkins supplying sf.serverurl, sf.username and sf.password as parameters. sf.serverurl defaults to test.salesforce.com.

Jenkins will call ant with parameters such as these: -Dsf.username=xxxx -Dsf.password=yyyy -Dsf.serverurl=cs2.salesforce.com


