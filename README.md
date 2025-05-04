# Prework - *ChromaFlow*

Submitted by: **Daniel Voyevoda**

**ChromaFlow** is an app that features a dynamic, full-screen gradient background that animates between randomly generated color pairs with smooth transitions. Each gradient uses vibrant hues and a randomly chosen diagonal direction, creating a visually engaging and modern aesthetic. Implemented with CAGradientLayer, the background adapts to layout changes and is triggered both on launch and via a button, delivering a polished and interactive UI experience. 

Time spent: **2** hours spent in total

## Required Features

The following **required** functionality is completed:

- [✅] Users are see a screen with three labels and a button
- [✅] Tapping the button changes the screen color to a random color
 
## Video Walkthrough

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 

[Guide]](https://www.youtube.com/watch?v=GA92eKlYio4) .

## App Brainstorming (Step 4)

**Tesla**
- UI is very clean and simple, with the most important functionalities shown immediately at the top of the screen
- Has a 3D render of my car that runs smoothly with car doors opening or closing synced to my actual car

**Apple Mail**
- Easy refresh feature by just swiping down
- Convenient swiping left or right on email to mark as read or delete

**Snapchat**
- Opening the app immediately brings me to the camera functionality so I can quickly take pictures or videos
- Swiping left or right to access different menus adds a method of convenience and intuitiveness 

**NEW APP IDEA: IronRank**

This is a gym app that turns your fitness journey into a competitive and social experience. Users earn ranks based on their lifting stats and workout consistency, climbing local leaderboards tied to specific gyms. You can add friends, follow their progress, and build a profile that highlights your best verified lifts through video. To keep things fair and legit, each submission is reviewed by moderators before appearing on the official leaderboards. It’s part training log, part social hub, and part competition—all in one.

## Notes

Describe any challenges encountered while building the app.

When implementing the animated gradient background, I encountered a few challenges along the way. Initially, the gradient wouldn’t appear correctly because the layer’s frame was set before the view had fully loaded, requiring adjustments in the lifecycle methods. I also ran into runtime crashes due to accessing the gradient layer before initializing it, highlighting the importance of careful setup. Another tricky part was ensuring the animation didn’t stack layers on repeated button taps, which I resolved by removing old layers each time. Additionally, keeping the gradient responsive to device rotations and layout changes required implementing code in viewDidLayoutSubviews. Lastly, I had to double-check storyboard connections since the button wasn’t triggering the animation at first, reinforcing the need for careful integration between the UI and code.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
