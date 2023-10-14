//
//  Home.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/12/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            
        }
        .padding()
        .preferredColorScheme(.dark)
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}
