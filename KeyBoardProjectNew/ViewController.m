//
//  ViewController.m
//  KeyBoardProjectNew
//
//  Created by test on 4/1/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextField *textFieldOfPassword;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITapGestureRecognizer *tap =  [[UITapGestureRecognizer alloc]
                                    
                                    initWithTarget:self action:@selector(dismissKeyboard)
                                    ];
    [self.view  addGestureRecognizer:tap];
    
   
}
-(void)dismissKeyboard{
    [_textField resignFirstResponder];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{              // called when 'return' key pressed. return NO to ignore.
    NSLog(@"Inside textFieldShouldReturn method..");
    [_textFieldOfPassword resignFirstResponder];
    return YES;
    //return NO;
}
- (IBAction)clickButton:(id)sender {
    
   // NSString *myName = @"Meheboob";

    //NSString *myPassword = @"nadaf123";
    
    NSString *welcomeMessage = @"WelCome Mr ";
    
    NSString *errorMessage = @" Invalid user";
    
  
    
    
    NSDictionary *allUserDetails = @{
                             @"Meheboob" : [NSString stringWithFormat:@"Meheboob123"],
                             @"Raghu" : [NSString stringWithFormat:@"Raghu123"],
                             @"Bhagya" : [NSString stringWithFormat:@"Bhagya123"],
                             @"Bhaskar" : [NSString stringWithFormat:@"Bhaskar123"],
                             @"Harish" : [NSString stringWithFormat:@"Harish123"],
                             @"Vithal" : [NSString stringWithFormat:@"01071992"],
                             @"Datta" : [NSString stringWithFormat:@"Admin@123"],
                             @"Amogh" : [NSString stringWithFormat:@"Amogh@123"],
                         
                             };
    
//    NSString *checkingObject = [allUserDetails objectForKey:@"Meheboob"];
//    
//   // NSLog(@"All users details : %@",allUserDetails);
//    
//    NSLog(@"All users details : %@",checkingObject);
    
    
    
    
    
    
//    NSString *userName = [[NSString alloc]initWithFormat:@"%@",[_textField text]];
//    
//    NSString *checkingObject1 = [allUserDetails objectForKey:userName];
//   // NSString *checkingObject2 = [allUserDetails keyf:userName];
//    
//    NSLog(@"All users details text filed : %@",checkingObject);
//   
//    
//    NSString *UserPassword = [[NSString alloc]initWithFormat:@"%@",[_textFieldOfPassword text]];
    
  
    
    NSString *welComeStringWithName = [[NSString alloc]init];
    welComeStringWithName = [welcomeMessage stringByAppendingString:_textField.text];
    
    NSString *errorStringWithName = [[NSString alloc]init];
    errorStringWithName = [_textField.text stringByAppendingString:errorMessage];
    
    
//    if((([myName isEqualToString:userName]) && [myPassword isEqualToString:UserPassword]))
//    {
//        [self.view setBackgroundColor:[UIColor greenColor]];
//         [_labelField setText:welComeStringWithName ];
//    }
//    
//    else
//    {
//        [self.view setBackgroundColor:[UIColor redColor]];
//        [_labelField setText:errorStringWithName];
//    }
//   
    

    
   // [_textField resignFirstResponder];
    
    
    if([_textFieldOfPassword.text isEqualToString:[allUserDetails objectForKey:_textField.text] ])
    {
        _labelField.text = welComeStringWithName;
       
        [self.view setBackgroundColor:[UIColor greenColor]];
        
    }
    
    else{
    [_labelField setText:errorStringWithName];
        [self.view setBackgroundColor:[UIColor redColor]];
    }
}



- (IBAction)cancelButton:(id)sender {
    
    
    _textFieldOfPassword.text = nil;
    _textField.text = nil;
}


@end
