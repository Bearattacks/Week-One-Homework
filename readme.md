# Week One Homework
[✓] Add a container view and modify properties: backgroundColor, cornerRadius, font, textColor, shadowOffset.
[-] Add buttons with different images for default and highlighted. (I was doing this programmatically, and I don’t think I’m doing this right. I do know how to do this with a XIB). 
[✓] Add UIImageViews and choose the right mode: aspect fill, aspect fit, etc.
[✓] Add a UITextField with a background image.
[✓] Add UILabels with attributed text (instead of plain text), so that you can bold individual words.
[-] Setup CocoaPods for managing 3rd party libraries and use TTTAttributedLabel to style the link and make it clickable. 

[] Optional: Move the textfield when the keyboard appears (so close!)
[] Optional: Configure the autoresizingMasks to support rotation
[] Optional: Implement the same page programatically without using Interface Builder

### Notes
* I did everything programmatically rather than using a XIB. This made some things pretty hard for me at first.
* I also used a scrollview, I wanted to try it out if that’s okay.
* I got really hung up on manually implementing attributedText, but I eventually found a  way to do it using ranges.
* Cocoapods was bugging out for me, I wasn’t able to get TTAttributed Label to style the link and make it clickable. I’ve been searching for similar issues and I haven’t found anything. I also tried rolling back a couple versions, but things have gotten really messed up. This is a little over my head.
* I couldn’t get the comment UIView to respond to keyboard height. I think there might have been some hierarchy issues that kept me from accessing the comment box UIView I had. 
