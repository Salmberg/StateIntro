//
//  Counter.swift
//  StateIntro
//
//  Created by David Salmberg on 2023-04-03.
//

import Foundation

//An ObservableObject has to be a class. But otherwise struct is the one we use the most.
class Counter : ObservableObject{
  @Published var count : Int = 0
    
    func inc() {
        count += 1
    }
    
    func dec() {
        count -= 1
    }
}
