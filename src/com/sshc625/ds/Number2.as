package com.sshc625.ds
{
	import com.sshc625.ds.Comparable;

	/**
	 * @author	sshc625
	 */
	public class Number2 extends Number implements Comparable
	{
		/**
		 * Constructor 
		 */
		public function Number2( n:Number )
		{
			(n==undefined)? super(Number.NaN) : super( n );
		}
		
		/**
		 *  
		 */
		public function compareTo( x:Number2 ):int
		{
			var result:int;
			
			if ( this.valueOf() >  x.valueOf() )
			{
				result = 1;
			}		
			if ( this.valueOf() == x.valueOf() )
			{
				result = 0;
			}	
			if ( this.valueOf() <  x.valueOf() )
			{
				result = -1;
			}
		
			return result;
		}
	}

}