//
//  MenubarTickerView.m
//  MtGOSX
//
//  Created by Matt Stith on 5/14/11.
//  Copyright 2011 Insomnia Addict. All rights reserved.
//

#import "MenubarTickerView.h"


@implementation MenubarTickerView

- (id)init {
    if (!(self = 
          [super initWithFrame:CGRectMake(0, 0, 50, [[NSStatusBar systemStatusBar] thickness])])) return self;
    
    
    
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect {
    // Background color
    CGContextRef context = (CGContextRef) [[NSGraphicsContext currentContext] graphicsPort];
    CGContextSetRGBFillColor(context, 0,0,0,1);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
}

@end
