//
//  UserViewModel.swift
//  MVVM
//
//  Created by Limitation on 1/27/19.
//  Copyright © 2019 Serhii K. All rights reserved.
//

class UserViewModel {
    var name: Box<String?>
    var surname: Box<String?>

    private var user: User //{
//        didSet {
//            if name.value != user.name.value {
//                name.value = user.name.value
//            }
//            if surname.value != user.surname {
//                surname.value = user.surname
//            }
//        }
//    }
    
    init(user: User = User()) {
        self.user = user
        
        name = Box(user.name.value)
        surname = Box(user.surname.value)
        
        user.name.bind { [unowned self] name in
            self.name.value = name
        }
        
        user.surname.bind { [unowned self] surname in
            self.surname.value = surname
        }
        
//        name.bind { [unowned self] name in
//            self.user.name.value = name
//        }
//        
//        surname.bind { [unowned self] surname in
//            self.user.surname.value = surname
//        }
    }
    
    func update(username: String) {
        user.name.value = username
    }
    
    func update(surname: String) {
        user.surname.value = surname
    }
    
    func printUser() {
        debugPrint(user)
    }
}
