package My3D {
	
	import flash.display.BitmapData;
	
	public class Pixel3D {
		
		public function Pixel3D(x:Number = 0, 
								y:Number = 0, 
								zOrder:Number = null,
								color:uint = 0x000000,
								alpha:Number = 1) {
			this.x = x;
			this.y = y;
			
			this.zOrder = zOrder;
			
			this.color = color;
			this.alpha = alpha;
		}
		
		public function render(display3D:Display3D):void {
			// If there is no z order then do not render!
			if (!zOrder) {
				return;
			}
			
			
		}
		
		// Pixel coordinates for screen...
		public var x:Number = 0;
		public var y:Number = 0;
		
		// The z-order, used for the depth buffering...
		public var zOrder:Number = null;
		
		// The color and alpha for the pixel rendering...
		public var color:uint = 0x000000;
		public var alpha:Number = 1;

	}
	
}