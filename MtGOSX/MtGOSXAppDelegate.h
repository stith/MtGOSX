//
//  MtGOSXAppDelegate.h
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MtGOSXAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSStatusItem *menubarItem;
}

@property (assign) IBOutlet NSWindow *window;

- (void)menubarItemClicked:(id)sender;

@end
