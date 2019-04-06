package My3D {
	
	import mx.containers.Canvas;
	import My3D.Renderable3D.*;
	
	public class Display3D
	extends Canvas {
		
		public function Display3D() {
			// Empty body.
		}
		
		public function render():void {
			// Clear the display...
			graphics.clear();
			
			// Then tell the render buffer to render everythgin it's
			// got to this display...
			renderBuffer3D.render(this);
		}
		
		public function addRenderable3D(renderable3D:Renderable3D):void {
			renderBuffer3D.addRenderable3D(renderable3D);
		}
		
		public function getRenderable3DAt(index:uint):Renderable3D {
			return renderBuffer3D.getRenderable3DAt(index);
		}
		
		public function removeRenderable3D(renderable3D:Renderable3D):void {
			renderBuffer3D.removeRenderable3D(renderable3D);
		}
		
		private var renderBuffer3D:RenderBuffer3D = new RenderBuffer3D();

	}
	
}