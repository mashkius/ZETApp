//
//  CellularObject.m
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import "CellularObject.h"

@implementation CellularObject

-(id)initWithTypeSwitchAndTitle:(NSString *)title andSwitchState:(BOOL)state {
    self = [super init];
    
    self.title = title;
    self.isSwitchedOn = state;
    self.indicatorTitle = @"";
    
    return self;
}

-(id)initWithTypeNoSwitchAndTitle:(NSString *)title andIndicatorText:(NSString *)text {
    self = [super init];
    
    self.title = title;
    self.isSwitchedOn = NO;
    self.indicatorTitle = text;
    
    return self;
}

@end
