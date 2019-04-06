package My3D {
	
	import mx.collections.ArrayCollection;
	
	public class PixelBuffer3D {
		
		public function PixelBuffer3D() {
			// Empty body.
		}
		
		public function getPixel3DAt(index:uint):void {
			return (Pixel3D)pixels.getItemAt(index);
		}
		
		public function addPixel3D(pixel3D:Pixel3D):void {
			// Put the 
		}
		
		// The array of pixel objects...
		private var pixels:ArrayCollection = new ArrayCollection();

	}
	
}