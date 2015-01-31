package framework.pool
{
	import flash.geom.Rectangle;

	public class PoolManager
	{
		private var _rectanglePool:RectanglePool;

		public function init():void
		{
			_rectanglePool = new RectanglePool();
		}

		public function dispose():void
		{
			_rectanglePool = null;
		}

		public function allocateRectangle():Rectangle
		{
			if (_rectanglePool && _rectanglePool.size > 0)
			{
				return _rectanglePool.pop();
			}
		}

		public function releaseRectangle(rect:Rectangle):void
		{
			if (_rectanglePool)
			{
				_rectanglePool.push(rect);
			}
		}
	}
}
