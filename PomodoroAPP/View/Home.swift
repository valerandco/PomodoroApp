//
//  Home.swift
//  PomodoroAPP
//
//  Created by Valera Gassiev on 10/12/23.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var pomodoroModel: PomodoroModel
    var body: some View {
        VStack{
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            GeometryReader{proxy in
                VStack(spacing: 15){
                    ZStack{
                        Circle()
                            .fill(.white.opacity(0.03))
                            .padding(-40)
                        
                        Circle()
                            .trim(from: 0, to: pomodoroModel.progress)
                            .stroke(.white.opacity(0.03), lineWidth: 80)
                            .padding(-40)
                        
                        Circle()
                            .stroke(Color("Purple"), lineWidth: 5)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color("BG"))
                        
                        Circle()
                            .trim(from: 0, to: pomodoroModel.progress)
                            .stroke(Color("Purple").opacity(0.7), lineWidth: 10)
                        
                        GeometryReader{proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color("Purple"))
                                .frame(width: 30, height: 30)
                                .overlay(content: {
                                    Circle()
                                        .fill(.white)
                                        .padding(5)
                                    
                                })
                                .frame(width: size.width, height: size.height, alignment: .center)
                                .offset(x: -size.height / 2)
                                .rotationEffect(.init(degrees: pomodoroModel.progress * 360))
                        }
                        .onTapGesture(perform: {
                            pomodoroModel.progress
                        })
                    }
                    .padding(60)
                    .frame(height: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
            }
            
        }
        .padding()
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}
