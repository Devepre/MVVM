//
//  User.swift
//  MVVM
//
//  Created by Limitation on 1/27/19.
//  Copyright © 2019 Serhii K. All rights reserved.
//

struct User {
    var name: Box<String?> = Box(nil)
    var surname: Box<String?> = Box(nil)
}
