//
//  UserViewController.h
//  Lesson02
//
//  Created by Nguyen Xuan Hung on 10/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserModel.h"
@class MyClass;
@protocol UserDelegate <NSObject>
- (void) returnUser: (UserModel *) user;
@end //end protocol

@interface UserViewController : NSObject {
}
@property (nonatomic, weak) id <UserDelegate> delegate;

@end

