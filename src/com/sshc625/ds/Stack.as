package com.sshc625.ds
{
	import com.sshc625.ds.Container;
	
	/**
	 * liner data-container interface.
	 * 
	 * @author sshc625
	 */
	public interface Stack extends Container
	{	
    	/**
     	 * push item into stack
     	 * 
	 	 * @param item	item which will be push into stack.
     	 */
		function push( item:Object ):void;
    
    	/**
	 	 * pop the item on the top of stack. 
	 	 * 
	 	 * @exception empty stack will fire UnderflowException.
     	 */
    	function pop( ):void;
    	
    	/**
    	 * Return the item which on the top of stack.
    	 * 
    	 * @return 		element on the top of stack.
		 * @exception 	empty stack will fire UnderflowException.
    	 */
    	function top( ):Object;

    	/**
		 * Get and remove the element on the top of stack.
		 * 
    	 * @return 		element on the top of stack.
    	 * @exception 	empty stack will fire UnderflowException.
    	 */
    	function topAndPop( ):Object;
	}
}