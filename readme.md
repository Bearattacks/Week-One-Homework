# Week One Homework
Time: 7hrs

[✓] Add a container view and modify properties: backgroundColor, cornerRadius, font, textColor, shadowOffset.

[✓] Add buttons with different images for default and highlighted.

[✓] Add UIImageViews and choose the right mode: aspect fill, aspect fit, etc.

[✓] Add a UITextField with a background image.

[✓] Add UILabels with attributed text (instead of plain text), so that you can bold individual words.

[-] Setup CocoaPods for managing 3rd party libraries and use TTTAttributedLabel to style the link and make it clickable. 

[] Optional: Move the textfield when the keyboard appears (so close!)

[] Optional: Configure the autoresizingMasks to support rotation

[✓] Optional: Implement the same page programatically without using Interface Builder.

### Notes
* I went back and attempted to do everything programmatically. Buttons were especially confusing, I probably should have stuck the XIB this week.
* I also used a scrollview, I wanted to try it out if that’s okay.
* I got really hung up on manually implementing attributedText, but I eventually found a  way to do it using ranges.
* I had issues with Cocoapods, I wasn’t able to get TTAttributed Label to style the link and make it clickable. I’ve been searching for similar issues and I haven’t found anything. I rolled back to an older version of Cocoapods, this is a bit over my head.
* I couldn’t get the comment UIView to respond to keyboard height. I think there might have been some hierarchy issues that kept me from accessing the comment box UIView I had. 
