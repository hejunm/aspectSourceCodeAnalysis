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

+ (void)load{
    [UIViewController aspect_hookSelector:@selector(viewDidLoad) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info){
        NSLog(@"viewDidLoad  before1");
    } error:nil];
    
    [ViewController aspect_hookSelector:@selector(viewDidAppear:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info){
        NSLog(@"viewDidLoad  before1");
    } error:nil];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ViewController viewDidLoad");
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"ViewController viewDidAppear");
}
@end
