# penabella_mobprog

A new Flutter project.

[DISCUSSION QUESTION 1]:
Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.

First, I integrated a boolean that applies dynamic image setting. With bool hasImage, it sets a clean post with no image space if is set to false. If true, it fetches the image's path from the newsfeed_screen.dart the places it below its post's description. 

[DISCUSSION QUESTION 2]:
How you manage to do the posts and the notification efficiently. Also, how you’ve accomplished the enhancement states the challenges and how you address them.

Through the "notification_widget" and "newfeed_card" allows creating multiple posts efficiently. They are the template, while the "newsfeed_screen" and "notification_screen" are its content. By creating another NewsFeedCard or NotificationWidget, placing their different data using a single object, they efficiently creates multiple posts with the same template. I've accomplished the enhancement states by simply modifying the dedicated files like constants, newsfeed_card for its date, image placeholder, and its number values like its likes, then the dynamic AppBar title by creating an array of titles based on its page value, the BottomNavigationBar is modified by adding new items like notification and user and linking them to their proper routes and screens, then the rest like app name and color palettes are changed by simply changing its varaibles' value.