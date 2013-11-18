package de.basic.vo 
{
	import mx.utils.ObjectUtil;

	/**
	 * A basic class, which makes it easier to find particular values.
	 * @author Frederic Gehmlich
	 */
	public class BasicVO
	{

		private var properties:Array;
		
		public function BasicVO()
		{
			properties = new Array();
			properties = listProperties(this);
		}	

		private function listProperties(obj:Object):Array
		{
			var a:Object = ObjectUtil.getClassInfo(obj);
			var ac:Array = a.properties as Array;
			return ac;
		}		
		/**
		 * search is able to find a value beyond a property. As long as its in this ValueObject.
		 * @param	item
		 * @return Boolean
		 */
		public function search(item:String):Boolean
		{
			var isObject:Boolean = false;
			var searchString:String = new String();
			var length:int = properties.length;
			for (var i:int = 0; i < length; i++) 
			{
				searchString = this[properties[i]];
				if (searchString != null) 
				{
					if (searchString.toLowerCase().search(item.toLowerCase()) != -1) 
					{
						isObject = true;
					}								
				}
			}
			return isObject;
		}		
		/**
		 * toString() returns all properties and their values as string.
		 * @return
		 */
		public function toString():String
		{
			var str:String = "";
			var length:int = properties.length;
			for (var i:int = 0; i < length; i++) 
			{
				str += "[" + properties[i] + "]: " + this[properties[i]] + "\n";
			}
			return str;
		}
	}
}