//
//  ViewController.h
//  Lesson02
//
//  Created by Nguyen Xuan Hung on 9/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController <UITextFieldDelegate> {
    UIDatePicker *datePicker;
}
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtBirthDay;
@property (weak, nonatomic) IBOutlet UITextField *txtNumberCard;


@end

