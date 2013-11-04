package de.ifs.shell 
{
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import robotlegs.bender.framework.api.IBundle;
	
	public class ShellBundleTest 
	{
		
		[Test]
		public function implementsExpectedInterface():void
		{
			assertThat(new ShellBundle() is IBundle, notNullValue());
		}
		
	}

}