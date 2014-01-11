package tests 
{
	import asunit.framework.TestCase;
	import com.johannesneumeier.utils.Range;
	
	/**
	 * ...
	 * @author Sean Snyder
	 */
	public class TestRange extends TestCase 
	{
		
		public function TestRange(testMethod:String=null) 
		{
			super(testMethod);
		}
		
		public function testRangeCreation():void {
			var min:Number = 50;
			var max:Number = 100;
			var range:Range = new Range(min, max);
			assertTrue("Range minimum incorrect", range.getMinimum() == min);
			assertTrue("Range maximum incorrect", range.getMaximum() == max);
			
			range = new Range(max, min);
			assertTrue("Range minimum not the lesser number", range.getMinimum() == min);
			assertTrue("Range maximum not the higher number", range.getMaximum() == max);
		}
		
		public function testRangeSpan():void {
			var min:Number = 0;
			var max:Number = 200;
			var expectedSpan:Number = max - min;
			var range:Range = new Range(min, max);
			assertTrue("Range span is not correct", range.getRangeSpan() == expectedSpan);
		}
		
		public function testRangeOverlap():void {
			var min:Number = 50;
			var max:Number = 100;
			var range:Range = new Range(min, max);
			assertTrue("Range should overlap with Minimum", range.overlapsWith(new Range(min + 10, max + 50)));
			assertTrue("Range should overlap with Maximum", range.overlapsWith(new Range(min - 50, max - 10)));
			assertTrue("Range should overlap entirely", range.overlapsWith(new Range(min + 10, max - 10)));
			assertTrue("Range should be overlapped entirely", range.overlapsWith(new Range(min - 10, max + 10)));
		}
		
	}

}