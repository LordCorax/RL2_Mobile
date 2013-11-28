package de.ifs.shell.mvcs.model.vo 
{
	import de.basic.vo.BasicVO;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	
	[Bindable]
	public class LoginVO extends BasicVO 
	{
		private var _username:String;
		private var _password:String;
		
		public function LoginVO(user:String="", pass:String="") 
		{
			super();
			_username = user;
			_password = pass;
		}
		public function get username():String
		{
			return _username;
		}
		public function set username(value:String):void
		{
			_username = value;
		}
		public function get password():String
		{
			return _password;
		}
		public function set password(value:String):void
		{
			_password = value;
		}
		
	}

}