//
//  FailureScreenView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/4/26.
//
//
import SwiftUI

struct FailSheetView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
            ZStack {
                Color.cream
                    .ignoresSafeArea()
                VStack {
                    
                    Text("Oh no, you've burnt the food!")
                        .font(.custom("Marker Felt", size: 40.0))
                        .padding(.top)
                    ZStack {
                        Image("CenterImageFail")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500)
                        VStack {
                            HStack {
                                Image("FailFlame")
                                    .resizable()
                                    .scaledToFit()
                                Image("FailFlame")
                                    .resizable()
                                    .scaledToFit()
                                Image("FailFlame")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 300, height: 400)
                        }
                        .padding()
                    }
                    .padding()
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Text("Restart")
                                .font(.custom("Marker Felt", size: 40.0))
                                .minimumScaleFactor(0.5)
                        }
                        .foregroundColor(.white)
                        .tint(.sizzleBrown)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.sizzleBrown
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        )
                        Button {
                            // Implement Home logic here
                        } label: {
                        
                            Text("Home")
                                .font(.custom("Marker Felt", size: 40.0))
                                .minimumScaleFactor(0.5)
                        }
                        .foregroundColor(.white)
                        .tint(.sizzleBrown)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.sizzleBrown
                                .cornerRadius(30)
                                .shadow(radius: 10)
                            
                        )
                    }
                }
            }
    }
}

#Preview {
    FailSheetView()
}
