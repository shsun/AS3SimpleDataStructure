package com.sshc625.ds 
{
	/**
	 * Data container protocol.
	 * 
	 * @author sshc625
	 */
	public interface Container 
	{
		/**
		 * Get the size of datacontainer.
		 * 
		 * @return size of datacontainer.
		 */
		function size( ):uint;
		
    	/**
		 * 
		 * 
		 * @return empty data-container return true, otherwise return false.
    	 */
    	function isEmpty( ):Boolean;
		
    	/**
    	 * make data-container empty.
    	 */
    	function makeEmpty( ):void;	
	}
	
}
