# df-selfie-check

<h1>2. Selfie Check SDK</h1>

This SDK is created to automatically capture the user's selfie using the facial expression( `eye-blink` in our case). It will ensure that user have to be physically present while taking the selfie.

<b>You can achieve the functionality with easy integration of following steps:</b>

- Add the SDK to your project, don't forget to add add it in `Embedded Binaries`.

- `import SelfieCheckFramework` in your `UIViewController` file where you want to use this feature.

- And instantiate the view with following code.

        guard let vc = SelfieCheckViewController.storyboardInstance() else { fatalError("Not Found") }
        vc.returnClosure = { image in

            // Play with image here
            // Code Here
            // ...

        }
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true, completion: nil)
<br>
<br>
<b>More Details( Sample Code Repository):</b>

You can also take help from github repository including the working demo of `SelfieCheckFramework`.

https://github.com/anandramdeo-df/df-selfie-check

<br>
<p align="left">
<img src="images/selfie-check/user_guide.jpg" width="200"/> 
<img src="images/selfie-check/permission.jpg" width="200"/>
<img src="images/selfie-check/take_selfie.jpg" width="200"/>
<img src="images/selfie-check/choose_photo.jpg" width="200"/>
  
  
---
