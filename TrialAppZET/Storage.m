//
//  Storage.m
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import "Storage.h"

@implementation Storage

-(id)init {
    self = [super init];
    
    //create objects
    
    //objects for 1st section
    CellularObject *sec1object1 = [[CellularObject alloc] initWithTypeSwitchAndTitle:@"Cellular Data" andSwitchState:YES];
    CellularObject *sec1object2 = [[CellularObject alloc] initWithTypeNoSwitchAndTitle:@"Voice & Data" andIndicatorText:@"3G"];
    self.firstSectionData = [NSMutableArray arrayWithObjects:sec1object1, sec1object2, nil];
    
    //objects for 2nd section
    CellularObject *sec2object1 = [[CellularObject alloc] initWithTypeSwitchAndTitle:@"Data Roaming" andSwitchState:YES];
    self.secondSectionData = [NSMutableArray arrayWithObjects:sec2object1, nil];
    
    //objects for 3rd section
    CellularObject *sec3object1 = [[CellularObject alloc] initWithTypeSwitchAndTitle:@"EU Internet" andSwitchState:NO];
    self.thirdSectionData = [NSMutableArray arrayWithObjects:sec3object1, nil];
    
    //objects for 4th section
    CellularObject *sec4object1 = [[CellularObject alloc] initWithTypeNoSwitchAndTitle:@"Cellulat Data Network" andIndicatorText:@""];
   self.fourthSectionData = [NSMutableArray arrayWithObjects:sec4object1, nil];
    
    //objects for 5th section
    CellularObject *sec5object1 = [[CellularObject alloc] initWithTypeNoSwitchAndTitle:@"Personal Hotspot" andIndicatorText:@"Off"];
    self.fifthSectionData = [NSMutableArray arrayWithObjects:sec5object1, nil];
    
    
    return self;
}

@end
