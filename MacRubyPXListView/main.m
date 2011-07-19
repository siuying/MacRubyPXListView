//
//  main.m
//  MacRubyPXListView
//
//  Created by Francis Chong on 11年7月19日.
//  Copyright 2011年 Ignition Soft Limited. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
