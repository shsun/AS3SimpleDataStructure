package com.sshc625.ds
{	
	/**
	 * ListNode.
	 * 
	 * @author	sshc625
	 */ 
	public class ListNode 
	{	
		/**
		 * Constructor.
		 * if next is null the node is tail node.
		 * 
		 * @param theElement	element.
		 * @param n				pointer which  point to the next node.
		 */
    	public function ListNode( theElement:Object, next:ListNode)
    	{
			this._element = theElement;
			this._next = (next==undefined ? null : next);
		}
	 	
		public function get element( ):Object 
		{
			return this._element;
		}	
		public function set element( e:Object ):void
		{
			this._element = e;
		}
	
		public function get next( ):ListNode 
		{
			return this._next;
		}
		public function set next( n:ListNode ):void
		{
			this._next = n;
		}
	
		private var _element:Object = null;	// element
    	private var _next:ListNode 	= null;	// pointer which point to the next node in list.
	}
	
}
