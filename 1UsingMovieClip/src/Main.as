package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.StageScaleMode;
	
	/**
	 * ...
	 * @author tannth
	 */
	public class Main extends Sprite
	{
		
		public function Main():void
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			var myMovieClip:Mascot = new Mascot();
				myMovieClip.x = 275;
				myMovieClip.y = 150;
				myMovieClip.rotation = 10;
				addChild(myMovieClip);
			for (var i:int = 0; i < 10; i++)
			{
				var myMovieClip:Mascot = new Mascot();
				myMovieClip.x = 50*i+50;
				myMovieClip.y = 300;
				myMovieClip.scaleX = .5;
				myMovieClip.scaleY = .5;
				addChild(myMovieClip);
			}
		
		}
	
	}

}