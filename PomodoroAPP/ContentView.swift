//
//  ContentView.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var pomodoroModel: PomodoroModel
    var body: some View {
        Home()
            .environmentObject(PomodoroModel)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
