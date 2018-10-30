# df-selfie-check (Selfie Check SDK)

This SDK is created to automatically capture the user's selfie using the facial expression( `eye-blink` in our case). It will ensure that user have to be physically present while taking the selfie.

<b>You can achieve the functionality with easy integration of following steps:</b>

- Add the SDK to your project, don't forget to add add it in `Embedded Binaries`.

- `import SelfieCheckFramework` in your `UIViewController` file where you want to use this feature.

- And instantiate the view with following code.

        // Open view with default configuration
        let vc = SelfieCheck.sharedInstance
        vc.returnClosure = { image in

            // Play with image here
            // Code Here
            // ...

        }
        present(vc, animated: true, completion: nil)
<br>
<p align="left">
<img src="images/selfie-check/user_guide.jpg" width="200"/> 
<img src="images/selfie-check/permission.jpg" width="200"/>
<img src="images/selfie-check/take_selfie.jpg" width="200"/>
<img src="images/selfie-check/choose_photo.jpg" width="200"/>
  
<br>
<br>
<br>
<b>You can cutomize the color and theme of the project according to your need. You can have a look at the sample below:</b>

        let vc = SelfieCheck.sharedInstance
        vc.globalBGColor = #colorLiteral(red: 0.9137254902, green: 0.3921568627, blue: 0.3647058824, alpha: 1)
        vc.globalMessagesColor = UIColor.white
        vc.globalTitleColor = UIColor.white
        vc.globalButtonCornerRadius = 5
        vc.globalOptionButtonColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        vc.globalTitleOptionButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
        vc.navigationTitleColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
        vc.globalActioButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
        vc.globalTitleActionButtonColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        vc.tipGuidanceOne = "Tip : Please look straight and then blink eyes."
        vc.titlePermissionVC = "Please Allow camera permission."
        
        vc.returnClosure = { image in
            self.selfieImageView.image = image
        }
        self.present(vc, animated: true, completion: nil)
<br>
<p align="left">
<img src="images/config/user_guide.jpg" width="200"/> 
<img src="images/config/permission.jpg" width="200"/>
<img src="images/config/take_selfie.jpg" width="200"/>
<img src="images/config/choose_photo.jpg" width="200"/>
  
<br>
  
---

<br>
<b>More Details( Sample Code Repository):</b>

You can also take help from github repository including the working demo of `SelfieCheckFramework`.

https://github.com/anandramdeo-df/df-selfie-check
