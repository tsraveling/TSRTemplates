//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___"

@implementation ___FILEBASENAME___

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

-(id)initWithSel:(SEL)sel parent:(id)par
{
    self = [super init];
    if (self) {
        selParent = par;
        selPass = sel;
    }
    return self;
}

-(void)execute
{
    [selParent performSelector:selPass];
}

-(void)execute:(id)ob
{
    [selParent performSelector:selPass withObject:ob];
}

+(___FILEBASENAME___*)new___FILEBASENAME___:(SEL)sel parent:(id)par
{
    return [[___FILEBASENAME___ alloc] initWithSel:sel parent:par];
}

#pragma clang diagnostic pop

@end
