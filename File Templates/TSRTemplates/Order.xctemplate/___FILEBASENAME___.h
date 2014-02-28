//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@interface ___FILEBASENAME___ : NSObject
{
    SEL selPass;
    id selParent;
}

-(id)initWithSel:(SEL)sel parent:(id)par;
-(void)execute;
-(void)execute:(id)ob;

+(___FILEBASENAME___*)new___FILEBASENAME___:(SEL)sel parent:(id)par;

@end
