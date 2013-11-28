package de.ifs.shell.mvcs.service.api 
{
	import de.ifs.shell.mvcs.model.vo.LoginVO;
	
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public interface ILoginService extends IRemoteService
	{
		function login(value:LoginVO):void;
	}
	
}