//
//  PomodoroModel.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/12/23.
//

import SwiftUI

class PomodoroModel: NSObject,ObservableObject {
    
    @Published var progress: CGFloat = 1
    @Published var timerStringvalue: String = "00:00"
    @Published var isStarted: Bool = false
    @Published var addNewTimer: Bool = false

    
    @Published var hour: Int = 0
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0


    
}
 

