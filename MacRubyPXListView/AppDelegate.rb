#
#  AppDelegate.rb
#  MacRubyPXListView
#
#  Created by Francis Chong on 11年7月19日.
#  Copyright 2011年 Ignition Soft Limited. All rights reserved.
#

class AppDelegate
    attr_accessor :window, :listView

    def applicationDidFinishLaunching(a_notification)
    end
    
    def awakeFromNib
        @listView.cellSpacing = 2.0
        @listView.allowsEmptySelection = true
        @listView.allowsMultipleSelection = true
        @listView.registerForDraggedTypes([NSStringPboardType])

        @listView.reloadData
    end

    def reload_table(sender)
        @listView.reloadData
    end

end

