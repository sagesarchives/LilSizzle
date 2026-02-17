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
        //        Text(Irmani Cheers: UX Designer/Video Production Manager
        //             Isaac Prieto Levi: Programmer
        //             Jazmine Martin: Project Manager/Designer
        //             Jah’Nell Roberson: UI Designer
        //             Nyla Wilson: Lead Programmer/ Project Manager Assistant")
        //    }
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text (title)
                    .font(.custom("Marker Felt", size: 120))
//                    .underline()
                HStack{
                    Text("Irmani Chears:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("UX Designer/Video Production Manager")
                        .font(.custom("Marker Felt", size: 35))
                        .padding(.top)
                }
                HStack{
                    Text("Isaac Prieto:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Programer/Design")
                        .font(.custom("Marker Felt", size: 35))
                        .padding(.top)
                }
                HStack{
                    Text("Jazmine Martin")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Project Manager/Design")
                        .font(.custom("Marker Felt", size: 35))
                        .padding(.top)
                }
                HStack{
                    Text("Jah'Nell Roberson:")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("UI Designer")
                        .font(.custom("Marker Felt", size: 35))
                        .padding(.top)
                }
                HStack{
                    Text("Nyla Wilson")
                        .font(.custom("Marker Felt", size: 55))
                        .padding(.top)
                        .underline()
                    Text("Lead Programer / Project Manager Assistant")
                        .font(.custom("Marker Felt", size: 35))
                        .padding(.top)
                }
            }
        }
    }
}
#Preview {
    CreditsScreen()
}
