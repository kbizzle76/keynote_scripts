(*
A program that shuffles Keynote slides using Fisher Yates (https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle)
Author: Ken Britton @k_britton
*)

tell application "Keynote"
	activate
	
	tell front document
		
		set _x to 1
		set slideCount to count of slides
		
		-- shuffle the slides
		repeat slideCount times
			set _x to random number from 1 to slideCount
			move (slide _x) to after last slide
			set slideCount to (slideCount - 1)
		end repeat
		
		-- Move focus to slide 1
		set its current slide to item 1 of slides
	end tell
	
end tell