package My3D.Renderable3D.Thing3D {
	
	import My3D.*;
	import My3D.Geometry3D.Axis3D;
	import My3D.Renderable3D.*;
	
	public class Thing3D
	extends Renderable3D {
		
		public function Thing3D() {
			// Empty body.
		}
		
		public override function getZOrder():Number {
			var zOrder:Number = 0;
			
			for each (var renderable3D:Renderable3D in renderBuffer3D) {
				if (renderable3D != this) {
					zOrder += renderable3D.getZOrder();
				}
			}
			
			return zOrder / renderBuffer3D.getLength();
		}
		
		public override function render(display3D:Display3D):void {
			// Empty body.
		}

		public function addRenderable3D(renderable3D:Renderable3D):void {
			renderBuffer3D.addRenderable3D(renderable3D);
		}
		
		public function removeRenderable3D(renderable3D:Renderable3D):void {
			renderBuffer3D.removeRenderable3D(renderable3D);
		}

		public override function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			for each (var renderable3D:Renderable3D in renderBuffer3D) {
				renderable3D.rotate(xAngle, yAngle, zAngle);
			}
		}
		
		public override function scale(xScale:Number = 0, yScale:Number = 0, zScale:Number = 0):void {
			for each (var renderable3D:Renderable3D in renderBuffer3D) {
				renderable3D.scale(xScale, yScale, zScale);
			}
		}
		
		public override function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			for each (var renderable3D:Renderable3D in renderBuffer3D) {
				renderable3D.transpose(xTranspose, yTranspose, zTranspose);
			}
		}
		
		public override function getRenderBuffer3D():RenderBuffer3D {
			return renderBuffer3D;
		}
		
		public override function setAlpha(alpha:Number = 1):void {
			for (var i:uint = 0; i < renderBuffer3D.getLength(); i++) {
				renderBuffer3D.getRenderable3DAt(i).setAlpha(alpha);
			}
		}
		
		public override function setColor(color:uint):void {
			for (var i:uint = 0; i < renderBuffer3D.getLength(); i++) {
				renderBuffer3D.getRenderable3DAt(i).setColor(color);
			}
		}
		
		public override function setAxis(axis:Axis3D):void {
			for each (var renderable3D:Renderable3D in renderBuffer3D) {
				renderable3D.setAxis(axis);
			}
		}
		
		private var renderBuffer3D:RenderBuffer3D = new RenderBuffer3D();
		
	}
	
}