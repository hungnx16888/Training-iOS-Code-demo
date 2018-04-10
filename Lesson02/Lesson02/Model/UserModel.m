//
//  UserModel.m
//  Lesson02
//
//  Created by Nguyen Xuan Hung on 9/4/18.
//  Copyright © 2018 Nguyen Xuan Hung. All rights reserved.
//

#import "UserModel.h"
#import "Define.h"
@implementation UserModel
-(id) initWithDict: (NSDictionary *) dict {
    self.lastName = [dict objectForKey:LAST_NAME];
    self.firstName = [dict objectForKey:FIRST_NAME];
    self.address = [dict objectForKey:ADDRESS];
    self.birthDay = [dict objectForKey:BIRTH_DAY];
    self.numberCard = [dict objectForKey:NUMBER_CARD];
    return self;
}
@end
