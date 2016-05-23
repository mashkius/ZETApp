//
//  CellularTableVC.m
//  TrialAppZET
//
//  Created by Mantas Laurinavicius on 23/05/16.
//  Copyright © 2016 Mashkius. All rights reserved.
//

#import "CellularTableVC.h"

@implementation CellularTableVC
//@synthesize dataSource;

-(void)viewDidLoad {
    [super viewDidLoad];
    
    // initialise storage
    self.storage = [[Storage alloc] init];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableArray *source = [NSMutableArray arrayWithArray:[self getArrayForSection:(int)indexPath.section]];
    CellularObject *object = [source objectAtIndex:indexPath.row];
    
    if (indexPath.section == 3 || indexPath.section == 4 || (indexPath.section==0 && indexPath.row==1)) {
        CellWithIndicator *cell = [tableView dequeueReusableCellWithIdentifier:@"cellWithIndicator"];
        if (cell == nil) {
            cell = [[CellWithIndicator alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellWithIndicator"];
        }
        
        cell.title.text = object.title;
        cell.indicator.text = object.indicatorTitle;
        
        return cell;
        
    } else {
        CellWithSwitchView *cell = [tableView dequeueReusableCellWithIdentifier:@"cellWithSwitch"];
        if (cell == nil) {
            cell = [[CellWithSwitchView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellWithSwitch"];
        }
        
        cell.title.text = object.title;
        [cell.theSwitch setOn:object.isSwitchedOn];
        cell.object = object;
        
        return cell;
    }
}

-(NSMutableArray*)getArrayForSection:(int)section {
    switch (section) {
        case 0:
            return self.storage.firstSectionData;
            break;
        case 1:
            return self.storage.secondSectionData;
            break;
        case 2:
            return self.storage.thirdSectionData;
            break;
        case 3:
            return self.storage.fourthSectionData;
            break;
        case 4:
            return self.storage.fifthSectionData;
            break;
        default:
            break;
    }
    return [NSMutableArray array];
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *header = [[UIView alloc] init];
    header.backgroundColor = [UIColor grayColor];
    return header;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footer = [[UIView alloc] init];
    footer.backgroundColor = [UIColor grayColor];
    
    NSString *firstSectionDescription = @"Turn off cellular data to restrict all data to WI-FI, including email, web browsing, and push notifications.";
    NSString *secondSectionDescription = @"Turn off data roaming when traveling to avoid charges when web browing and using emaol and other data services";
    NSString *thirdSectionDescription = @"Requires EU Internet subscription. Turning this on limits web browsing, emailm and other services to an EU Internet subscription while roaming.";
    
    if (section!=3 && section!=4) {
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, tableView.frame.size.width-10, 80)];
        if (section==0) {
            lbl.text = firstSectionDescription;
        } else if (section==1) {
            lbl.text = secondSectionDescription;
        } else {
            lbl.text = thirdSectionDescription;
        }
        lbl.numberOfLines = 0;
        [footer addSubview:lbl];
    }
    return footer;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section==3 || section==4) {
        return 20;
    } else {
        return 80;
    }
}


@end
