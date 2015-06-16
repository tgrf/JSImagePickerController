#
# Be sure to run `pod lib lint JSImagePickerController.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JSImagePickerController"
  s.version          = "1.0.0"
  s.summary          = "A photo picker controller that resembles the style of the image picker in iOS 8's messages app."
  s.description      = <<-DESC
                       ![Initial Screen](https://github.com/jacobsieradzki/JSImagePickerController/blob/master/Screenshots/imagePicker1.png)

                       Installation:

                       Just drop the two files for the JSImagePickerViewController class into your project and import them into whichever view controllers you want:

                       ```Objective-C
                       #import "JSImagePickerViewController.h"
                       ```

                       Next, put this code in your project to create and show the image picker:
                       ```Objective-C
                       JSImagePickerViewController *imagePicker = [[JSImagePickerViewController alloc] init];
                       imagePicker.delegate = self;
                       [imagePicker showImagePickerInController:self animated:YES];
                       ```

                       and add this delegate method to your code:
                       ```Objective-C
                       - (void)imagePickerDidSelectImage:(UIImage *)image;
                       ```

                       and if you want there are a choice of different delegate methods to choose from:
                       ```Objective-C
                       - (void)imagePickerDidOpen;
                       - (void)imagePickerWillOpen;
                       - (void)imagePickerWillClose;
                       - (void)imagePickerDidClose;
                       - (void)imagePickerDidCancel;
                       ```

                       and for personalization you can edit the public property's of the image picker:
                       ```Objective-C
                       @property (nonatomic) NSTimeInterval animationTime;
                       @property (nonatomic, strong) UICollectionView *collectionView;
                       @property (nonatomic, strong) UIButton *photoLibraryBtn;
                       @property (nonatomic, strong) UIButton *cameraBtn;
                       @property (nonatomic, strong) UIButton *cancelBtn;
                       ```

                       DESC
  s.homepage         = "https://github.com/tgrf/JSImagePickerController"
  # s.screenshots     = "https://github.com/jacobsieradzki/JSImagePickerController/blob/master/Screenshots/imagePicker1.png"
  s.license          = 'MIT'
  s.author           = { "Jacob Sieradzki" => "jacob.sieradzki@gmail.com" }
  s.source           = { :git => "https://github.com/tgrf/JSImagePickerController.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'AssetsLibrary'
    
end
