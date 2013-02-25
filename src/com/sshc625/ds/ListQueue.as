package com.sshc625.ds
{
	import com.sshc625.ds.Queue;
	import com.sshc625.ds.ListNode;
	import com.sshc625.ds.UnderflowException;

	/**
	 * ListQueue is a queue.
	 * 
	 * @author 	sshc625
	 * @see		ArrayQueue
	 * @see		Queue
	 * @see		Container
	 */
	public class ListQueue implements Queue
	{
    	/**
    	 * Constructor
    	 */
    	public function ListQueue( )
    	{
        	this.front = this.back = null;
        	this.currentSize = 0;
		}
		
    	/**
    	 * @return if queue is empty return true, otherwise return false.
    	 */
    	public function isEmpty( ):Boolean 
    	{
        	return this.front == null;
    	}
		
    	/**
    	 * make queue empty.
    	 */
    	public function makeEmpty( ):void
    	{
        	this.front = this.back = null;
        	this.currentSize = 0;
    	}
		
    	/**
     	 * get the size of queue.
     	 */
		public function size( ):uint
		{
			return this.currentSize;
		}
		
    	/**
	 	 * Return the data in the fornt and remove.
		 *  
    	 * @return element in the fornt.
    	 * @throws empty queue will throw UnderflowException.
    	 */
    	public function dequeue( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ListQueue dequeue" ).stderr();
        	}
         		
        	var returnValue:Object = this.front.element;
        	this.front = this.front.next;
        	this.currentSize --;
        		
        	return returnValue;
    	}

	    /**
    	 * Return the data in the fornt but not remove.
    	 * 
    	 * @return 		element which in the fornt.
    	 * @exception 	empty queue will throw UnderflowException.
    	 */
    	public function getFront( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ListQueue getFront" ).stderr();
        	}
			  
			return this.front.element;
    	}
		
		/**
    	 * Enqueue.
    	 * 
    	 * @param item
    	 * 
    	 * @return void
    	 */
    	public function enqueue( item:Object ):void 
    	{
        	if( this.isEmpty( ) ) 
        	{
        		// queue contain a element.
            	this.back = this.front = new ListNode( item, null );
        	}
        	else
        	{
        		// append new node and move back-pointer to next node.
            	this.back = new ListNode( item, null );
				this.back = back.next;
			}
			this.currentSize++;
    	}
    
		private var currentSize:uint = 0; 	
    	private var front:ListNode = null;
    	private var back :ListNode = null;
	}
	
}