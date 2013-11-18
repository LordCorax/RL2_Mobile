package de.ifs.shell.mvcs.controller 
{
	import de.ifs.local.LocalConfig;
	import de.ifs.shell.mvcs.events.LoginEvent;
	import robotlegs.bender.extensions.commandCenter.api.ICommand;
	import robotlegs.bender.framework.api.IConfig;
	import de.ifs.shell.mvcs.view.components.Main;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class ShellInitCommand implements ICommand 
	{
		
		
		[Inject]
		public var event:LoginEvent;
		
		/* INTERFACE robotlegs.bender.extensions.commandCenter.api.ICommand */
		
		public function execute():void 
		{
			trace("try to login");
			var app:Main = event.body as Main;
			var config:IConfig = new LocalConfig();
			app.contextBuilder.configs.push(config);
		}
		
	}

}