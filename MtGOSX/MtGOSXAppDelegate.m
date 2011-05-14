//
//  MtGOSXAppDelegate.m
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import "MtGOSXAppDelegate.h"

#import "JSON.h"
#import "MenubarTickerView.h"

@implementation MtGOSXAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    menubarItem = [[statusBar statusItemWithLength:50] retain];
    [menubarItem setHighlightMode:YES];
    [menubarItem setTitle:@"7.99"];
    [menubarItem setEnabled:YES];
    [menubarItem setToolTip:@"MtGox Ticker"];
    
    [menubarItem setTarget:self];
    [menubarItem setAction:@selector(menubarItemClicked:)];
    
    //NSView *item = [[MenubarTickerView alloc] init];
    //[menubarItem setView:item];
    //[item release];
}

- (void)menubarItemClicked:(id)sender {
    
}

@end
