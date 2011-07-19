#
#  RBListDelegate.rb
#  MacRubyPXListView
#
#  Created by Francis Chong on 11年7月19日.
#  Copyright 2011年 Ignition Soft Limited. All rights reserved.
#


class RBListDelegate < ListDelegate
    def numberOfRowsInListView(aListView)
        15
    end

    def listView(aListView, heightOfRow:row)
        60
    end

    def listView(aListView, cellForRow: row)
        cell = aListView.dequeueCellWithReusableIdentifier("ListView");
        
        if cell.nil?
            cell = MyListViewCell.cellLoadedFromNibNamed("MyListViewCell", reusableIdentifier:"ListView")
        end
        
        cell.titleLabel.stringValue = "Ruby Items #{row}"
        cell
    end
end