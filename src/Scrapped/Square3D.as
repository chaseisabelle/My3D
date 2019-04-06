package My3D {
	
	import mx.containers.Canvas;
	
	public class Square3D
	extends Shape3D {
		
		public function Square3D(area:Number, 
									axis:Axis3D = null, 
									color:uint = 0x000000,
									thickness:Number = 1,
									alpha:Number = 1) {
			addEdge3D(new Edge3D(new Point3D(-(Math.sqrt(area) / 2), Math.sqrt(area) / 2, 0),
									new Point3D(Math.sqrt(area) / 2, Math.sqrt(area) / 2, 0),
									null,
									axis,
									thickness, 
									color, 
									alpha));
			addEdge3D(new Edge3D(new Point3D(Math.sqrt(area) / 2, Math.sqrt(area) / 2, 0), 
									new Point3D(Math.sqrt(area) / 2, -(Math.sqrt(area) / 2), 0),
									null,
									axis, 
									thickness, 
									color, 
									alpha));
			addEdge3D(new Edge3D(new Point3D(Math.sqrt(area) / 2, -(Math.sqrt(area) / 2), 0), 
									new Point3D(-(Math.sqrt(area) / 2), -(Math.sqrt(area) / 2)),
									null, 
									axis,
									thickness, 
									color, 
									alpha));
			addEdge3D(new Edge3D(new Point3D(-(Math.sqrt(area) / 2), -(Math.sqrt(area) / 2), 0), 
									new Point3D(-(Math.sqrt(area) / 2), Math.sqrt(area) / 2, 0),
									null, 
									axis,
									thickness, 
									color, 
									alpha));
		}

	}

}