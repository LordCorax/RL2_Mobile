package de.ifs.shell.mvcs.service.api 
{
	
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public interface IRemoteService 
	{
		function resultHandler(event:ResultEvent):void;
		function faultHandler(event:FaultEvent):void;
		function get service():RemoteObject;
	//	function set service(value:RemoteObject):void;
	}
	
}