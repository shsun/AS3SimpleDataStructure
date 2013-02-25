package com.sshc625.ds
{
	import com.sshc625.ds.BinaryNode;
	
	/**
	 * AVL tree.
	 * 
	 * @author	sshc625
	 */
	public class Rotations
	{
    	/**
    	 * Rotate binary tree node with left child.
    	 * For AVL trees, this is a single rotation for case 1.
    	 */
    	public static function rotateWithLeftChild( k2:BinaryNode ):BinaryNode
    	{
        	var k1:BinaryNode = k2.left;
        	
        	k2.left = k1.right;
        	k1.right = k2;
			
			return k1;
    	}
		
    	/**
    	 * Rotate binary tree node with right child.
    	 * For AVL trees, this is a single rotation for case 4. 
    	 */
		public static function rotateWithRightChild( k1:BinaryNode ):BinaryNode
    	{
        	var k2:BinaryNode = k1.right;
        	k1.right = k2.left;
        	k2.left = k1;
        	
        	return k2;
    	}
		
    	/**
    	 * Double rotate binary tree node: first left child
    	 * with its right child; then node k3 with new left child.
    	 * For AVL trees, this is a double rotation for case 2. 
    	 */
    	public static function doubleRotateWithLeftChild( k3:BinaryNode ):BinaryNode
    	{
        	k3.left = Rotations.rotateWithRightChild( k3.left );
        	return Rotations.rotateWithLeftChild( k3 );
    	}

    	/**
    	 * Double rotate binary tree node: first right child
    	 * with its left child; then node k1 with new right child.
    	 * For AVL trees, this is a double rotation for case 3. 
    	 */
    	public static function doubleRotateWithRightChild( k1:BinaryNode ):BinaryNode
    	{
        	k1.right = Rotations.rotateWithLeftChild( k1.right );
        	return Rotations.rotateWithRightChild( k1 );
    	}
	}

}