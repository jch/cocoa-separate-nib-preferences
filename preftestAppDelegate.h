//
//  preftestAppDelegate.h
//  preftest
//
//  Created by Jerry Cheung on 12/22/10.
//  Copyright 2010 Intridea. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface preftestAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
