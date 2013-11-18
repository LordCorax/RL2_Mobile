package de.ifs.shell.mvcs.view 
{
	import de.ifs.shell.mvcs.events.LoginEvent;
	import de.ifs.shell.mvcs.service.api.ILoginService;
	import de.ifs.shell.mvcs.view.components.LoginView;
	import flash.events.Event;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import de.ifs.shell.mvcs.view.components.Main;
	/**
	 * Mediates between framework and view.
	 * @author Frederic Gehmlich
	 */
	public class LoginMediator extends Mediator 
	{
		
		[Inject]
		public var view:LoginView;
			
		
		override public function initialize():void 
		{
			super.initialize();
			addViewListener("login", onLogin);
		}
		private function onLogin(event:Event):void
		{
			trace(view.parent.toString());
	
		}
	}

}