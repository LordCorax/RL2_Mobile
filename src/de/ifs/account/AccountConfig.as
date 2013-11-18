package de.ifs.account 
{
	import de.ifs.account.mvcs.controller.AccountCommand;
	import de.ifs.shell.mvcs.signal.LoginSignal;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class AccountConfig implements IConfig 
	{
		
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var signalMap:ISignalCommandMap;		
		
		public function configure():void 
		{
			initModel();
			initCommand();
			initSignal();
			initMediator();
		}
		private function initModel():void
		{
			trace("Account Init Model");
		}
		private function initCommand():void
		{
			
		}
		private function initMediator():void
		{
			
		}
		private function initSignal():void
		{
			signalMap.map(LoginSignal).toCommand(AccountCommand);
		}
		
	}

}