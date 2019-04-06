package My3D.Renderable3D.Thing3D {
	
	import My3D.Geometry3D.*;
	import My3D.Renderable3D.Primitive3D.*;
	
	public class Scribble3D
	extends Thing3D {
		
		public function Scribble3D(width:Number, height:Number, depth:Number) {
			
			var max:Number = (width + height + depth) / 3;
			var min:Number = -max;
			var range:Number = max - min;
			var maxLines:Number = 10;
			var maxThickness:Number = 5;
			
			
			for (var j:uint = 0; j < 5; j++) {
				//var s:Surface3D = new Surface3D(Math.random() * Math.pow(2, 32), Math.random());
				
				for (var i:uint = 0; i < 1; i++) {
					/*
					s.addEdge3D(new Edge3D(new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Axis3D(),
											Math.random() * maxThickness,
											Math.random() * Math.pow(2, 32),
											Math.random()));
				*/
					addRenderable3D(new Edge3D(new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Point3D(Math.random() * range + min, Math.random() * range + min, Math.random() * range + min),
											new Axis3D(),
											Math.random() * maxThickness,
											Math.random() * Math.pow(2, 32),
											Math.random()));
				}
			
				//addRenderable3D(s);
			}
		}
		
	}
}