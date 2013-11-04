package de.ifs.shell 
{
	
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import robotlegs.bender.framework.api.IConfig;
	import flexunit.framework.Assert;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	
	public class ShellConfigTest 
	{
		[Test]
		public function implements_ExpectedInterface():void
		{
			assertThat(new ShellConfig() as IConfig, notNullValue());
		}
	}

}