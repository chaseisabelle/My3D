package My3D.Renderable3D.Primitive3D {
	
	import My3D.Display3D;
	import My3D.Geometry3D.Axis3D;
	import My3D.Geometry3D.Point3D;
	import My3D.Renderable3D.RenderBuffer3D;
	import My3D.Renderable3D.Renderable3D;
	
	public class Surface3D
	extends Renderable3D
	implements Primitive3D {
		
		public function Surface3D(color:uint = 0x000000, alpha:Number = 1) {
			this.color = color;
			this.alpha = alpha;
		}
		
		public function addEdge3D(edge3D:Edge3D):void {
			renderBuffer3D.addRenderable3D(edge3D);
		}
		
		public function removeEdge3D(edge3D:Edge3D):void {
			renderBuffer3D.removeRenderable3D(edge3D);
		}
	
		public override function getZOrder():Number {
			var zOrder:Number = 0;
			
			for each (var edge3D:Edge3D in renderBuffer3D) {
				zOrder += edge3D.getZOrder();
			}
			
			return zOrder / renderBuffer3D.getLength();
		}
		
		public override function render(display3D:Display3D):void {
			if (renderBuffer3D.getLength() < 1) {
				return;
			}
			
			var a:Point3D = null;
			var b:Point3D = null;
			var control:Point3D = null;
			
			display3D.graphics.beginFill(color, alpha);
			
			// Render surface according to edges; however, use the 
			// same color and alpha for them as this surface.
			// Also, calculate the z-order for the surface while
			// you're at it...
			for each (var edge3D:Edge3D in renderBuffer3D) {
				a = edge3D.a.getPerspective(display3D);
				
				if (edge3D.control) {
					control = edge3D.control.getPerspective(display3D);
				}
				
				if (!b || (a.x != b.x || a.y != b.y)) {
					display3D.graphics.moveTo(a.x, a.y);
				}
				
				b = edge3D.b.getPerspective(display3D);
				
				if (edge3D.control) {
					display3D.graphics.curveTo(control.x, control.y, b.x, b.y);
				} else {
					display3D.graphics.lineTo(b.x, b.y);
				}
			}
			
			display3D.graphics.endFill();
		}
		
		public override function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			for each (var edge3D:Edge3D in renderBuffer3D) {
				edge3D.rotate(xAngle, yAngle, zAngle);
			}
		}
		
		public override function scale(xScale:Number = 1, yScale:Number = 1, zScale:Number = 1):void {
			for each (var edge3D:Edge3D in renderBuffer3D) {
				edge3D.scale(xScale, yScale, zScale);
			}
		}
		
		public override function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			for each (var edge3D:Edge3D in renderBuffer3D) {
				edge3D.transpose(xTranspose, yTranspose, zTranspose);
			}
		}
		
		public override function getRenderBuffer3D():RenderBuffer3D {
			return renderBuffer3D;
		}
		
		public override function setAlpha(alpha:Number=1):void {
			this.alpha = alpha;
		}
		
		public override function setColor(color:uint):void {
			this.color = color;
		}
		
		public override function setAxis(axis:Axis3D):void {
			for each (var edge3D:Edge3D in renderBuffer3D) {
				edge3D.setAxis(axis);
			}
		}
		
		private var renderBuffer3D:RenderBuffer3D = new RenderBuffer3D();

		public var color:uint = 0x000000;
		public var alpha:Number = 1;

	}
	
}