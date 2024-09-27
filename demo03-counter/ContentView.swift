//
//  ContentView.swift
//  demo03-counter
//
//  Created by Alec Lobanov on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var people: Int = 0
    @State private var maxCount: Int = 10
    var percentFull: Double {
        return Double(people)/Double(maxCount)}
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .opacity(percentFull)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("\(people) People")
                        Spacer()
                        NavigationLink{
                            SettingsView(maxCount: $maxCount)
                        }label:{
                            Image(systemName:"gear")
                        }
                    }
                    .foregroundStyle(.white)
                    .font(.system(size:50))
                    .padding()
                    
                    Spacer()
                    Stepper("Max Count: \(maxCount)",value: $maxCount)
                        .font(.title)
                        .padding()
                        .background(Color.white, in: .rect(cornerRadius: 10))
                        .padding()
                    
                    Spacer()
                    HStack{
                        Button{
                            if people > 0{
                                people -= 1
                            }else{
                                people = people
                            }
                        }label: {
                            Image(systemName:"minus")
                        }
                        Spacer()
                        Button{
                            if people == maxCount{
                                people = people
                            }else{
                                people += 1
                            }
                        }label: {
                            Image(systemName:"plus")
                        }
                        
                    }
                    .font(.system(size:90))
                    .foregroundStyle(.white)
                    .padding(.horizontal,40)
                    .padding(.bottom,40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
