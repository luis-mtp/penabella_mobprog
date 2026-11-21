# penabella_mobprog

A new Flutter project.

[DISCUSSION QUESTION]:
Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.

First, I integrated a boolean that applies dynamic image setting. With bool hasImage, it sets a clean post with no image space if is set to false. If true, it fetches the image's path from the newsfeed_screen.dart the places it below its post's description. 