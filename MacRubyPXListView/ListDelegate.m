//
//  ListDelegate.m
//  MacRubyPXListView
//
//  Created by Francis Chong on 11年7月19日.
//  Copyright 2011年 Ignition Soft Limited. All rights reserved.
//

#import "ListDelegate.h"

#import "PXListViewCell.h"
#import "MyListViewCell.h"

@implementation ListDelegate

- (NSUInteger)numberOfRowsInListView: (PXListView*)aListView {
	return 10;
}

- (CGFloat)listView:(PXListView*)aListView heightOfRow:(NSUInteger)row {
	return 50;
}

- (PXListViewCell*)listView:(PXListView*)aListView cellForRow:(NSUInteger)row {
	MyListViewCell *cell = (MyListViewCell*)[aListView dequeueCellWithReusableIdentifier:@"ListView"];
	
	if(!cell) {
		cell = [MyListViewCell cellLoadedFromNibNamed:@"MyListViewCell" reusableIdentifier:@"ListView"];
	}
	
	// Set up the new cell:
	[[cell titleLabel] setStringValue:[NSString stringWithFormat:@"Cocoa List %d", row]];
	
	return cell;
}

@end
