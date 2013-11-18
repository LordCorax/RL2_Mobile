package de.ifs.shell 
{
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.contextView.ContextViewListenerConfig;
	import robotlegs.bender.extensions.contextView.StageSyncExtension;
	import robotlegs.bender.extensions.directCommandMap.DirectCommandMapExtension;
	import robotlegs.bender.extensions.enhancedLogging.InjectableLoggerExtension;
	import robotlegs.bender.extensions.enhancedLogging.TraceLoggingExtension;
	import robotlegs.bender.extensions.eventCommandMap.EventCommandMapExtension;
	import robotlegs.bender.extensions.eventDispatcher.EventDispatcherExtension;
	import robotlegs.bender.extensions.localEventMap.LocalEventMapExtension;
	import robotlegs.bender.extensions.mediatorMap.MediatorMapExtension;
	import robotlegs.bender.extensions.modularity.ModularityExtension;
	import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.bender.extensions.viewManager.StageCrawlerExtension;
	import robotlegs.bender.extensions.viewManager.StageObserverExtension;
	import robotlegs.bender.extensions.viewManager.ViewManagerExtension;
	import robotlegs.bender.extensions.viewProcessorMap.ViewProcessorMapExtension;
	import robotlegs.bender.extensions.vigilance.VigilanceExtension;
	import robotlegs.bender.framework.api.IBundle;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.api.LogLevel;
	/**
	 * This bundle installs a number of extensions commonly used in typical Robotlegs applications and modules.
	 * In addition to that the SignalCommandMapExtension has been added to that bunch of classes too,
	 * which is especially useful for intermodular communication.
	 * @author Frederic Gehmlich
	 */
	public class ShellBundle implements IBundle
	{
	
		
		public function extend(context:IContext):void 
		{
			context.logLevel = LogLevel.DEBUG;			
			context.install(
				TraceLoggingExtension,
				VigilanceExtension,
				InjectableLoggerExtension,
				ContextViewExtension,
				EventDispatcherExtension,
				ModularityExtension,
				DirectCommandMapExtension,
				EventCommandMapExtension,
				LocalEventMapExtension,
				ViewManagerExtension,
				StageObserverExtension,
				MediatorMapExtension,
				ViewProcessorMapExtension,
				StageCrawlerExtension,
				StageSyncExtension,
				SignalCommandMapExtension //SignalCommandMapExtension added to bundle.
				);
			context.configure(ContextViewListenerConfig);
		}	
		
	}

}