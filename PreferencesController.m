//
//  PreferencesController.m
//  preftest
//
//  Created by Jerry Cheung on 12/22/10.
//  Copyright 2010 Intridea. All rights reserved.
//

#import "PreferencesController.h"


@implementation PreferencesController

@synthesize sectionsList;
@synthesize tabView;

- (id) init {
  if(self = [super initWithWindowNibName:@"Preferences"]) {
    self.sectionsList = [NSArray arrayWithObjects:@"Twitter", @"Facebook", nil];
  }
  return self;
}

- (void) dealloc {
  [self.sectionsList release];
  [super dealloc];
}

#pragma mark NSTableViewDelegate, NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
  return [self.sectionsList count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
  return [sectionsList objectAtIndex:rowIndex];
}

- (void)tableViewSelectionDidChange:(NSNotification *)aNotification {
  [self.tabView selectTabViewItemAtIndex:[[aNotification object] selectedRow]];
}

@end
