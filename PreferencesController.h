//
//  PreferencesController.h
//  preftest
//
//  Created by Jerry Cheung on 12/22/10.
//  Copyright 2010 Intridea. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PreferencesController : NSWindowController <NSTableViewDataSource, NSTableViewDelegate> {
  NSArray *sectionsList;
  NSTabView *tabView;
}

@property (retain) NSArray* sectionsList;
@property (assign) IBOutlet NSTabView *tabView;

@end
