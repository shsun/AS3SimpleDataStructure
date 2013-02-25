package com.sshc625.ds 
{
	import flash.utils.Dictionary;
	import com.sshc625.ds.Container;

	/**
	 * @author sshc625
	 */
	public class HashTable implements Container
	{
    	private static const DEFAULT_INITIAL_CAPACITY:uint = 16;
    	private static const MAXIMUM_CAPACITY:uint = 10000;	
    			
		private var dict:Dictionary;
    	private var capacity:uint = 0;
    			
		public function HashTable( initialCapacity:uint = 0 )
		{
			if( initialCapacity > 0 )
			{
				this.capacity = initialCapacity < MAXIMUM_CAPACITY 
								? initialCapacity 
								: MAXIMUM_CAPACITY; 
			}
			else
			{
				this.capacity = DEFAULT_INITIAL_CAPACITY;
			}
			this.makeEmpty( );
		}
		
		public function put(key:*, value:*):void
		{
			this.dict[key] = value;
		}		
		public function get( key:* ):*
		{
			return this.dict[key];
		}
		
		public function remove(key:*):*
		{
			var val:* = this.get(key);
			delete this.dict[key];
			return val;
		}
		
		public function contains( key:* ):Boolean
		{
			return ( this.get(key) != undefined );
		}
		
		public function size( ):uint
		{
			var s:uint = 0;
			for( var pro:* in this.dict )
			{
				s++;	
			}
			return s;
		}
		
		public function isEmpty():Boolean
		{
			return ( this.size() > 0 ) ;
		}
		
		public function makeEmpty():void
		{
			this.dict = new Dictionary( true );
		}
		
	}
}
