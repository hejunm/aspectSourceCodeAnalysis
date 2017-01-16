//
//  ViewController.m
//  AspectTest
//
//  Created by Nigel.He on 17/1/5.
//  Copyright © 2017年 User. All rights reserved.
//

#import "ViewController.h"
#import "Aspects.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Car *car = [[Car alloc]init];
    [car runTo:@"shangHai"];
    
}

@end
