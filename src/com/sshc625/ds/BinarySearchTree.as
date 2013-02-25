package com.sshc625.ds
{
	import com.sshc625.ds.Comparable;
	
	import com.sshc625.ds.BinaryNode;
	import com.sshc625.ds.Number2;

	import com.sshc625.ds.ItemNotFoundException;
	import com.sshc625.ds.DuplicateItemException;

	//import com.sshc625.ds.Container;

	/**
	 * 二叉查找树
	 * 
	 * 动态建树是件非常消耗资源的事情, 在知道树节点个数或者能确定节点大致数量的时候
	 * 应该采用静态存储方式, 而不是动态建立BinaryNode插入到树中.
	 * 如果数据是动态的, 采取这样的方式还是比较合适的.
	 * 时间复杂度比较小.
	 * 
	 * 通常都会采用静态声明一个确定容量的Array在逻辑上模拟Tree, 
	 * HaffmanTree的经典实现就是这样做的.
 	 */
	public class BinarySearchTree// implements Container
	{	
		// Usage 
    	public static function main( ):void
    	{
        	var t:BinarySearchTree = new BinarySearchTree( );	// 建立一棵空的二叉查找树
        	var NUMS:Number = 4000;		// 树容量
        	var GAP:Number  =   37;		// 
			
    		trace( "Checking... (no more output means success)" );
		
			var i:Number;
			/* 数据量很大的话, 建树是一个很消耗的过程. */
        	for( i=GAP; i!=0; i=(i+GAP)%NUMS )
			{
				var node:Comparable = new Number2( i );
				t.insert( node );
			}
		
        	for( i=1; i<NUMS; i+=2 )
            	t.remove( new Number2( i ) );
		
        	if( ( (t.findMin( ))) != 2 || ((t.findMax())) != NUMS - 2 )
            	trace( "FindMin or FindMax error!" );
		
        	for( i=2; i<NUMS; i+=2 )
            	 if( ((t.find( new Number2( i ) ))) != i )
                	 trace( "Find error1!" );
                	 
        	for( i = 1; i < NUMS; i+=2 )
        	{
            	if( t.find( new Number2( i ) ) != null )
                	trace( "Find error2!" );
        	}
    	}
	
    	/**
    	 * Constructor. create an empty tree.
    	 * 
    	 */
    	public function BinarySearchTree( )
    	{
    		this.root = null;
    	}

    	/**
		 * insert
		 * 
    	 * @param x the item to insert.
    	 * @throws 	DuplicateItemException if x is already present.
    	 */
    	public function insert( item:Comparable):void
    	{
        	this.root = this.insert2(item, this.root);
    	}
		/**
		 * 
		 */
		private function insert2( item:Comparable, node:BinaryNode ):BinaryNode
    	{
        	if( node == null )
        	{
        		node = new BinaryNode( item );
        	}
        	else if( item.compareTo( Comparable(node.element) ) < 0 )
        	{
        		node.left = this.insert2( item, node.left );
        	}
        	else if( item.compareTo( Comparable(node.element) ) > 0 )
        	{
        		node.right = this.insert2( item, node.right );
        	}
        	else
        	{
        		throw new DuplicateItemException( "The item is existed" );
        	}
			return node;
    	}
		
    	/**
    	 * Remove from the tree.
    	 * 
    	 * @param x the item to remove.
    	 * @throws ItemNotFoundException if x is not found.
    	 */
    	public function remove( item:Comparable):void
    	{
        	this.root = this.remove2( item, this.root );
    	}
		/**
    	 * Internal method to remove from a subtree.
    	 * 
    	 * @param x the item to remove.
    	 * @param t the node that roots the tree.
    	 * @return the new root.
    	 * @throws ItemNotFoundException if x is not found.
    	 */
    	public function remove2( x:Comparable, t:BinaryNode ):BinaryNode
    	{
        	if( t == null )
        	{
            	throw new ItemNotFoundException( "Can't find item");
            }
        	if( x.compareTo( t.element ) < 0 )
        	{
            	t.left = remove2( x, t.left );
            }
        	else if( x.compareTo( t.element ) > 0 )
        	{
            	t.right = remove2( x, t.right );
            }
        	else if( t.left != null && t.right != null ) // Two children
        	{
            	t.element = findMin2( t.right ).element;
            	t.right = removeMin2( t.right );
        	}
        	else
        	{
            	t = ( t.left != null ) ? t.left : t.right;
            }
        	return t;
    	}
	
    	/**
    	 * Remove minimum item from the tree.
    	 * @throws ItemNotFoundException if tree is empty.
    	 */
    	public function removeMin( ):void
    	{
        	root = removeMin2( root );
    	}
		
	    /**
    	 * Find the smallest item in the tree.
    	 * @return smallest item or null if empty.
    	 */
    	public function findMin( ):Comparable
    	{
        	return elementAt( findMin2( root ) );
    	}

	    /**
	     * Find the largest item in the tree.
	     * @return the largest item or null if empty.
	     */
	    public function findMax( ):Comparable
		{
        	return elementAt( findMax2( root ) );
    	}

	    /**
	     * Find an item in the tree.
	     * @param x the item to search for.
	     * @return the matching item or null if not found.
	     */
	    public function find( x:Comparable ):Comparable
	    {
    	    return elementAt( find2( x, root ) );
		}

    	/**
 	     * Make the tree logically empty.
 	     */
		public function makeEmpty( ):void
 	   	{
			root = null;
    	}

		/**
    	 * Test if the tree is logically empty.
    	 * @return true if empty, false otherwise.
    	 */
    	public function isEmpty( ):Boolean
    	{
        	return root == null;
    	}

    	/**
    	 * Internal method to get element field.
    	 * @param t the node.
    	 * @return the element field or null if t is null.
    	 */
    	private function elementAt( t:BinaryNode ):Comparable
    	{
        	return t == null ? null : t.element;
    	}
		
    	/**
    	 * Internal method to insert into a subtree.
    	 * @param x the item to insert.
    	 * @param t the node that roots the tree.
    	 * @return the new root.
    	 * @throws DuplicateItemException if x is already present.
    	 */
    	/*
		protected BinaryNode insert( Comparable x, BinaryNode t )
    	{
        	if( t == null )
        	    t = new BinaryNode( x );
        	else if( x.compareTo( t.element ) < 0 )
            	t.left = insert( x, t.left );
        	else if( x.compareTo( t.element ) > 0 )
            	t.right = insert( x, t.right );
        	else
            	throw new DuplicateItemException( x.toString( ) );  // Duplicate
        	return t;
    	}
		*/
		
	    /**
    	 * Internal method to remove minimum item from a subtree.
    	 * @param t the node that roots the tree.
    	 * @return the new root.
    	 * @throws ItemNotFoundException if x is not found.
    	 */
    	function removeMin2( t:BinaryNode ):BinaryNode
    	{
        	if( t == null )
			{
            	throw new ItemNotFoundException( "failed find element." );
			}
        	else if( t.left != null )
        	{
            	t.left = removeMin2( t.left );
            	return t;
        	}
        	else
        	{
            	return t.right;
            }
    	}
    	
    	/**
		 * 在子树中查找出最小的item
		 */
    	private function findMin2( t:BinaryNode ):BinaryNode
    	{
        	if( t != null )
			{
            	while( t.left != null )
				{
                	t = t.left;
					trace("t="+t.element);
				}
			}
        	return t;
    	}

	    /**
		 * 在子树中查找出最大的item
	     */
	    private function findMax2( t:BinaryNode ):BinaryNode
	    {
    	    if( t != null )
    	    {
    	        while( t.right != null )
    	        {
        	        t = t.right;
				}
			}
				
        	return t;
    	}
		
    	/**
		 * 在子树中查找指定item
    	 */
    	private function find2( x:Comparable, t:BinaryNode ):BinaryNode
    	{
    		var cr:Number;
        	while ( t != null )
        	{
        		cr = x.compareTo( Comparable( t.element ) );
            	if( cr < 0 )
            	{
                	t = t.left;
				}
            	else if( cr > 0 )
            	{
                	t = t.right;
            	}
            	else
            	{    
            		return t; // Match
            	}
        	}
        	     
        	return null; // Not found
		}
	
		private var root:BinaryNode = null;	// The tree root
	}
	
}
