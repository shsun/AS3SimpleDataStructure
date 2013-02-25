package com.sshc625.ds
{
	import com.sshc625.ds.Exception;

	/**
	 * @author sshc625
	 */
	class UnsupportedOperationException extends Exception 
	{
		public function UnsupportedOperationException( message:String ) 
		{
			super( "UnsupportedOperationException : " + message );
		}
	}
}
