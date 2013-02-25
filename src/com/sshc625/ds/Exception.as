package com.sshc625.ds
{
	/**
	 * Exception Class
	 * 
	 * @author sshc625
	 */ 
	public class Exception
	{	
		public function Exception( message:String ) 
		{
			this.err = new Error( message );
		}
		
		public function stderr( ):Error 
		{
			return this.err;
		}
		
		private var err:Error;
	}

}