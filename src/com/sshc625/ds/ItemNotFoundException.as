package com.sshc625.ds
{
	/**
	 * Exception class for failed finds/removes in searchtrees, 
	 * hashtables, and list and tree iterators.
	 * 
	 * @author sshc625
	 */
	import com.sshc625.ds.Exception;
 
	public class ItemNotFoundException extends Exception
	{
		/**
    	 * Construct this exception object.
    	 * 
    	 * @param message the error message.
    	 */
    	public function ItemNotFoundException( message:String ) 
    	{
			super("ItemNotFoundException : " + message);
    	}
	}

}