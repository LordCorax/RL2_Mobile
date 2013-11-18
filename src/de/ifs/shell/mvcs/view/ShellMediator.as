package de.ifs.shell.mvcs.view 
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	import de.ifs.shell.mvcs.view.components.ShellView;
	
	/**
	 * Mediates between framework and view.
	 * @author Frederic Gehmlich
	 */
	public class ShellMediator extends Mediator 
	{
		[Inject]
		public var view:ShellView;
		
		override public function initialize():void 
		{
			super.initialize();
		}
		
	}

}