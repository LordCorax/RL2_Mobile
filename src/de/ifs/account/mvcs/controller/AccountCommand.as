package de.ifs.account.mvcs.controller 
{
	import robotlegs.bender.extensions.commandCenter.api.ICommand;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class AccountCommand implements ICommand 
	{
		
		public function AccountCommand() 
		{
			
		}
		
		/* INTERFACE robotlegs.bender.extensions.commandCenter.api.ICommand */
		
		public function execute():void 
		{
			trace("Hello World");
		}
		
	}

}