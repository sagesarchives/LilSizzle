//
//  ContentView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 1/30/26.
//

import SwiftUI

//let totalPages = 6 //new edit

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        //    }
        
        Group {
            
            if currentPage <= totalPages {
                OnboardingScreen()
            } else if currentPage == totalPages + 1 {
                LandingPage() //this is to be renamed to the main recipe book page i think
            } else {
                Home()
            }
        }
        //  .onAppear {
        //   UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
            }
        }
    


#Preview {
    ContentView()
}

//home screen AKA recipe book
struct Home: View {
    var body: some View {
        VStack {
            Text("Welcome to Lil' Sizzle!")
                .font(.title)
                .fontWeight(.heavy)
        }
    }
} //total view bracket

let totalPages = 6

//OnboardingScreens
struct OnboardingScreen: View {
    
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        
        ZStack{
            
            Color(.gray)
             .ignoresSafeArea()
            
            if currentPage == 1 { Sizzle(start: "onOne", words:"one")
            }
            if currentPage == 2 { Sizzle(start: "onTwo", words: "two")
            }
            if currentPage == 3 { Sizzle(start: "onThree", words: "three")
            }
            if currentPage == 4 { Sizzle(start: "onFour", words: "four")
            }
            if currentPage == 5 { Sizzle(start: "onFive", words: "five")
            }
            if currentPage == 6 { Sizzle(start: "onSix", words: "six")
            }
        }
        
    }

struct Sizzle: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    
    var start: String
    var words: String
    // var details: String
    
    var body: some View {
        VStack {
            //this is a welcoming top bar
            HStack {
                
                if currentPage == 1 {
                    
                  //  Text("Hello Chefs!")
                     //   .font(.title)
                      //  .fontWeight(.semibold)
                      //  .kerning(1.4)
                }
                
                else {
                    Button(action: {
                        currentPage -= 1
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black
                                .opacity(0.4))
                            .cornerRadius(10)
                    })
                }
              
                
                Spacer()
                
                Button(action: {
                    
                    currentPage = totalPages
                    
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }.padding()
            
            Spacer(minLength: 0)
            
            ZStack {
                Image("onOne")
                  // .offset(y: -400)
                    .resizable()
                    .scaledToFit()
                
                Image(start)
                    .resizable()
                    .scaledToFit()
                
                Image(words)
                    .resizable()
                    .scaledToFit()
                
            }
            .allowsHitTesting(false)
            
            Spacer()
            
            //pageindicators
            HStack {
                
                ForEach(1...totalPages, id: \.self) { index in
                        Rectangle()
                            .fill(index == currentPage ? Color.blue : Color.gray.opacity(0.4))
                            .frame(width: 30, height: 4)
                            .cornerRadius(2)
                //ForEach(1...totalPages, id: \.self) { index in (index == currentPage, Color.blue : Color.gray .frame(height: 8 / UIScreen.main.scale)
                    }
            }
            
            .padding(.horizontal, 35)
            
            //this is our next button for going thru the pages
                Button(action: {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    
                    else {
                        currentPage = 1
                    }
                }, label: {
                    
                    if currentPage == 6 {
                        
                        Text("Let's Cook")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("sizzleBrown"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    }
                    else {
                        
                        Text("Next")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("sizzleBrown"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    }
                })
            }
        }
    }
}


