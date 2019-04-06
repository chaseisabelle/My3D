package My3D.Renderable3D {
	
	import My3D.*;
	import My3D.Geometry3D.Axis3D;
	
	public class Renderable3D {
		
		public virtual function render(display3D:Display3D):void {
			throw error;
		}
		
		public virtual function getZOrder():Number {
			throw error;
		}
		
		public virtual function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			throw error;
		}
		
		public virtual function scale(xScale:Number = 1, yScale:Number = 1, zScale:Number = 1):void {
			throw error;
		}
		
		public virtual function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			throw error;
		}
		
		public virtual function getRenderBuffer3D():RenderBuffer3D {
			throw error;
		}
		
		public virtual function setAlpha(alpha:Number = 1):void {
			throw error;
		}
		
		public virtual function setColor(color:uint):void {
			throw error;
		}
		
		public virtual function setAxis(axis:Axis3D):void {
			throw error;
		}
		
		private static const error:Error = new Error("Renderbale3D is an abstract/virtual class.");

	}
	
}