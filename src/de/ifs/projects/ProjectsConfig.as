package de.ifs.projects 
{
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class ProjectsConfig implements IConfig 
	{
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var signalMap:ISignalCommandMap;
		
			
		
		/* INTERFACE robotlegs.bender.framework.api.IConfig */
		
		public function configure():void 
		{
			initModel();
			initCommand();
			initSignal();
			initMediator();
		}
		private function initModel():void
		{
			
		}
		private function initCommand():void
		{
			
		}
		private function initMediator():void
		{
			
		}
		private function initSignal():void
		{
			
		}
		
	}

}