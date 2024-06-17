//
//  IntegerFormatStyle.swift
//  WatchTaskListSample
//
//  Created by Thusith Hettiarachchi on 2024-06-08.
//

import Foundation

/// `ProductivityChart` uses this type to format the values on the y-axis.
struct IntegerFormatStyle: FormatStyle {
    func format(_ value: Double) -> String {
        " \(Int(value))"
    }
}
