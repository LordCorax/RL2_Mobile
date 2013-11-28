package de.ifs.shell 
{
	import de.ifs.shell.mvcs.controller.LoginCommand;
	import de.ifs.shell.mvcs.controller.ShellInitCommand;
	import de.ifs.shell.mvcs.events.LoginEvent;
	import de.ifs.shell.mvcs.service.api.ILoginService;
	import de.ifs.shell.mvcs.service.impl.LoginService;
	import de.ifs.shell.mvcs.signal.LoginSignal;
	import de.ifs.shell.mvcs.view.MainMediator;
	import de.ifs.shell.mvcs.view.ShellMediator;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	import de.ifs.shell.mvcs.view.components.Main;
	import de.ifs.shell.mvcs.view.components.ShellView;
	import de.ifs.shell.mvcs.view.components.LoginView;
	import de.ifs.shell.mvcs.view.LoginMediator;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class ShellConfig implements IConfig
	{
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		 
		
		
		public function configure():void
		{
			initService();
			initModel();
			initCommand();
			initMediator();
		}
		private function initService():void
		{
			trace("Service");
			injector.map(ILoginService).toSingleton(LoginService);
		}
		private function initModel():void
		{
			trace("Model");
			
		}

		private function initMediator():void
		{
			trace("Mediator");
			mediatorMap.map(Main).toMediator(MainMediator);
			mediatorMap.map(ShellView).toMediator(ShellMediator);
			mediatorMap.map(LoginView).toMediator(LoginMediator);
		}
		private function initCommand():void
		{
			trace("Command");
			commandMap.map(LoginEvent.LOGIN, LoginEvent).toCommand(LoginCommand);
		}

	}

}