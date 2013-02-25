package com.sshc625.ds
{
	import com.sshc625.ds.Exception;
	
	/**
	 * Exception class for illegal decrease key
	 * operations in pairing heaps.
	 * 
	 * @author sshc625
	 */ 
	public class IllegalValueException extends Exception
	{
    	/**
    	 * Construct this exception object.
    	 * @param message the error message.
    	 */
    	public function IllegalValueException( message:String ) 
    	{
			super("IllegalValueException : " + message);
    	}
	}
	
}