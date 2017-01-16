//
//  Class1.m
//  AspectTest
//
//  Created by Nigel.He on 17/1/5.
//  Copyright © 2017年 User. All rights reserved.
//

#import "Car.h"
#import "Aspects.h"

@implementation Car

+ (void)load{
    
    [self aspect_hookSelector:@selector(runTo:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info){
        NSLog(@"runTo  before1");
    } error:nil];
    
    [self aspect_hookSelector:@selector(runTo:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> info){
        NSLog(@"runTo  before2");
    } error:nil];
    
    [self aspect_hookSelector:@selector(runTo:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        NSLog(@"runTo  after");
    } error:nil];
}

- (void)runTo:(NSString *)place{
    NSLog(@"car runTo %@",place);
}

@end
