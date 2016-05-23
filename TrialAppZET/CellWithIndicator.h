//
//  CellWithIndicator.h
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellWithIndicator : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *indicator;

@end
