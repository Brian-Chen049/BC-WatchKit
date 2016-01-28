//
//  InterfaceController.swift
//  BCWatchKit WatchKit Extension
//
//  Created by chenbrian on 1/27/16.
//  Copyright © 2016 Brian Chen. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  @IBOutlet var table: WKInterfaceTable!
  var viewModel = ItemsViewModel()
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
      
    // Configure interface objects here.
    loadTableData()
  }

  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }

  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  func loadTableData() {
    table.setNumberOfRows(viewModel.items.count, withRowType: "ItemCell")
    for (index, item) in viewModel.items.enumerate() {
      let controller = table.rowControllerAtIndex(index) as! ItemCellController
      controller.label.setText(item)
    }
  }

}
