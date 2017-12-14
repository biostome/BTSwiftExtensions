//
//  UITableViewTests.swift
//  SwiftExtensionsTests
//
//  Created by Tatsuya Tanaka on 20171213.
//  Copyright © 2017年 tattn. All rights reserved.
//

import XCTest
import SwiftExtensions
import UIKit

final class TableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
}

class UITableViewTests: XCTestCase {
    
    func testRegisterAndDequeueReusableCell() {
        let tableView = UITableView()
        tableView.register(cellTypes: [TableViewCell.self], bundle: Bundle(for: UITableViewTests.self))

        let indexPath = IndexPath(row: 0, section: 0)
        let cell = tableView.dequeueReusableCell(with: TableViewCell.self, for: indexPath)
        XCTAssertNotNil(cell.label)
    }
    
}
