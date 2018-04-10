//
//  ViewController.m
//  Lesson02
//
//  Created by Nguyen Xuan Hung on 9/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIToolbar* keyboardToolbar = [[UIToolbar alloc] init];
    [keyboardToolbar sizeToFit];
    UIBarButtonItem *flexBarButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                      target:nil action:nil];
    UIBarButtonItem *doneBarButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                      target:self action:@selector(doneButtonPressed)];
    
    
    NSString *strTest = @"2018-04-10";
    NSArray *arr = [strTest componentsSeparatedByString:@"-"];
    NSLog(@"%@",[arr objectAtIndex:0]);
 
    keyboardToolbar.items = @[flexBarButton, doneBarButton];
    self.txtLastName.inputAccessoryView = keyboardToolbar;
    self.txtFirstName.inputAccessoryView = keyboardToolbar;
    self.txtNumberCard.inputAccessoryView = keyboardToolbar;
    self.txtAddress.inputAccessoryView = keyboardToolbar;
    
    
    datePicker = [[UIDatePicker alloc] init];
    datePicker.minimumDate = [NSDate date];
    datePicker.datePickerMode = UIDatePickerModeCountDownTimer;
    [self.txtBirthDay setInputView:datePicker];
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(showSelectedDate)];
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
    [self.txtBirthDay setInputAccessoryView:toolBar];
    
    self.txtFirstName.delegate = self;
    self.txtBirthDay.delegate = self;
}

- (void)doneButtonPressed {
    
    [self.view endEditing:YES];
}

- (void)showSelectedDate
{
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MMM/YYYY hh:mm:ss a"];
    self.txtBirthDay.text=[NSString stringWithFormat:@"%@",[formatter stringFromDate:datePicker.date]];
    [self.txtBirthDay resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    NSSet *allTouches = [event allTouches];
    for (UITouch *touch in allTouches)
    {
        CGPoint location = [touch locationInView:touch.view];
        NSLog(@"x: %f, y: %f",location.x,location.y);
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInView:touch.view];
        NSLog(@"x: %f, y: %f",location.x,location.y);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.txtFirstName.text = [self.txtFirstName.text lowercaseString];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField == _txtAddress) {
        
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return false;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    //Ham dang nhap input ky tu.
    return false;
}
@end
