package {
	
	import My3D.Geometry3D.Axis3D;
	import My3D.Renderable3D.Thing3D.*;
	
	public class Object3D {
		
		public function Object3D(name:String, shape:String) {
			setName(name);
			setShape(shape);
		}
		
		public function toString():String {
			return getName();
		}
		
		public function getName():String {
			return name;
		}
		
		public function setName(name:String):void {
			this.name = name;
		}
		
		public function getShape():String {
			return shape;
		}
		
		public function setShape(shape:String):void {
			if (thing3D) {
				Main.instance.display3D.removeRenderable3D(thing3D);
			}
			
			switch (shape) {
				case CUBE:
					thing3D = new Cube3D(getWidth(), getHeight(), getLength());
					break;
				
				case ODDITY:
					thing3D = new Oddity3D(getWidth(), getHeight(), getLength());
					break;
				
				case SCRIBBLE:
					thing3D = new Scribble3D(getWidth(), getHeight(), getLength());
					break;
					
				case GANGLEON:
					thing3D = new Gangleon3D(getWidth(), getHeight(), getLength());
					break;
					
				case PYRAMID:
					thing3D = new Pyramid3D(getWidth(), getHeight(), getLength());
					break;
					
				default:
					thing3D = null;
					xRotated = yRotated = zRotated = 0;
			}
			
			if (thing3D) {
				thing3D.setAxis(axis);
				thing3D.rotate(xRotated, yRotated, zRotated);
				thing3D.transpose(getXTranspose(), getYTranspose(), getZTranspose());
				thing3D.scale(getXScale(), getYScale(), getZScale());
				
				Main.instance.display3D.addRenderable3D(thing3D);
			}
			
			this.shape = shape;
		}
		
		public function getThing3D():Thing3D {
			return thing3D;
		}
		
		public function getWidth():Number {
			return width;
		}
		
		public function setWidth(width:Number):void {
			this.width = width;
			
			setShape(getShape());
		}
		
		public function getHeight():Number {
			return height;
		}
		
		public function setHeight(height:Number):void {
			this.height = height;
			
			setShape(getShape());
		}
		
		public function getLength():Number {
			return length;
		}
		
		public function setLength(length:Number):void {
			this.length = length;
			
			setShape(getShape());
		}
		
		public function getAxis():Axis3D {
			return axis;
		}
		
		public function setAxis(axis:Axis3D):void {
			if (!thing3D) {
				return;
			}
			
			getThing3D().setAxis(axis);
			
			this.axis = axis;
		}
		
		public function getXRotate():Number {
			return xRotate;
		}
		
		public function setXRotate(xRotate:Number):void {
			this.xRotate = xRotate;
		}
		
		public function getYRotate():Number {
			return yRotate;
		}
		
		public function setYRotate(yRotate:Number):void {
			this.yRotate = yRotate;
		}
		
		public function getZRotate():Number {
			return zRotate;
		}
		
		public function setZRotate(zRotate:Number):void {
			this.zRotate = zRotate;
		}
		
		public function getXTranspose():Number {
			return xTranspose;
		}
		
		public function setXTranspose(xTranspose:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().transpose(xTranspose, getYTranspose(), getZTranspose());
			
			this.xTranspose = xTranspose;
		}
		
		public function getYTranspose():Number {
			return yTranspose;
		}
		
		public function setYTranspose(yTranspose:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().transpose(getXTranspose(), yTranspose, getZTranspose());
			
			this.yTranspose = yTranspose;
		}
		
		public function getZTranspose():Number {
			return zTranspose;
		}
		
		public function setZTranspose(zTranspose:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().transpose(getXTranspose(), getYTranspose(), zTranspose);
			
			this.zTranspose = zTranspose;
		}
		
		public function getXScale():Number {
			return xScale;
		}
		
		public function setXScale(xScale:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().scale(xScale, getYScale(), getZScale());
			
			this.xScale = xScale;
		}
		
		public function getYScale():Number {
			return yScale;
		}
		
		public function setYScale(yScale:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().scale(getXScale(), yScale, getZScale());
			
			this.yScale = yScale;
		}
		
		public function getZScale():Number {
			return zScale;
		}
		
		public function setZScale(zScale:Number):void {
			if (!getThing3D()) {
				return;
			}
			
			getThing3D().scale(getXScale(), getYScale(), zScale);
			
			this.zScale = zScale;
		}
		
		public function enterFrame():void {
			if (!getThing3D()) {
				return;
			}
			
			xRotated = (xRotated + getXRotate()) % 360;
			yRotated = (yRotated + getYRotate()) % 360;
			zRotated = (zRotated + getZRotate()) % 360;
			
			getThing3D().rotate(xRotated, yRotated, zRotated);
		}
		
		public var name:String = "";
		
		private var thing3D:Thing3D = null;
		
		private var width:Number = 0;
		private var height:Number = 0;
		private var length:Number = 0;
		
		private var axis:Axis3D = new Axis3D();
		
		private var xRotate:Number = 0;
		private var yRotate:Number = 0;
		private var zRotate:Number = 0;
		
		private var xTranspose:Number = 0;
		private var yTranspose:Number = 0;
		private var zTranspose:Number = 0;
		
		private var xScale:Number = 1;
		private var yScale:Number = 1;
		private var zScale:Number = 1;
		
		private var shape:String = DEFAULT;

		public static const DEFAULT:String = CUBE;
		public static const CUBE:String = "CUBE";
		public static const ODDITY:String = "ODDITY";
		public static const SCRIBBLE:String = "SCRIBBLE";
		public static const GANGLEON:String = "GANGLEON";
		public static const PYRAMID:String = "PYRAMID";
		
		private var xRotated:Number = 0;
		private var yRotated:Number = 0;
		private var zRotated:Number = 0;

	}

}