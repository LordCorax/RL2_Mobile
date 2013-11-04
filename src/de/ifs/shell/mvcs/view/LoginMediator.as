package de.ifs.shell.mvcs.view 
{
	import de.ifs.shell.mvcs.view.components.LoginView;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
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
		}
	}

}