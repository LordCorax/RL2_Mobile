package de.ifs.shell.mvcs.signal 
{
	import org.osflash.signals.Signal;
	
	/**
	 * This signal informs the other modules to prepare themselves.
	 * @author Frederic Gehmlich
	 */
	public class LoginSignal extends Signal 
	{
		
		public function LoginSignal() 
		{
			super(Boolean);
		}
		
	}

}