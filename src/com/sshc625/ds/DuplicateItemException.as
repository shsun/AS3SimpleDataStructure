package com.sshc625.ds
{
	import com.sshc625.ds.Exception;

	/**
	 * @author sshc625
	 */
	public class DuplicateItemException extends Exception
	{
		/**
		 * @param message the error message.
		 */
		public function DuplicateItemException( message:String ) 
		{
			super( "DuplicateItemException : " + message );
		}
	}
	
}