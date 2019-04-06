package My3D {
	
	import mx.collections.ArrayCollection;
	
	public class Matrix3D {
		
		public function Matrix3D() {
			var i:uint;
			var row:uint;
			var column:uint;
			
			// init the array's cells.
			for (i = 0; i < 16; i++) {
				matrixCells.addItem(0);
			}
			
			// make default matrix the identity matrix
			for (row = 0; row < 4; row++) {
				for (column = 0; column < 4; column++) {
					if (row == column) {
						setValueAt(row, column, 1);
					}
				}	
			}
		}
		
		public function setValueAt(row:uint, column:uint, value:Number):void {
			matrixCells.setItemAt(value, row * 4 + column);
		}
		
		public function getValueAt(row:uint, column:uint):Number {
			return (Number)(matrixCells.getItemAt(row * 4 + column));
		}
		
		public function applyMatrix3D(matrix3D:Matrix3D):void {
			var i:uint = 0;
			var j:uint = 0;
			
			for (i = 0; i < 4; i++) {
				for (j = 0; j < 4; j++) {
					
				}
			}
		}
		
		private var matrixCells:ArrayCollection = new ArrayCollection();

	}
	
}