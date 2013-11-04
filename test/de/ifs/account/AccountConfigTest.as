package de.ifs.account 
{
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import robotlegs.bender.framework.api.IConfig;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class AccountConfigTest 
	{
		
		[Test]
		public function implements_ExpectedInterface():void
		{
			assertThat(new AccountConfig() is IConfig, notNullValue());
		}
		
	}

}