package com.sshc625.ds
{
	import com.sshc625.ds.ListNode;
	import com.sshc625.ds.Iterator;
	/**
	 * LinkedList iterator
	 * @author sshc625
	 */
	public class LinkedListIterator implements Iterator 
	{
		/**
    	 * Constructor
    	 * 
    	 * @param theNode A position in the linked list.
    	 */
		public function LinkedListIterator( theNode:ListNode ) 
		{
        	this.current = theNode;	// current position.
    	}
		
    	/**
    	 * test current position is a valid position or not.
    	 * 
    	 * @return valid position return true, otherwise return false.
    	 */
    	public function isValid( ):Boolean 
    	{
        	return (this.current != null);
    	}

    	/**
    	 * Get element in current node.
    	 * 
    	 * @return element in current node.
    	 */
    	public function retrieve( ):Object
    	{
        	return ( this.isValid() ? this.current.element : null);
		}

    	/**
    	 * Advance the current position to the next position in the iteration.
    	 */
		public function advance( ):void
    	{
        	if( this.isValid( ) )
        	{
				this.current = this.current.next;
			}
    	}
    
    	/**
    	 * Returns true if the iteration has more elements.
    	 */
    	public function hasNext( ):Boolean 
    	{
    		return (this.current.next != null);
		}
	
		/**
		 * Returns the next element in the iteration.
		 */
		public function next( ):Object
		{
			return this.current.next;
		}
	
		/**
		 * remove current element in the iteration.
		 */
		public function remove( ):void
		{
			// TODO ...
			// can't remove current item.
			// but i can remove next item in the iteration.
			
			// Let me think for a while..........
		}
		
		public var current:ListNode ;   // Current position
	}
		
}