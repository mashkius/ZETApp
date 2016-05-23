//
//  CellWithSwitchView.h
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellularObject.h"

@interface CellWithSwitchView : UITableViewCell

@property (weak, nonatomic) IBOutlet UISwitch *theSwitch;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak,nonatomic) CellularObject *object;


@end
