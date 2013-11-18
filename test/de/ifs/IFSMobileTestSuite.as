package de.ifs 
{
	import de.ifs.account.AccountSuite;
	import de.ifs.patients.PatientSuite;
	import de.ifs.projects.ProjectSuite;
	import de.ifs.shell.ShellSuite;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	[RunWith("org.flexunit.runners.Suite")]
	[Suite]
	public class IFSMobileTestSuite 
	{
		public var shellSuite:ShellSuite;
		public var accountSuite:AccountSuite;
		public var projectSuite:ProjectSuite;
		public var patientSuite:PatientSuite;
	}

}