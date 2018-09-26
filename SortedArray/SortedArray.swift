//
//  SortedArray.swift
//  SortedArray
//
//  Created by Louis Fournier on 26/09/2018.
//  Copyright © 2018 Louis Fournier. All rights reserved.
//

import Foundation

struct SortedArray<Element> {
    private var elements: [Element]
    private let comparator: (Element, Element) -> Bool

    /* Overriding default initializer to enforce sorting of argument sequence */
    init<S: Sequence>(of unsortedSequence: S, comparator: @escaping (Element, Element) -> Bool) where S.Iterator.Element == Element {
        self.elements = unsortedSequence.sorted(by: comparator)
        self.comparator = comparator
    }

    mutating func insert(_ element: Element) {
        elements.append(element)
        elements.sort(by: comparator)
    }
}

extension SortedArray: Collection {
    var startIndex: Int {
        return elements.startIndex
    }

    var endIndex: Int {
        return elements.endIndex
    }

    subscript(index: Int) -> Element {
        return elements[index]
    }

    func index(after i: Int) -> Int {
        return elements.index(after: i)
    }
}
