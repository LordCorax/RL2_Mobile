package de.ifs.local 
{
	import de.ifs.local.mvcs.controller.LocalLoginCommand;
	import de.ifs.shell.mvcs.signal.LoginSignal;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * LocalConfig should be used for a local database.
	 * LocalConfig will be initialized right at the beginning of our application.
	 * Afterwards, the appropriate local-db returns the users credentials for an automatic login to the server.
	 * But this will happen only, if the user has already stored his data.
	 * @author Frederic Gehmlich
	 */
	public class LocalConfig implements IConfig 
	{

		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		[Inject]
		public var signalMap:ISignalCommandMap;
		
		
		/* INTERFACE robotlegs.bender.framework.api.IConfig */
		
		public function configure():void 
		{
			initModel();
			initService();
			initCommand();
			initSignal();
		}
		private function initModel():void
		{
			trace("Local: initModel");
			injector.map(LoginSignal).asSingleton();
		}
		private function initService():void
		{
			trace("Local: initService");
		}
		private function initCommand():void
		{
			trace("Local: initCommand");
		}
		private function initSignal():void
		{
			trace("Local: initSignal");
			signalMap.map(LoginSignal).toCommand(LocalLoginCommand);
		}
	}

}