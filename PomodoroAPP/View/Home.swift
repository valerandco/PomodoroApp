//
//  Home.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/12/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(PomodoroModel())
    }
}