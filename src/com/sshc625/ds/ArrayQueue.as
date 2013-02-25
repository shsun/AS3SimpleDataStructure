package com.sshc625.ds
{		
	import com.sshc625.ds.Queue;
	import com.sshc625.ds.UnderflowException;
	
	/**
	 * ArrayQueue is a circular-queue.
	 * 
	 * @author	sshc625
	 */
	public class ArrayQueue implements Queue 
	{
    	/**
    	 * Constructor
    	 */
    	public function ArrayQueue( ) 
    	{
        	this.theArray = new Array( ArrayQueue.DEFAULT_CAPACITY );
        	this.makeEmpty( );
		}
		
    	/**
	 	* is an empty queue.
	 	* 
     	* @return if queue is empty return true, otherwise return false.
     	*/
    	public function isEmpty( ):Boolean 
    	{
        	return ( this.currentSize == 0 );
    	}
		
    	/**
    	 * make queue empty.
    	 */
    	public function makeEmpty( ):void
    	{
        	this.currentSize = 0;
        	this.front = 0;
        	this.back = -1;
    	}
    
    	/**
    	 * get the size of queue.
    	 */
		public function size( ):uint
		{
			return this.currentSize;
		}

			/**
		 * Return the data in the fornt and remove..
		 *  
    	 * @return element in the fornt.
    	 * @throws empty queue will throw UnderflowException.
     	*/
    	public function dequeue( ):Object
    	{
        	if( this.isEmpty( ) )
        	{
        		throw (new UnderflowException( "ArrayQueue dequeue" )).stderr();
        	}
			
        	this.currentSize--;
		
        	var returnValue:Object = this.theArray[ this.front ];
        	this.front = this.increment( this.front );
        	return returnValue;
    	}
    
    	/**
    	 * Return the data in the fornt but not remove.
    	 * 
    	 * @return 		element in the fornt.
    	 * @exception 	empty queue will throw UnderflowException. 
    	 */
    	public function getFront( ):Object
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ArrayQueue getFront" ).stderr();
        	}
            
			return this.theArray[ this.front ];
    	}

    	/**
		 * enqueue.
		 * 
    	 * @param item
    	 */
    	public function enqueue( item:Object ):void
    	{
        	if( this.currentSize == this.theArray.length )
        	{
        		this.doubleQueue( );
        	}
			
        	this.back = this.increment( this.back );
        	this.theArray[ back ] = item;
        
        	this.currentSize++;	// element num.
    	}

    	/**
		 * 
    	 * @param x index
    	 * @return 	return 0 if x is the tail, otherwise return x+1.
    	 */
    	private function increment( x:Number ):Number 
    	{
        	if ( ++x == this.theArray.length )	
        	{
        		x = 0;	// cyc
        	}
        	return x;
    	}
    
    	/**
		 * see ArrayList(java). 
    	 */
    	private function doubleQueue( ):void
    	{
        	var newArray:Array = new Array( this.theArray.length * 2 );
        
        	// move all elements to the new array.
        	for ( var i:Number=0; i<this.currentSize; i++ )
        	{
				newArray[ i ] = this.theArray[ this.front ];
				this.front = this.increment( this.front );
			}
        
        	this.theArray = newArray;
          
        	this.front = 0;
        	this.back = this.currentSize - 1;
    	}
    	
    	private var theArray	:Array = null;	// data-container
    	
		private var currentSize :Number = Number.NaN;     
    	private var front		:Number = Number.NaN;	// front point
    	private var back		:Number = Number.NaN;	// tail point
	
    	private static var DEFAULT_CAPACITY:uint = 10;// default capacity.
	}
}