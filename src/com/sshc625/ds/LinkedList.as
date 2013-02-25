package com.sshc625.ds
{
	import com.sshc625.ds.Container;
	import com.sshc625.ds.ListNode;
	import com.sshc625.ds.LinkedListIterator;
	
	/**
	 * LinkedList.
	 * 
	 * @author sshc625
	 */
	public class LinkedList implements Container
	{  
		/**
    	 * Constructor
    	 */
    	public function LinkedList( ) 
    	{
        	this.header = new ListNode(null, null);	// 创建一个空节点作为头节点
    	}
	
    	/**
		 * 
    	 * @return empty data-container return true, otherwise return false.
    	 */
    	public function isEmpty( ):Boolean
    	{
        	return ( this.header.next == null );
    	}
		
    	/**
		 * make data-container empty.
    	 */
    	public function makeEmpty( ):void 
    	{
    		this.header.next = null;
    	}

    	/**
    	 * Get interator.
    	 */
    	public function iterator( ):LinkedListIterator 
    	{
        	return ( new LinkedListIterator( this.header ) );
    	}
	
    	/**
    	 * Get interator on the header.
    	 */
    	public function first( ):LinkedListIterator
    	{
    		if( this.header == null )
    		{
    			//throw new Exception( "" );
    		}
			return ( new LinkedListIterator( this.header.next ) );
    	}
		
    	/**
     	 * insert element.
     	 * 
    	 * @param item 	the item to insert.
    	 * @param p 	the position prior to the newly inserted item.
    	 */
   	 	protected function insert( item:Object, p:LinkedListIterator ):void
    	{
        	if( p != null && p.current != null )
        	{
        		p.current.next = new ListNode( item, p.current.next );
        	}
    	}
		
    	/**
    	 * Return iterator corresponding to the first node containing an item.
    	 * 
    	 * @param x the item to search for.
    	 * @return an iterator; iterator is not valid if item is not found.
    	 */
   	 	public function find( item:Object ):LinkedListIterator 
    	{
        	var itr:ListNode = this.header.next;
			
			// find from current-position
			while( itr!=null && itr.element != item )
			{
				itr = itr.next;
			}
			
        	return ( new LinkedListIterator( itr ) );
    	}
    
    	/**
    	 * Return iterator prior to the first node containing an item.
    	 * 
    	 * @param x the item to search for.
    	 * @return 	appropriate iterator if the item is found. Otherwise, the iterator 
    	 * 			corresponding to the last element in the list is returned.
    	 */
    	public function findPrevious( item:Object ):LinkedListIterator
    	{
        	var itr:ListNode = this.header;
			
			// find from header
        	while( itr.next != null && itr.element != item )
        	{
            	itr = itr.next;
			}
			
        	return ( new LinkedListIterator( itr ) );
    	}
    	
    	/**
		 * find the item and remove which appears 1st in the linkedlist, 
		 * 
    	 * @param item 
    	 */
    	public function remove( item:Object ):void
    	{
        	var p:LinkedListIterator = this.findPrevious( item );
		
        	if( p.current.next != null )
        	{
            	p.current.next = p.current.next.next;  // Bypass deleted node
			}
		}
	
		/**
	 	 * 
		 * @return size of linkedlist.
		 */
		public function size( ):uint 
		{
			var size:uint = 0;
			var itr:LinkedListIterator = this.first( );
			
			while( itr.isValid() )
			{
				size ++;
				itr.advance();
			}
				
        	return size;    
		}
				
    	private var header:ListNode;// the header of linkedlist.
	}
	
}
