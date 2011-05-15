//
//  MtGOSXAppDelegate.h
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "BitcoinMarketDelegate.h"

@class MtGoxMarket;

@interface MtGOSXAppDelegate : NSObject <NSApplicationDelegate,BitcoinMarketDelegate> {
@private
    NSWindow *window;
    NSStatusItem *menubarItem;
    
    MtGoxMarket *market;
    NSTimer *refreshTimer;
}

@property (assign) IBOutlet NSWindow *window;

- (void)menubarItemClicked:(id)sender;

@end
