(*
A program that Keynote slide images to full height 
Author: Ken Britton @k_britton
*)

set defaultSlideWidth to 1920
set deafultSlideHeight to 1080

tell application "Keynote"
	activate
	
	tell front document
		
		-- resize and center all the images
		repeat with theSlide in slides
			tell theSlide
				repeat with theImage in images
					tell theImage
						set height of it to deafultSlideHeight
						set w to its width
						set the position of it to {((defaultSlideWidth - width) div 2), 0}
					end tell
				end repeat
			end tell
		end repeat
		
		-- Move focus to slide 1
		set its current slide to item 1 of slides
	end tell
	
end tell