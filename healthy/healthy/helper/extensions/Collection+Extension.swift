//
//  Collection+Extension.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import Foundation

public extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
