package com.sshc625.ds
{
	import com.sshc625.ds.Comparable;

	/**
	 * BinaryNode, be used in BinaryTree/BinaryLinkedList
	 * 
	 * @author	sshc625
	 */
	public class BinaryNode
	{
		/**
		 * Constructor 
		 */
    	public function BinaryNode( theElement:Comparable )
    	{
        	this._element = theElement;
        	this._left = null;
        	this._right = null;
    	}
	
		public function set element( theElement:Comparable ):void
		{
			this._element = theElement;
		}
		public function get element( ):Comparable
		{
			return this._element;
		}
		
		public function set left( node:BinaryNode ):void
		{
			this._left = node;
		}
		public function get left( ):BinaryNode
		{
			return this._left;
		}
	
		public function set right( node:BinaryNode ):void
		{
			this._right = node;
		}
		public function get right( ):BinaryNode
		{
			return this._right;
		}
	
    	private var _element:Comparable = null;	// data
    	private var _left :BinaryNode  	= null; // left
    	private var _right:BinaryNode 	= null; // right
	}

}