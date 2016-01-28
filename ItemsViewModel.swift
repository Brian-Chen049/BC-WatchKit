//
//  ItemsViewModel.swift
//  BCWatchKit
//
//  Created by chenbrian on 1/28/16.
//  Copyright © 2016 Brian Chen. All rights reserved.
//

import UIKit

struct ItemsViewModel {
  
  private(set) var items: [String] = []
  
  init() {
    items = load()
  }
  
  mutating func append(item: String) {
    items.append(item)
    save(items)
  }
  
  mutating func removeItemAt(index: Int) {
    items.removeAtIndex(index)
    save(items)
  }
  
  func save(items: [String]) {
    defaults.setObject(items, forKey: itemsKey)
    print(defaults.synchronize())
  }
  func load() -> [String] {
    return defaults.objectForKey(itemsKey) as? [String] ?? []
  }
  
  private let itemsKey = "items"
  private let defaults = NSUserDefaults.standardUserDefaults()
}
