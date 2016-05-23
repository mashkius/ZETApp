//
//  CellularTableVC.h
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellWithSwitchView.h"
#import "CellWithIndicator.h"
#import "Storage.h"
#import "CellularObject.h"

@interface CellularTableVC : UITableViewController
@property (nonatomic,strong) Storage *storage;
@end
