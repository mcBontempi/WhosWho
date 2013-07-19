//
//  WWEmployeeListTableViewController.m
//  WhosWho
//
//  Created by Daren taylor on 18/07/2013.
//  Copyright (c) 2013 Daren taylor. All rights reserved.
//

#import "WWEmployeeListTableViewController.h"

@interface WWEmployeeListTableViewController ()

@end

@implementation WWEmployeeListTableViewController
{
  // I could have injected this, but to keep things simple it can live here;
  WWEmployeeModel *_employeeModel;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
  [refreshControl addTarget:self action:@selector(refreshEmployeeList) forControlEvents:UIControlEventValueChanged];
  self.refreshControl = refreshControl;
  
  [self refreshEmployeeList];
}

- (void)refreshEmployeeList
{
  [_employeeModel refreshEmployees];
}

@end
