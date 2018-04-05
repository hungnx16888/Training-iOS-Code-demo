//
//  ViewController.m
//  Lession01
//
//  Created by Nguyen Xuan Hung on 4/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end
@implementation ViewController
@synthesize strName,txtLastName,txtFirstName;
NSString *strNamete;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showName:(id)sender {
    NSString *firstName = [self getName:txtFirstName];
    NSString *lastName = [self getName:txtLastName];
    NSLog(@"%@ %@",firstName, lastName);
    [self pushName];
}

- (void)pushName {
    NSString *firstName = [self getName:txtFirstName];
    NSString *lastName = [self getName:txtLastName];
    
    NSArray *arrayName = [[NSArray alloc] initWithObjects:firstName,lastName, nil];
    
    UIAlertController * alert_  = [UIAlertController
                                 alertControllerWithTitle:@"Hello All"
                                 message:[NSString stringWithFormat:@"I'm %@ %@",[arrayName objectAtIndex:0], [arrayName objectAtIndex:1]]
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Yes"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                   
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    //Add your buttons to alert controller
    
    [alert_ addAction:yesButton];
    [alert_ addAction:noButton];
    
    [self presentViewController:alert_ animated:YES completion:nil];
    
}

- (NSString*)getName:(UITextField*)txtName {
    NSString *strName = txtName.text;
    return strName;
}


@end
