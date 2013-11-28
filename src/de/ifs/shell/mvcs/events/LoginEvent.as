package de.ifs.shell.mvcs.events 
{
	import de.ifs.shell.mvcs.model.vo.LoginVO;
	import flash.events.Event;
	import de.ifs.shell.mvcs.view.components.Main;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class LoginEvent extends Event 
	{
		public static const LOGIN:String = "login"
		
		private var _body:LoginVO;
		public function LoginEvent(type:String, value:LoginVO) 
		{ 
			super(type, bubbles, cancelable);
			_body = value;
		} 
		
		public override function clone():Event 
		{ 
			return new LoginEvent(type, body);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("LoginEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public function get body():LoginVO
		{
			return _body;
		}
		public function set body(value:LoginVO):void
		{
			_body = value;
		}
	}
	
}