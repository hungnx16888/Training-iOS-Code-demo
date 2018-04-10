//
//  UserModel.h
//  Lesson02
//
//  Created by Nguyen Xuan Hung on 9/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject
@property (strong,nonatomic) NSString *firstName;
@property (strong,nonatomic) NSString *lastName;
@property (strong,nonatomic) NSString *birthDay;
@property (strong,nonatomic) NSString *numberCard;
@property (strong,nonatomic) NSString *address;
-(id) initWithDict: (NSDictionary *) dict;
@end
