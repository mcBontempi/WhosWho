//
//  WWEmployeeModel.h
//  WhosWho
//
//  Created by Daren taylor on 18/07/2013.
//  Copyright (c) 2013 Daren taylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WWEmployeeModel : NSObject

@property (nonatomic, strong) NSArray *employees;

- (void)refreshEmployees;

@end
