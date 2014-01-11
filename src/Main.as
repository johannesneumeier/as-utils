package 
{
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	import tests.AllTests;
	
	/**
	 * ...
	 * @author Sean Snyder
	 */
	public class Main extends Sprite 
	{
		private var testing:Boolean = true;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			if(testing){
				runUnitTests();
			}
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}
		
		private function runUnitTests():void 
		{
			var unittests:TestRunner = new TestRunner();
			stage.addChild(unittests);
			unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
		}
		
	}
	
}