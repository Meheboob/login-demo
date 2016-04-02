//
//  ViewController.h
//  KeyBoardProjectNew
//
//  Created by test on 4/1/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

//@interface ViewController : UIViewController
@interface ViewController : UIViewController <UITextFieldDelegate>
//@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *labelField;

@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;

//@property (weak, nonatomic) IBOutlet UITextField *textFieldOfPassword;


- (IBAction)clickButton:(id)sender;


- (IBAction)cancelButton:(id)sender;

@end
//@interface YourViewController : UIViewController <UITextFieldDelegate>
//@end



