//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "TC___FILEBASENAME___.h"

#define k___FILEBASENAME___RowHeight      90.0f
#define kCellIdentifier         @"TCCell___FILEBASENAME___"

@interface TC___FILEBASENAME___ ()

@end

@implementation TC___FILEBASENAME___
@synthesize attachedTableView,oSelect;

- (void)updateSelf
{
    [attachedTableView reloadData];
}

- (void)attachToTableView:(UITableView*)tv
{
    // Register the cell view nib
    [tv registerNib:[UINib nibWithNibName:@"TCCell___FILEBASENAME___" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kCellIdentifier];
    
    // Persist the attachment
    attachedTableView = tv;
    
    // Set the datasource and delegate
    [tv setDataSource:self];
    [tv setDelegate:self];
}

+ (TC___FILEBASENAME___*)attachToTableView:(UITableView*)tv
{
    TC___FILEBASENAME___* tc = [[TC___FILEBASENAME___ alloc] init];
    [tc attachToTableView:tv];
    return tc;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Prep the cell
    TCCell___FILEBASENAME___ *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    
    // Customize the cell
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kTC___FILEBASENAME___RowHeight;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Send it to the parent
    [oSelect execute];
}
@end
