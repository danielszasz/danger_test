//
//  ViewModle.swift
//  TheTest
//
//  Created by BTMac on 10.11.2022.
//

import Foundation

struct Action {
    var title: String
    var action: () -> Void
}

class ViewModle: ObservableObject {
    private var testt: String = ""
    func getAction() -> Action {
        Action(title: "") { [weak self] in
            self?.testt = "sdfsdf"
        }
    }

    deinit {
        print(#file)
    }
}
