package My3D {
	
	import mx.collections.ArrayCollection;
	import mx.containers.Canvas;
	
	public class Shape3D {
		
		public function Shape3D() {
			// empty body
		}
		
		public function addEdge3D(edge3D:Edge3D):void {
			edge3DArray.addItem(edge3D);
		}
		
		public function getEdge3D(index:Number):Edge3D {
			return (Edge3D)(edge3DArray.getItemAt(index));
		}
		
		public function setAxis(axis:Axis3D):void {
			var i:uint;
			
			for (i = 0; i < edge3DArray.length; i++) {
				getEdge3D(i).setAxis(axis);
			}
		}
		
		public function render(canvas:Canvas):void {
			var i:uint;
			
			for (i = 0; i < edge3DArray.length; i++) {
				getEdge3D(i).render(canvas);
			}
		}
		
		public function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			var i:uint;
			
			for (i = 0; i < edge3DArray.length; i++) {
				getEdge3D(i).rotate(xAngle, yAngle, zAngle);
			}
		}
		
		public function scale(xScale:Number = 0, yScale:Number = 0, zScale:Number = 0):void {
			var i:uint;
			
			for (i = 0; i < edge3DArray.length; i++) {
				getEdge3D(i).scale(xScale, yScale, zScale);
			}
		}
		
		public function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			var i:uint;
			
			for (i = 0; i < edge3DArray.length; i++) {
				getEdge3D(i).transpose(xTranspose, yTranspose, zTranspose);
			}
		}
		
		private var edge3DArray:ArrayCollection = new ArrayCollection();

	}
}