//
//  MtGOSXAppDelegate.m
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import "MtGOSXAppDelegate.h"

#import "JSON.h"

@implementation MtGOSXAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    menubarItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:50] retain];
    
}

@end
