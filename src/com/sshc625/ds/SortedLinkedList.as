package com.sshc625.ds
{
	import com.sshc625.ds.LinkedList;
	import com.sshc625.ds.LinkedListIterator;
	import com.sshc625.ds.Comparable;

	/**
	 * Sorted linkedlist.
	 *  
	 * @author 	sshc625
	 * @see 	LinkedListIterator
	 */
	public class SortedLinkedList extends LinkedList 
	{	
    	public override function insert( item:Object, p:LinkedListIterator ):void
    	{
    		this.insert2( Comparable(item) );
    	}
    	 	
    	/**
    	 * Insert in sorted order.
    	 * 
    	 * @param x the item to insert.
    	 */
    	private function insert2( item:Comparable ):void
    	{
        	var prev:LinkedListIterator = super.iterator( );
        	var curr:LinkedListIterator = super.first( );
						
			// pay attention on the while.
        	while ( curr.isValid( ) && item.compareTo( Comparable(curr.retrieve()) ) > 0 )
        	{
            	prev.advance( );
            	curr.advance( );
        	}
        	super.insert( item, prev );
    	}
	}	
}