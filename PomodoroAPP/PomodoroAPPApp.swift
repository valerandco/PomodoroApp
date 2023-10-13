//
//  PomodoroAPPApp.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/11/23.
//

import SwiftUI

@main
struct PomodoroAPPApp: App {
    @StateObject var pomodoroModel: PomodoroModel = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModel)
        }
    }
}
