//
//  ViewController.m
//  StartUp
//
//  Created by Jessica Sturme on 11/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

//Prop Person name, email. Prop Emply type. Prop Mgr no.rep. Prop SU bossetc

#import "ViewController.h"
#import "Person.h"
#import "Employee.h"
#import "Manager.h"
#import "StartUp.h"


@interface ViewController ()
{
    StartUp *startUpOne;
    Person *personOne;
    Person *person2;
 
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    startUpOne = [[StartUp alloc] init];
    
    startUpOne.boss = [[Manager alloc] init];
    startUpOne.boss.name = @"Fred";
    startUpOne.boss.email = @"fred@startup.com";
    startUpOne.boss.type = @"Manager";
    startUpOne.boss.numberOfDirectReports = 3;
    
    startUpOne.projectManager = [[Employee alloc] init];
    startUpOne.projectManager.name = @"Barney";
    startUpOne.projectManager.email = @"barney@startup.com";
    startUpOne.projectManager.type = @"Project Manager";
    
    startUpOne.coder = [[Employee alloc] init];
    startUpOne.coder.name = @"Pebbles";
    startUpOne.coder.email = @"pebbles@startup.com";
    startUpOne.coder.type = @"Coder";
    
    startUpOne.designer = [[Employee alloc] init];
    startUpOne.designer.name = @"Wilma";
    startUpOne.designer.email = @"wilma@startup.com";
    startUpOne.designer.type = @"Designer";
    
    
    NSLog(@"Boss -> Name: %@ , Email: %@ , Type: %@ , Number of Direct Reports: %i.",startUpOne.boss.name, startUpOne.boss.email, startUpOne.boss.type, startUpOne.boss.numberOfDirectReports);
    NSLog(@"Project Manager -> Name: %@ , Email: %@ , Type: %@.",startUpOne.projectManager.name, startUpOne.projectManager.email, startUpOne.projectManager.type);
    NSLog(@"Coder -> Name: %@ , Email: %@ , Type: %@.",startUpOne.coder.name, startUpOne.coder.email, startUpOne.coder.type);
    NSLog(@"Designer -> Name: %@ , Email: %@ , Type: %@.",startUpOne.designer.name, startUpOne.designer.email, startUpOne.designer.type);NSLog(@"%@", startUpOne.boss.name);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
