package My3D.Renderable3D.Primitive3D {
	
	import My3D.*;
	import My3D.Geometry3D.*;
	import My3D.Renderable3D.*;
	
	public class Edge3D
	extends Renderable3D
	implements Primitive3D {
		
		public function Edge3D(a:Point3D, 
								b:Point3D,
								control:Point3D = null, 
								axis:Axis3D = null,
								thickness:Number = 1,
								color:uint = 0x000000,
								alpha:Number = 1) {
			renderBuffer3D.addRenderable3D(this);
									
			this.a = a;
			this.b = b;
			
			this.control = control;
			
			this.thickness = thickness;
			this.color = color;
			this.alpha = alpha;
			
			if (axis) {
				setAxis(axis);
			}
		}
		
		public override function setAxis(axis:Axis3D):void {
			a.axis = axis
			b.axis = axis
			
			if (control) {
				control.axis = axis
			}
		}
		
		public override function getZOrder():Number {
			if (control) {
				return (a.getZOrder() + b.getZOrder() + control.getZOrder()) / 3;
			}
			
			return (a.getZOrder() + b.getZOrder()) / 2;
		}

		public override function render(display3D:Display3D):void {
			var a:Point3D = this.a.getPerspective(display3D);
			var b:Point3D = this.b.getPerspective(display3D);
			
			if (this.control) {
				var control:Point3D = this.control.getPerspective(display3D);
			}

			display3D.graphics.lineStyle(thickness, color, alpha);
			display3D.graphics.moveTo(a.x, a.y);
			
			if (this.control) {
				display3D.graphics.curveTo(control.x, control.y, b.x, b.y);
			} else {
				display3D.graphics.lineTo(b.x, b.y);
			}
		}
		
		public override function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			a.rotate(xAngle, yAngle, zAngle);
			b.rotate(xAngle, yAngle, zAngle);
			
			if (control) {
				control.rotate(xAngle, yAngle, zAngle);
			}
		}
		
		public override function scale(xScale:Number = 1, yScale:Number = 1, zScale:Number = 1):void {
			a.scale(xScale, yScale, zScale);
			b.scale(xScale, yScale, zScale);
			
			if (control) {
				control.scale(xScale, yScale, zScale);
			}
		}
		
		public override function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			a.transpose(xTranspose, yTranspose, zTranspose);
			b.transpose(xTranspose, yTranspose, zTranspose);
			
			if (control) {
				control.transpose(xTranspose, yTranspose, zTranspose);
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
		
		private var renderBuffer3D:RenderBuffer3D = new RenderBuffer3D();
		
		public var a:Point3D = new Point3D();
		public var b:Point3D = new Point3D();
		
		public var control:Point3D = new Point3D();
		
		public var thickness:Number = 1;
		public var color:uint = 0x000000;
		public var alpha:Number = 1;

	}
	
}