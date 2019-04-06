package My3D.Renderable3D {
	
	import My3D.*;
	import My3D.Renderable3D.Primitive3D.*;
	
	import mx.collections.ArrayCollection;
	
	public class RenderBuffer3D
	extends ArrayCollection {
		
		public function RenderBuffer3D() {
			// Empty body.
		}
		
		public function getLength():uint {
			return length;
		}
		
		public function getRenderable3DAt(index:uint):Renderable3D {
			return (Renderable3D)(getItemAt(index));
		}
		
		public function addRenderable3D(renderable3D:Renderable3D):void {
			// Add the renderable itself...
			if (!contains(renderable3D)) {
				addItem(renderable3D);
			}
			
			// Each Renderable3D has a RenderBuffer3D of all it's Renderable3D's
			// SO:  I need to add each of all of those Renderable3D's to this
			// RenderBuffer3D...
			for each (var renderable3DTemporary:Renderable3D in renderable3D.getRenderBuffer3D()) {
				if (renderable3DTemporary is Primitive3D && !contains(renderable3DTemporary)) {
					addItem(renderable3DTemporary);
				} else {
					if (!contains(renderable3DTemporary)) {
						addRenderable3D(renderable3DTemporary);
					}
				}
			}
		}
		
		public function removeRenderable3D(renderable3D:Renderable3D):void {
			// Remove the renderable3D...
			if (contains(renderable3D)) {
				removeItemAt(getItemIndex(renderable3D));
			}
			
			// Remove all the Renderable3Ds that renderable3D is comprised of...
			for each (var renderable3DTemporary:Renderable3D in renderable3D.getRenderBuffer3D()) {
				if (renderable3DTemporary is Primitive3D && contains(renderable3DTemporary)) {
					removeItemAt(getItemIndex(renderable3DTemporary));
				} else {
					removeRenderable3D(renderable3DTemporary);
				}
			}
		}
		
		public function render(display3D:Display3D):void {
			var sortedArrayCollection:ArrayCollection = new ArrayCollection();
			var renderable3D:Renderable3D = null;
			
			// Sort all the renderables according to their current z-order...
			// REMINDER:  This sorting algorithm SUCKS!  Make a better one when
			// you get free moment.  This is like insertion-sort's half-whit
			// cousin.  Get rid of it!
			for each (renderable3D in this) {
				if (sortedArrayCollection.length == 0) {
					sortedArrayCollection.addItem(renderable3D);
				} else {
					for each (var r:Renderable3D in sortedArrayCollection) {
						if (r.getZOrder() <= renderable3D.getZOrder()) {
							sortedArrayCollection.addItemAt(renderable3D, sortedArrayCollection.getItemIndex(r));
							break;
						}
					}
					
					if (!sortedArrayCollection.contains(renderable3D)) {
						sortedArrayCollection.addItemAt(renderable3D, sortedArrayCollection.length);
					}
				}
			}
			/*
			// Testing...
			// Remove the renderables with outside z orders...
			// This peice still could use a wee bit o' work, as well!
			for each (renderable3D in  sortedArrayCollection) {
				if (renderable3D.getZOrder() <= -Global3D.FOCAL_DISTANCE) {
					sortedArrayCollection.removeItemAt(sortedArrayCollection.getItemIndex(renderable3D));
				}
			}
			*/
			// Finally comes the actual rendering...
			for each (renderable3D in sortedArrayCollection) {
				renderable3D.render(display3D);
			}
		}

	}
	
}