//
//  Box.swift
//  MVVM
//
//  Created by Limitation on 2/3/19.
//  Copyright © 2019 Serhii K. All rights reserved.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
            print("listener?(value)")
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
}
