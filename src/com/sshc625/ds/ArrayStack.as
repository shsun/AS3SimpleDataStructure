package com.sshc625.ds
{	
	import com.sshc625.ds.Stack;
	import com.sshc625.ds.UnderflowException;
	
	/**
	 * 
	 */
	public class ArrayStack implements Stack
	{
		/**
    	 * Constructor
    	 */
    	public function ArrayStack( ) 
    	{
        	this.theArray = new Array( ArrayStack.DEFAULT_CAPACITY );
        	this.makeEmpty( );
    	}
    	
    	/**
		 * Test if the stack is empty.
		 * 
		 * @return empty data-container return true, otherwise return false.
    	 */
    	public function isEmpty( ):Boolean
    	{
        	return (this.topOfStack == -1);
    	}
		
    	/**
		 * Make stack empty.
    	 */
    	public function makeEmpty( ):void
    	{
        	this.topOfStack = -1;
    	}
		
		public function size():uint
		{
			return 	this.topOfStack > 0 
					? this.topOfStack 
					: 0;
		}
		
    	/**
    	 * return the top-element of stack.
    	 * 
    	 * @return 		top element
		 * @exception 	empty stack will fire UnderflowException.
     	 */
    	public function top( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ArrayStack top" ).stderr( );
        	}
        	    
			return this.theArray[ this.topOfStack ];
    	}
    	
    	/**
		 * pop
		 * 
		 * @exception empty stack will fire UnderflowException.
    	 */
    	public function pop( ):void
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ArrayStack pop" );
        	}
        	    
        	this.topOfStack--;
    	}
		
    	/**
		 * Get and remove the top-element.
		 * 
    	 * @return 		top element
    	 * @exception 	empty stack will fire UnderflowException.
    	 */
    	public function topAndPop( ):Object 
    	{
        	if( this.isEmpty( ) )
        	{
        		throw new UnderflowException( "ArrayStack topAndPop" ).stderr();
        	}
            
        	return this.theArray[ this.topOfStack-- ];
    	}

	    /**
	     * push element into stack.
	     * 
		 * @param item	item.
	     */
	    public function push( item:Object ):void 
	    {
    	    if( this.topOfStack+1 == this.theArray.length )
        	{
        		this.doubleArray( );
        	}
        
        	this.theArray[ ++this.topOfStack ] = item;
    	}

	    /**
		 * 
	     */
	    private function doubleArray( ):void
	    {
    	    var newArray:Array = new Array( this.theArray.length * 2 );
    	    for( var i:uint=0; i<this.theArray.length; i++ )
        	{
        		newArray[ i ] = this.theArray[ i ];
        	}
            
        	this.theArray = newArray;
    	}
    
   	 	private var theArray:Array;
    	private var topOfStack:int;
			
    	private static var DEFAULT_CAPACITY:uint = 10;
	}

}