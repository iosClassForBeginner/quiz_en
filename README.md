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

* 3-4. Set Autoresizing
  * We need to adjust to all device size from iPhone to iPad. Easiest way is setting autoresizing.  
  * <details><summary>How to set autoresizing</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/image-autoresize.gif" /></div></details>

* 3-5. Add `UIButton` exactory same way adding image view
  * <details><summary>How to add button</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-add.gif" /></div></details>
  * <details><summary>Resize it</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-resize.gif" /></div></details>
  * <details><summary>Set autoresizing</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/button-autoresize.gif" /></div></details>

* 3-6. Add `UIViewController`
  * We need to 2 more screens which are showing `Quiz` and `Result`.
  * Select `UIViewController` component from utility area.
  * Drag & drop to the board
  * <details><summary>How to add view controller</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/uiviewcontroller-add.gif" /></div></details>

* 3-7. Design quiz & result Screens  
  * Youe storyboard may looks like this? Great!
  * <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/ui-complete.png" width="50%" height="50%"/></div>  

## 4, Connect class to storyboard

* 4-1. Add `UIViewController` class  
  * We added 2 screens. We need 2 `UIVewController` classes collesponding the screens
  * Add new class from menu or `command + N`
  * One is `QuizViewController` subclass of `UIViewController`, Another is `ResultViewController`.
  * <details><summary>How to add UIViewController class</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/class-add-viewcontroller.gif" /></div></details>
 
* 4-2. Connect `UIViewController` class to the storyboard  
  * We need to connect the UIViewController classes to the storyboard
  * Add `class name` and `storyboard ID`. `QuiziViewController` and `ResultViewController` both
  * Go to `main.storyboard`
  * <details><summary>How to connect UIViewController class to the storyboard</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/class-connect-storyboard.gif" /></div></details>
 
* 4-3. Create segue
  * We need to connect UI components to the class. i.e. Button action should be triguered after tapped
  * To connect components to class, let's create segue.
  * `control + drag in storyboard` to create a segue
  * We can see 2 type of segue. `Outlet` and `Action`
  * `Outlet` is the component itself.
  * `Action` is action trigger
  * <details><summary>How to create segue</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/quiz_en/blob/master/demos/tutorial/class-connect-button-action.gif" /></div></details>

## 5, Add logic

You complete the UI. Great job! Last section is coding part for adding logic. 

* UIViewContoller

```Swift
import UIKit

class HomeViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tappedStart(_ sender: Any) {
    let next = storyboard!.instantiateViewController(withIdentifier: "QuizViewController")
    navigationController?.pushViewController(next, animated: true)
  }
}
```

* QuizViewContoller

```Swift
import UIKit

class QuizViewController: UIViewController {
  
  let quiz = QuizManager.shared.getQuiz()
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var coiceButton1: UIButton!
  @IBOutlet weak var coiceButton2: UIButton!
  @IBOutlet weak var coiceButton3: UIButton!
  @IBOutlet weak var coiceButton4: UIButton!
  @IBOutlet weak var incollectLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    incollectLabel.isHidden = true
    navigationItem.hidesBackButton = true
    
    questionLabel.text = quiz["quiz"]
    coiceButton1.setTitle(quiz["choice_1"], for: .normal)
    coiceButton2.setTitle(quiz["choice_2"], for: .normal)
    coiceButton3.setTitle(quiz["choice_3"], for: .normal)
    coiceButton4.setTitle(quiz["choice_4"], for: .normal)
  }
  
  @IBAction func tappedAnswer(_ sender: UIButton) {
    
    if quiz["answer"] != sender.titleLabel?.text {
      incollectLabel.isHidden = false
      return
    }
    
    let isExisting = QuizManager.shared.existNextQuiz()
    let next = isExisting ?
      storyboard!.instantiateViewController(withIdentifier: "QuizViewController") :
      storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
    navigationController?.pushViewController(next, animated: true)
  }
}
```

* ResultViewController

```Swift
class ResultViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.hidesBackButton = true
  }
  
  @IBAction func tappedGoBack(_ sender: Any) {
    navigationController?.popToRootViewController(animated: true)
  }
}

```

* QuizViewContoller

```Swift
import UIKit

class QuizManager: NSObject {
  
  static var shared = QuizManager()
  private override init() {} // Singleton
  private var quizes = [[String: String]]()
  
  private func setupQuizzes() {
    quizes = [
      [
        "quiz": "1. What colour ball should normally be struck by the cue in snooker?",
        "answer": "white",
        "choice_1": "white",
        "choice_2": "mauve",
        "choice_3": "black",
        "choice_4": "orange"
      ],
      [
        "quiz": "2. Which word means a signed document in support of a particular action?",
        "answer": "partition",
        "choice_1": "petition",
        "choice_2": "position",
        "choice_3": "partition",
        "choice_4": "perforation"
      ],
      [
        "quiz": "3. Somebody described as 'butterfingers' would have a propensity for what?",
        "answer": "being clumsy",
        "choice_1": "being clumsy",
        "choice_2": "playing the piano",
        "choice_3": "gardening",
        "choice_4": "cookery"
      ],
    ]
  }
  
  func existNextQuiz() -> Bool {
    return quizes.count != 0
  }
  
  func getQuiz() -> [String: String] {
    if quizes.count == 0 { setupQuizzes() }
    let quiz = quizes.first
    quizes.removeFirst()
    return quiz!
  }
}
```
