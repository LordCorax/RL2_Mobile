package de.ifs.shell.mvcs.controller 
{
	import de.ifs.shell.mvcs.events.LoginEvent;
	import de.ifs.shell.mvcs.service.api.ILoginService;
	import robotlegs.bender.extensions.commandCenter.api.ICommand;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class LoginCommand implements ICommand 
	{
		
		[Inject]
		public var event:LoginEvent;
		
		[Inject]
		public var service:ILoginService;
		
		/* INTERFACE robotlegs.bender.extensions.commandCenter.api.ICommand */
		
		public function execute():void 
		{
			service.login(event.body);
			
		}
		
	}

}