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
		
		public function testRangeSpan():void {
			var minimum:Number = 0;
			var maximum:Number = 200;
			var expectedSpan:Number = maximum - minimum;
			var range:Range = new Range(minimum, maximum);
			assertTrue("Range span is not correct", range.getRangeSpan() == expectedSpan)
		}
		
	}

}