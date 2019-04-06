package My3D.Renderable3D.Thing3D
{
	import My3D.Geometry3D.Point3D;
	import My3D.Renderable3D.Primitive3D.Edge3D;
	
	
	
	public class Pyramid3D
	extends Thing3D
	{
		public function Pyramid3D(w:Number, h:Number, d:Number)
		{
			
			addRenderable3D(new Edge3D(new Point3D(0, h / 2, 0), new Point3D(- w / 2, - h / 2, - d /2)));
			addRenderable3D(new Edge3D(new Point3D(0, h/2, 0), new Point3D(-w/2, -h/2, d/2)));
			addRenderable3D(new Edge3D(new Point3D(0, h/2,0), new Point3D(w/2, -h/2, 0)));
			
			addRenderable3D(new Edge3D(new Point3D(-w/2,-h/2,-d/2), new Point3D(-w/2, -h/2, d/2)));
			addRenderable3D(new Edge3D(new Point3D(-w/2,-h/2, d/2), new Point3D(w/2, -h/2, 0)));
			addRenderable3D(new Edge3D(new Point3D(w/2,-h/2, 0), new Point3D(-w/2, -h/2,-d/2)));
			
		}

	}
}