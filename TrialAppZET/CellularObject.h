//
//  CellularObject.h
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellularObject : NSObject
@property (nonatomic,strong) NSString *title;
@property BOOL isSwitchedOn;
@property (nonatomic,strong) NSString *indicatorTitle;

-(id)initWithTypeSwitchAndTitle:(NSString *)title andSwitchState:(BOOL)state;
-(id)initWithTypeNoSwitchAndTitle:(NSString *)title andIndicatorText:(NSString *)text;
@end
