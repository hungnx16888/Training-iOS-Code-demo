//
//  ViewController.h
//  Lession01
//
//  Created by Nguyen Xuan Hung on 4/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) NSString *strName;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;

@end

