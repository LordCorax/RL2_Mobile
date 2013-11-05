package de.ifs.shell.mvcs.view 
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import de.ifs.shell.mvcs.view.components.Main;
	/**
	 * Mediates between framework and view.
	 * @author Frederic Gehmlich
	 */
	public class MainMediator extends Mediator 
	{
		
		[Inject]
		public var view:Main;
		
		override public function initialize():void 
		{
			super.initialize();
			view.navigator.pushView(de.ifs.shell.mvcs.view.components.LoginView);
		}
		
		
	}

}