package My3D.Renderable3D.Thing3D {
	
	import My3D.Geometry3D.*;
	import My3D.Renderable3D.Primitive3D.*;
	
	public class Gangleon3D
	extends Thing3D {
		
		public function Gangleon3D(width:Number, height:Number, depth:Number) {
			// Testing...
			var alpha:Number = 0.9;
			var surface3D:Surface3D;
			
			surface3D = new Surface3D(0xFF0000, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
			
			surface3D = new Surface3D(0x00FF00, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
			
			surface3D = new Surface3D(0x0000FF, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
			
			surface3D = new Surface3D(0xFFFF00, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
			
			surface3D = new Surface3D(0x00FFFF, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), -(depth / 2)), new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), (height / 2), (depth / 2)), new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), (height / 2), (depth / 2)), new Point3D(-(width / 2), (height / 2), -(depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
			
			surface3D = new Surface3D(0xFF00FF, alpha);
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), -(depth / 2)), new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D((width / 2), -(height / 2), (depth / 2)), new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D()));
			surface3D.addEdge3D(new Edge3D(new Point3D(-(width / 2), -(height / 2), (depth / 2)), new Point3D(-(width / 2), -(height / 2), -(depth / 2)), new Point3D()));
			
			addRenderable3D(surface3D);
		}
		
	}
	
}