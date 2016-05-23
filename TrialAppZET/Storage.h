//
//  Storage.h
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellularObject.h"

@interface Storage : NSObject
@property (nonatomic,strong) NSMutableArray *firstSectionData;
@property (nonatomic,strong) NSMutableArray *secondSectionData;
@property (nonatomic,strong) NSMutableArray *thirdSectionData;
@property (nonatomic,strong) NSMutableArray *fourthSectionData;
@property (nonatomic,strong) NSMutableArray *fifthSectionData;
@end
