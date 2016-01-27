//
//  GlanceController.swift
//  BCWatchKit WatchKit Extension
//
//  Created by chenbrian on 1/27/16.
//  Copyright © 2016 Brian Chen. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {
  
  @IBOutlet var date: WKInterfaceDate!
  @IBOutlet var titleLabel: WKInterfaceLabel!
  
  @IBOutlet var map: WKInterfaceMap!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
      titleLabel.setText("BEIJING")
      map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2DMake(30.541093, 114.360734), span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)))
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
