//
//  StreetCornRecipeView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/3/26.
//

import SwiftUI
import Combine

struct RecipeCardView: View {
    @State private var timeRemaining = 5
    let recipeCard: String
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        NavigationStack {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1390, height: 1390)
                VStack (spacing: -300) {
                    Image("getReadyLabel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 600)
                    Image(recipeCard)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 800, height: 800)
                        .padding(.leading, 100)
                        .padding(.bottom, 100)
                    Text("\(timeRemaining)")
                        .font(.system(size:70))
                        .bold()
                        .foregroundColor(.white)
                        .onReceive(timer) { _ in
                            if timeRemaining > 1 {
                                timeRemaining -= 1
                            } // if statement ending brace
                        } // on recieve ending brace
                } // vstack ending brace
                .padding(.bottom, 150)
                
//                if timeRemaining == 1 {
//                    SkilletView()
//                } // if statement ending brace
            } // zstack ending brace
        } //nav stack ending brace
        .navigationBarBackButtonHidden(true)
    } // var body ending brace
} // struct ending brace

#Preview {
    RecipeCardView(recipeCard: "eloteRecipeCard")
    
}

#Preview {
    RecipeCardView(recipeCard: "churrosRecipeCard")
}
