package My3D.Geometry3D {
	
	import mx.containers.Canvas;
	import My3D.*;
	
	public class Point3D {
		
		public function Point3D(x:Number = 0, y:Number = 0, z:Number = 0, axis:Axis3D = null) {
			this.x = x;
			this.y = y;
			this.z = z;
			
			if (axis) {
				this.axis = axis;
			}
			
			modify();
		}
		
		public function getZOrder():Number {
			return zModified;
		}
		
		public function getPerspective(display3D:Display3D):Point3D {
			// Return the projected 3D pixel, and store z-order as z...
			return new Point3D((Global3D.FOCAL_DISTANCE * xModified / (zModified + Global3D.FOCAL_DISTANCE)) + display3D.width / 2,
								(Global3D.FOCAL_DISTANCE * yModified / (zModified + Global3D.FOCAL_DISTANCE)) + display3D.height / 2,
								z);
		}
		
		private function modify():void {
			// Do not modify original coordinates!
			xModified = x;
			yModified = y;
			zModified = z;
			
			// Do not modify original angles!
			var xAngle:Number = this.xAngle;
			var yAngle:Number = this.yAngle;
			var zAngle:Number = this.zAngle;
			
			// Change the angles from degrees to radians...
			xAngle = (xAngle % 360) * Math.PI / 180;
			yAngle = (yAngle % 360) * Math.PI / 180;
			zAngle = (zAngle % 360) * Math.PI / 180;
			
			// Transpose...
			xModified += xTranspose;
			yModified -= yTranspose;   //< The y value is inverted due to canvas's coordination system.
			zModified += zTranspose;
			
			// Trace to axis'...
			xModified -= axis.xAxis;
			yModified -= axis.yAxis;
			zModified -= axis.zAxis;
			
			// Some temporary variables for rotating...
			var xTemporary:Number = xModified;
			var yTemporary:Number = yModified;
			var zTemporary:Number = zModified;
			
			// Rotate x...
			yModified = yTemporary * Math.cos(xAngle) + zTemporary * -Math.sin(xAngle);
			zModified = yTemporary * Math.sin(xAngle) + zTemporary * Math.cos(xAngle);
			
			// Reset temporaries...
			xTemporary = xModified;
			yTemporary = yModified;
			zTemporary = zModified;
			
			// Rotate y...
			xModified = xTemporary * Math.cos(yAngle) + zTemporary * Math.sin(yAngle);
			zModified = xTemporary * -Math.sin(yAngle) + zTemporary * Math.cos(yAngle);
			
			// Reset temporaries...
			xTemporary = xModified;
			yTemporary = yModified;
			zTemporary = zModified;
			
			// Rotate z...
			xModified = xTemporary * Math.cos(zAngle) + yTemporary * -Math.sin(zAngle);
			yModified = xTemporary * Math.sin(zAngle) + yTemporary * Math.cos(zAngle);
			
			// Trace from axis'...
			xModified += axis.xAxis;
			yModified += axis.yAxis;
			zModified += axis.zAxis;
			
			// Scale...
			xModified *= xScale;
			yModified *= yScale;
			zModified *= zScale;
		}
		
		public function rotate(xAngle:Number = 0, yAngle:Number = 0, zAngle:Number = 0):void {
			this.xAngle = xAngle;
			this.yAngle = yAngle;
			this.zAngle = zAngle;
			
			modify();
		}
		
		public function scale(xScale:Number = 1, yScale:Number = 1, zScale:Number = 1):void {
			this.xScale = xScale;
			this.yScale = yScale;
			this.zScale = zScale;
			
			modify();
		}
		
		public function transpose(xTranspose:Number = 0, yTranspose:Number = 0, zTranspose:Number = 0):void {
			this.xTranspose = xTranspose;
			this.yTranspose = yTranspose;
			this.zTranspose = zTranspose;
			
			modify();
		}

		// The three original coordinates.
		public var x:Number = 0;
		public var y:Number = 0;
		public var z:Number = 0;
		
		// The three modified coordinates.
		private var xModified:Number = 0;
		private var yModified:Number = 0;
		private var zModified:Number = 0;
		
		// The rotational axis.
		public var axis:Axis3D = new Axis3D();
		
		// The rotation angles (in degrees).
		public var xAngle:Number = 0;
		public var yAngle:Number = 0;
		public var zAngle:Number = 0;
		
		// The scale values.
		public var xScale:Number = 1;
		public var yScale:Number = 1;
		public var zScale:Number = 1;
		
		// The transpositioning values.
		public var xTranspose:Number = 0;
		public var yTranspose:Number = 0;
		public var zTranspose:Number = 0;

	}
	
}