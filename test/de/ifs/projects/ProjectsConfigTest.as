package de.ifs.projects 
{
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import robotlegs.bender.framework.api.IConfig;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class ProjectsConfigTest 
	{
		[Test]
		public function implements_ExpectedInterface():void
		{
			assertThat(new ProjectsConfig() is IConfig, notNullValue());
		}
		
	}

}