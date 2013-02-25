package com.sshc625.ds
{	
	import com.sshc625.ds.Container;

	/**
	 * linear data-container, interface of queue.
	 * 
	 * @author	sshc625
	 */		
	public interface Queue extends Container
	{    
		/**
    	 * Enqueue.
    	 * 
    	 * @param item 
    	 * @return void
    	 */
    	function enqueue( item:Object ):void;
    
   	 	/**
     	 * Return the data in the fornt but not remove.
     	 * 
     	 * @return 		element which in the fornt.
     	 * @exception 	empty queue will throw UnderflowException.
     	 */
    	function getFront( ):Object;

    	/**
	 	 * Return the data in the fornt and remove. 
	 	 * 
     	 * @return 		element in the fornt.
     	 * @exception 	empty queue will throw UnderflowException.
     	 */
    	function dequeue( ):Object;
	}
}