//
//  ViewController.swift
//  MVVM
//
//  Created by Limitation on 1/27/19.
//  Copyright © 2019 Serhii K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = UserViewModel()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = User(name: Box("NameInitial"), surname: Box("SurnameInitial"))
        
        viewModel = UserViewModel(user: user)

//        nameLabel.text = viewModel.name.value
        
        viewModel.name.bind { [unowned self] name in
            self.nameLabel.text = name
        }
        
        viewModel.surname.bind { [unowned self] in
            self.surnameLabel.text = $0
        }
    }

    // MARK: - Actions
    
    @IBAction func buttonDidTouch(_ sender: UIButton) {
        viewModel.name.value = "Jack"
//        viewModel.update(username: "Jack")
//        viewModel.update(surname: "Sparrow")
    }

    @IBAction func debugButtonDidTouch(_ sender: Any) {
        viewModel.printUser()
    }
}

