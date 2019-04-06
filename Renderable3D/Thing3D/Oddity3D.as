package My3D.Renderable3D.Thing3D {
	
	import My3D.Geometry3D.*;
	import My3D.Renderable3D.Primitive3D.*;
	
	public class Oddity3D
	extends Thing3D {
		
		public function Oddity3D(width:Number, height:Number, depth:Number) {
			
			var edgeColor:uint = 0;
			var edgeThickness:Number = 1;
			var edgeAlpha:Number = 0;
			var axis:Axis3D = new Axis3D();
			
			var surfaceAlpha:Number = 1;
			
			var s:Surface3D = new Surface3D(0x0000FF, surfaceAlpha);
			
			var e1:Edge3D = new Edge3D(new Point3D(-(width / 3), (height / 3), -(depth / 2)), new Point3D((width / 3), (height / 3), -(depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			var e2:Edge3D = new Edge3D(new Point3D((width / 3), (height / 3), -(depth / 2)), new Point3D((width / 3), -(height / 3), -(depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			var e3:Edge3D = new Edge3D(new Point3D((width / 3), -(height / 3), -(depth / 2)), new Point3D(-(width / 3), -(height / 3), -(depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			var e4:Edge3D = new Edge3D(new Point3D(-(width / 3), -(height / 3), -(depth / 2)), new Point3D(-(width / 3), (height / 3), -(depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			s = new Surface3D(0xFF0000, surfaceAlpha);
			
			e1 = new Edge3D(new Point3D(-(width / 3), (height / 3), (depth / 2)), new Point3D((width / 3), (height / 3), (depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e2 = new Edge3D(new Point3D((width / 3), (height / 3), (depth / 2)), new Point3D((width / 3), -(height / 3), (depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e3 = new Edge3D(new Point3D((width / 3), -(height / 3), (depth / 2)), new Point3D(-(width / 3), -(height / 3), (depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e4 = new Edge3D(new Point3D(-(width / 3), -(height / 3), (depth / 2)), new Point3D(-(width / 3), (height / 3), (depth / 2)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			s = new Surface3D(0x00FF00, surfaceAlpha);
			
			e1 = new Edge3D(new Point3D((width / 2), (height / 3), -(depth / 3)), new Point3D((width / 2), (height / 3), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e2 = new Edge3D(new Point3D((width / 2), (height / 3), (depth / 3)), new Point3D((width / 2), -(height / 3), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e3 = new Edge3D(new Point3D((width / 2), -(height / 3), (depth / 3)), new Point3D((width / 2), -(height / 3), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e4 = new Edge3D(new Point3D((width / 2), -(height / 3), -(depth / 3)), new Point3D((width / 2), (height / 3), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			s = new Surface3D(0xFFFF00, surfaceAlpha);
			
			e1 = new Edge3D(new Point3D(-(width / 2), (height / 3), -(depth / 3)), new Point3D(-(width / 2), (height / 3), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e2 = new Edge3D(new Point3D(-(width / 2), (height / 3), (depth / 3)), new Point3D(-(width / 2), -(height / 3), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e3 = new Edge3D(new Point3D(-(width / 2), -(height / 3), (depth / 3)), new Point3D(-(width / 2), -(height / 3), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e4 = new Edge3D(new Point3D(-(width / 2), -(height / 3), -(depth / 3)), new Point3D(-(width / 2), (height / 3), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			s = new Surface3D(0x00FFFF, surfaceAlpha);
			
			e1 = new Edge3D(new Point3D((width / 3), (height / 2), -(depth / 3)), new Point3D((width / 3), (height / 2), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e2 = new Edge3D(new Point3D((width / 3), (height / 2), (depth / 3)), new Point3D(-(width / 3), (height / 2), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e3 = new Edge3D(new Point3D(-(width / 3), (height / 2), (depth / 3)), new Point3D(-(width / 3), (height / 2), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e4 = new Edge3D(new Point3D(-(width / 3), (height / 2), -(depth / 3)), new Point3D((width / 3), (height / 2), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			s = new Surface3D(0xFF00FF, surfaceAlpha);
			
			e1 = new Edge3D(new Point3D((width / 3), -(height / 2), -(depth / 3)), new Point3D((width / 3), -(height / 2), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e2 = new Edge3D(new Point3D((width / 3), -(height / 2), (depth / 3)), new Point3D(-(width / 3), -(height / 2), (depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e3 = new Edge3D(new Point3D(-(width / 3), -(height / 2), (depth / 3)), new Point3D(-(width / 3), -(height / 2), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			e4 = new Edge3D(new Point3D(-(width / 3), -(height / 2), -(depth / 3)), new Point3D((width / 3), -(height / 2), -(depth / 3)), null, axis, edgeThickness, edgeColor, edgeAlpha);
			
			s.addEdge3D(e1);
			s.addEdge3D(e2);
			s.addEdge3D(e3);
			s.addEdge3D(e4);
			
			addRenderable3D(s);
			
			var eColor:uint = 0xffffff;
			var eAlpha:Number = 1;
			var eThickness:Number = 2;
			
			addRenderable3D(new Edge3D(new Point3D(-(width / 2), 0, 0), new Point3D((width / 2), 0, 0), null, axis, eThickness, eColor, eAlpha));
			addRenderable3D(new Edge3D(new Point3D(0, -(height / 2), 0), new Point3D(0, (height / 2), 0), null, axis, eThickness, eColor, eAlpha));
			addRenderable3D(new Edge3D(new Point3D(0, 0, -(depth / 2)), new Point3D(0, 0, (depth / 2)), null, axis, eThickness, eColor, eAlpha));
			
		}

	}
}