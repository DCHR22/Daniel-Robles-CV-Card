//
//  ContentView.swift
//  Daniel Robles Card
//
//  Created by Camilo L-Shide on 14/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            
            Color(red: 0.11, green: 0.08, blue: 0.39)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                // In here starts the about me section
                Image("ssapress")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color(red: 1.00, green: 0.50, blue: 0.31), lineWidth:  3))
                Divider()
                Text("Daniel Robles")
                    .font(Font.custom("BungeeSpice-Regular", size: 40))
                    .multilineTextAlignment(.center)
                    .bold()
                Divider()
                Text("iOS Developer")
                    .font(Font.custom("BungeeSpice-Regular", size: 20))
                    .multilineTextAlignment(.center)
                    .bold()
                // With the divisor we move foward the next section
                Divider()
                //Next section starts here
                InfoView(text: "+52 56 1428 6011", imageName: "phone.fill")
                    
                InfoView(text: "danielcamilorobles95@gmail.com", imageName: "envelope.fill")
                Divider()
                // In here we show the resume view
                NavigationView{
                    ZStack{
                        Color(red: 0.11, green: 0.08, blue: 0.39)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack{
                            NavigationLink(destination: ResumeView()){
                                Text("SEE MY CV")
                                .font(Font.custom("BungeeSpice-Regular", size: 30))
                                .padding()
                                .background(Color(red: 1.00, green: 0.50, blue: 0.31, opacity: 1))
                                .foregroundColor(Color(red: 0.91, green: 0.25, blue: 0.09))
                                .clipShape(Capsule())
                            }
                        }
                    }
                    
                } 
                
                
                    

                // red: 0.91, green: 0.25, blue: 0.09 this is for the letters
                

            }
            .padding()
                
        }
    }
}

#Preview {
    ContentView()
}


