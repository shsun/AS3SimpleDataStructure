package com.sshc625.ds
{
	import com.sshc625.ds.Exception;

	/**
	 * UnderflowException Class
	 * 
	 * @author sshc625
	 */  
	public class UnderflowException extends Exception
	{
    	/**
    	 * Constructor
    	 * 
    	 * @param error message.
    	 */
    	public function UnderflowException( message:String )
    	{
			super("UnderflowException : " + message);
    	}
	}
}