package com.sshc625.ds
{
	import com.sshc625.ds.Stack;
	import com.sshc625.ds.ListNode;
	import com.sshc625.ds.UnderflowException;
	
	/**
	 * stack.
	 * 
	 * @author 	sshc625
	 * @see 	ArrayStack
	 * @see		Stack
	 * @see		Container
	 */	
	public class ListStack implements Stack
	{
    	/**
    	 * Constructor
    	 */
    	public function ListStack( )
    	{
    		this.makeEmpty( );
    	}
		
    	/**
    	 * @return true if empty, false otherwise.
    	 */
    	public function isEmpty( ):Boolean 
    	{
        	return (this.topOfStack == null);
    	}
	
    	/**
    	 */
    	public function makeEmpty( ):void
    	{
        	this.topOfStack = null;
        	this.currentSize = 0;
    	}
		
		public function size():uint
		{
			return this.currentSize;
		}
	
    	/**
		 *  
    	 * @param x the item to insert.
    	 */
    	public function push( item:Object ):void 
    	{
    		this.topOfStack = new ListNode( item, this.topOfStack );
    		this.currentSize ++;
    	}
	
    	/**
    	 * @throws UnderflowException if the stack is empty.
    	 */
    	public function pop( ):void 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw (new UnderflowException("ListStack pop")).stderr();
        	}
        	
        	this.topOfStack = this.topOfStack.next;
        	this.currentSize --;
		}
	
    	/**
    	 * Get the top-element but not remove.
    	 * @return top-element
    	 * @throws empty stack will fire UnderflowException.
    	 */
    	public function top( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw (new UnderflowException("ListStack top")).stderr();
        	}
						
        	return this.topOfStack.element;
    	}
	
    	/**
		 * Get top-element and remove it.
		 *  
    	 * @return top-element
    	 * @throws empty stack will fire UnderflowException.
    	 */
    	public function topAndPop( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw (new UnderflowException("ListStack topAndPop")).stderr();
        	}
        
			var topItem:Object = this.top( );
     		this.pop();
     	
			return topItem;
    	}
    	 
    	private var currentSize:uint = 0;
    	private var topOfStack:ListNode;// top element
	}
	
}