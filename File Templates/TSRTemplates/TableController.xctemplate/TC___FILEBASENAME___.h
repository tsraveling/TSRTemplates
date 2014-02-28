//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import "Order.h"
#import "TCCell___FILEBASENAME___.h"

@interface TC___FILEBASENAME___ : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,retain) UITableView *attachedTableView;
@property (nonatomic,retain) Order *oSelect;

+ (TC___FILEBASENAME___*)attachToTableView:(UITableView*)tv;
- (void)attachToTableView:(UITableView*)tv;
- (void)updateSelf;

@end
