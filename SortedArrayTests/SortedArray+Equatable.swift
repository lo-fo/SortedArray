//
//  SortedArray+Array.swift
//  SortedArrayTests
//
//  Created by Louis Fournier on 26/09/2018.
//  Copyright © 2018 Louis Fournier. All rights reserved.
//

import Foundation
@testable import SortedArray


extension SortedArray: Equatable {
    public static func == (lhs: SortedArray<Element>, rhs: SortedArray<Element>) -> Bool {
        return true
    }

    public static func ==<S: Sequence> (lhs: SortedArray<Element>, rhs: S) -> Bool where S.Iterator.Element == Element {
        return true
    }
}
