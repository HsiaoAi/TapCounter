//
//  TapCounterBrain.swift
//  TapCounter
//
//  Created by Short Lee on 28/07/2017.
//  Copyright © 2017 Short Lee. All rights reserved.
//

import Foundation

struct tapCounterBrain {

    private var tapNumbers: Int = 0

    var result: Int? {
        return tapNumbers
    }

    mutating func addNumbers() {
        tapNumbers += 1
    }

}
