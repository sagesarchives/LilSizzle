//
//  CreditsScreen.swift
//  LilSizzle
//
//  Created by Isaac Prieto Levi on 2/17/26.
//

import SwiftUI

struct CreditsScreen: View {
    @State var backgroundColor = Color.sizzleGreen
    @State var title = "CREDITS"
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack (spacing: 20) {
                    Text (title)
                        .font(.custom("Marker Felt", size: 120))
                    Image("pawPrint")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                
                HStack (spacing: 15) {
                    Text("Irmani Chears:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("UX Designer / Video Production Manager")
                        .font(.custom("Marker Felt", size: 45))
                        .padding(.top)
                }
               
                HStack (spacing: 15) {
                    Text("Jazmine Martin:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Project Manager / Designer")
                        .font(.custom("Marker Felt", size: 45))
                        .padding(.top)
                }
                
                HStack (spacing: 15) {
                    Text("Isaac Prieto:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Programmer / Designer")
                        .font(.custom("Marker Felt", size: 45))
                        .padding(.top)
                }
                
                HStack (spacing: 15) {
                    Text("Jah'Nell Roberson:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("UI Designer / Brand Builder")
                        .font(.custom("Marker Felt", size: 45))
                        .padding(.top)
                }
                
                HStack (spacing: 15) {
                    Text("Nyla Wilson:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Lead Programmer / Project Manager Assistant")
                        .font(.custom("Marker Felt", size: 45))
                        .padding(.top)
                }
            }
        }
    }
}

#Preview {
    CreditsScreen()
}
