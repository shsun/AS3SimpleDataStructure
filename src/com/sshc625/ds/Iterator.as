package com.sshc625.ds
{
	/**
 	 * @author sshc625
 	 */
	public interface Iterator
	{
		/**
		 * Advance the current position to the next position in the iteration.
		 */
		function advance( ):void;
	
    	/**
    	 * Returns true if the iteration has more elements.
    	 *
    	 * @return true if the iterator has more elements.
    	 */
		function hasNext( ):Boolean;
	
    	/**
    	 * Returns the next element in the iteration.
    	 *
    	 * @return 		the next element in the iteration.
    	 * @exception 	NoSuchElementException iteration has no more elements.
    	 */
		function next( ):Object;
		
    	/**
    	 * Removes from the underlying collection the last element returned by the
    	 * iterator.
    	 * 
    	 * @exception 	UnsupportedOperationException if the <tt>remove</tt>
    	 *		  		operation is not supported by this Iterator.
     	 *
    	 * @exception 	IllegalStateException if the <tt>next</tt> method has not
     	 *		  		yet been called, or the <tt>remove</tt> method has already
     	 *		  		been called after the last call to the <tt>next</tt>
     	 *		  		method.
     	 */
		function remove( ):void;	
	}
	
}
