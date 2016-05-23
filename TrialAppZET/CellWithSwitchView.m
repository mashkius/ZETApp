//
//  CellWithSwitchView.m
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import "CellWithSwitchView.h"

@implementation CellWithSwitchView

- (IBAction)switchAction:(UISwitch *)sender {
    self.object.isSwitchedOn = sender.isOn;
    
    //check if object is changing states
    NSLog(@"%d",self.object.isSwitchedOn);
}

@end
