package de.ifs.shell.mvcs.service.impl 
{
	import de.ifs.shell.mvcs.model.vo.LoginVO;
	import de.ifs.shell.mvcs.signal.LoginSignal;
	import flash.events.IEventDispatcher;
	import mx.rpc.remoting.RemoteObject;
	import de.ifs.shell.mvcs.service.api.ILoginService;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class LoginService implements ILoginService 
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		[Inject]
		public var signal:LoginSignal;
				
		private var _service:RemoteObject;
		
		public function LoginService() 
		{
			_service = new RemoteObject();
			_service.addEventListener(ResultEvent.RESULT, resultHandler, false, 0, true);
			_service.addEventListener(FaultEvent.FAULT, faultHandler, false, 0, true);
			_service.destination = "amfphp";
			_service.source = "com.login.LoginService";
		}
		
		/* INTERFACE de.ifs.shell.mvcs.service.api.ILoginService */
		
		public function login(value:LoginVO):void 
		{
			_service.showBusyCursor = true;
			_service.login(value);
			trace(value.toString());
		}
		
		public function resultHandler(event:ResultEvent):void 
		{
			_service.showBusyCursor = false;
			switch (Boolean(event.result)) 
			{
				case true:
					trace("Willkommen");
					signal.dispatch(true);		
				break;
				default:
					trace("Oops, da lief was schief");
				break;
			}			
		}
		
		public function faultHandler(event:FaultEvent):void 
		{
			_service.showBusyCursor = false;
			trace("FAULT");
		}
		
		public function get service():RemoteObject 
		{
			return _service;
		}
		
	}

}