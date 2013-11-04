package de.ifs.patients 
{
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import robotlegs.bender.framework.api.IConfig;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class PatientsConfigTest 
	{
		[Test]
		public function implements_ExpectedInterface():void
		{
			assertThat(new PatientsConfig() is IConfig, notNullValue());
		}
	}

}