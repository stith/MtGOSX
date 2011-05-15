//
//  MtGOSXAppDelegate.m
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import "MtGOSXAppDelegate.h"

#import "JSON.h"
#import "MtGoxMarket.h"
#import "Ticker.h"

@implementation MtGOSXAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    menubarItem = [[statusBar statusItemWithLength:70] retain];
    [menubarItem setHighlightMode:YES];
    [menubarItem setTitle:@"....."];
    [menubarItem setEnabled:YES];
    [menubarItem setToolTip:@"MtGox Ticker"];
    [menubarItem setImage:[NSImage imageNamed:@"bitcoin.png"]];
    
    NSMenu *clickMenu = [[NSMenu alloc] initWithTitle:@"Ticker"];
    
    NSMenuItem *refreshItem = [[NSMenuItem alloc] initWithTitle:@"Refresh" action:@selector(refreshTicker:) keyEquivalent:@"r"];
    [refreshItem setEnabled:YES];
    [clickMenu addItem:refreshItem];
    
    [menubarItem setMenu:clickMenu];
    
    
    market = [[MtGoxMarket alloc] initWithDelegate:self];
    [market fetchTicker];
    
    refreshTimer = [[NSTimer scheduledTimerWithTimeInterval:1000*60 target:market selector:@selector(fetchTicker) userInfo:nil repeats:YES] retain];
}

- (void)applicationWillTerminate:(NSNotification *)notification {
    [refreshTimer invalidate];
    [refreshTimer release];
    
    [menubarItem release];
    [market release];
}

- (void)menubarItemClicked:(id)sender {
    [market fetchTicker];
}

#pragma mark 

#pragma mark Bitcoin market delegate

-(void)bitcoinMarket:(BitcoinMarket*)market didReceiveTicker:(Ticker*)ticker {
    [menubarItem setTitle:[NSString stringWithFormat:@"%.2f",ticker.last.floatValue]];
}

// A request failed for some reason, for example the API being down
-(void)bitcoinMarket:(BitcoinMarket*)market requestFailedWithError:(NSError*)error {
    
}

// Request wasn't formatted as expected
-(void)bitcoinMarket:(BitcoinMarket*)market didReceiveInvalidResponse:(NSData*)data {
    
}


@end
