package My3D {
	
	public class PixelPoint3D {
		
		public function PixelPoint3D(x:Number, y:Number, zOrder:Number = null) {
			this.x = x;
			this.y = y;
			
			this.zOrder = zOrder;
		}
	
		public var x:Number = 0;
		public var y:Number = 0;
		
		public var zOrder:Number = null;

	}
	
}