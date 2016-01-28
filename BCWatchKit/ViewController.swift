//
//  ViewController.swift
//  BCWatchKit
//
//  Created by chenbrian on 1/27/16.
//  Copyright © 2016 Brian Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var viewModel = ItemsViewModel()
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    viewModel.append("myItem")
    WatchConnection.defaultConnection.synchronize()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

