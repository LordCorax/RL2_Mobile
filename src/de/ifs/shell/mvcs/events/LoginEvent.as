package de.ifs.shell.mvcs.events 
{
	import flash.events.Event;
	import de.ifs.shell.mvcs.view.components.Main;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class LoginEvent extends Event 
	{
		public var body:Main;
		public function LoginEvent(type:String, value:Main) 
		{ 
			super(type, bubbles, cancelable);
			body = value;
		} 
		
		public override function clone():Event 
		{ 
			return new LoginEvent(type, body);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("LoginEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}