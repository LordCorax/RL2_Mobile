package de.basic.controls 
{
	import spark.components.Button;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Frederic Gehmlich
	 */
	public class BasicButton extends Button 
	{
		[SkinState("focused")];
		private var bfocused:Boolean;
		
		public function BasicButton() 
		{
			super();
		}
		override protected function partAdded(partName:String, instance:Object):void 
		{
			super.partAdded(partName, instance);
		}
		override protected function partRemoved(partName:String, instance:Object):void 
		{
			super.partRemoved(partName, instance);
		}
        //Leverage the new SkinState
        override protected function getCurrentSkinState():String {
            if (bfocused) 
			{
                return "focused";
            }
			else
			{
                return super.getCurrentSkinState();
            }
        }		
        //Handler for FocusIn Event
        private function onFocusInHandler(event:MouseEvent):void {
            bfocused = true;
            invalidateSkinState();
            trace("Getting focus");
        }
        
        //Handler for FocusOut
        private function onFocusOutHandler(event:MouseEvent):void {
            bfocused = false;
            invalidateSkinState();
            trace("Loosing focus");
        }			
	}

}