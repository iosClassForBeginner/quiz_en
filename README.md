# Full procedure

## 1, Create Project

* Open Xcode  
* Select "Create a new Xcode project"  
* Select "Single View Application" and then tap "Next"  
* Fill "Product name" and then tap "Next"  
* Select the place for saving your project and then tap "Create"  

## 2, Import Assets

We need 2 icons. Please download [watch](https://github.com/iosClassForBeginner/quiz_en/blob/master/quiz_en/Assets.xcassets/watch.imageset/watch.png) and [trophy](https://github.com/iosClassForBeginner/quiz_en/blob/master/quiz_en/Assets.xcassets/trophy.imageset/trophy.png) icon from the links. You can import them to the project.

  * <details><summary>You don't know how to import them? Check this out!</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/assets.gif" /></div></details>

## 3, Design App

You complete project setup. Good job! Now we can work on front side. Please select `Main.storyboard`. This file help us  design the app a lot. Let's work on this.

* 3-1. Let's add Navigation  
  * We need a navigation for the screen transitions  
  * To add navigation, `Editor->Embed In->Navigation Controller` so that you can add navigation to the root
  * <details><summary>How to add navigation</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/navigation.gif" /></div></details>

* 3-2. Let's add image view  
  * Select `UIImageView` component from the utility area. Drag & drop to the board.  
  * <details><summary>How to add image view</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/image-add.gif" /></div></details>

* 3-3. Resize it  
  * You can tap the edge of the `UIImageView` so that you can resize it. Or you can sepcify the size in the utility area.  
  * <details><summary>How to resize the image view</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/image-resize.gif" /></div></details>

* 3-4. Set Autoresizing for adjusting all device size
  * We need to adjust to all device size from iPhone to iPad. Easiest way is setting autoresizing.  
  * <details><summary>How to set autoresizing</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/image-autoresize.gif" /></div></details>

* 3-5. You can add `UIButton` exactory same with image view
  * <details><summary>How to add button</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-add.gif" /></div></details>
  * <details><summary>Resize it</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-resize.gif" /></div></details>
  * <details><summary>Set autoresizing</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-autoresize.gif" /></div></details>

* 3-6. Add `UIViewController`
  * We need to 2 more screens which are showing `Quiz` and `Result`.
  * Select `UIViewController` component from utility area.
  * Drag & drop to the board
  * <details><summary>How to add view controller</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/uiviewcontroller-add.gif" /></div></details>

## 4, Create Segue
 
 ★  control + drag in storyboard to create a control segue
> <details><summary>{your-comment}</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/{asset-name.gif}" /></div></details>

## 5, Add logic

★ It's preferable to write following code yourself. It will help you to understand code more.

```Swift  

```
