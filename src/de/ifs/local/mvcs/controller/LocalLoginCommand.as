package de.ifs.local.mvcs.controller 
{
	import de.ifs.shell.mvcs.signal.LoginSignal;
	import robotlegs.bender.extensions.commandCenter.api.ICommand;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class LocalLoginCommand implements ICommand 
	{
		[Inject]
		public var signal:LoginSignal;
		
		
		
		public function LocalLoginCommand() 
		{
			
		}
		
		/* INTERFACE robotlegs.bender.extensions.commandCenter.api.ICommand */
		
		public function execute():void 
		{
			trace("Datenbank wird erzeugt, bitte warten.");
			
		}
		
	}

}