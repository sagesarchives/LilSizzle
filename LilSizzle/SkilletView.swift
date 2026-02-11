//
//  StovetopView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/1/26.
//

import SwiftUI


struct SkilletView: View {
    
    // array for ingredients
    
    
    // Position #1 = Pot -- Stays Stagnant
    @State var xPosSkillet: CGFloat = 200
    @State var yPosSkillet: CGFloat = 300
    
    // Position #2 = Mayo & Lime Mixture
    @State var xPosMayoLime: CGFloat = 118
    @State var yPosMayoLime: CGFloat = 500
    
    // Position #3 = Corn Kernels
    @State var xPosCorn: CGFloat = 320
    @State var yPosCorn: CGFloat = 500
    
    // Position #4 = Cotija Cheese
    @State var xPosCotija: CGFloat = 118
    @State var yPosCotija: CGFloat = 700
    
    // Position #5 = Black Pepper
    @State var xPosBlackPepper: CGFloat = 320
    @State var yPosBlackPepper: CGFloat = 700
    
    // Position #6 = Oregano
    @State var xPosOregano: CGFloat = 125
    @State var yPosOregano: CGFloat = 900
    
    // Position #7 = Ground Beef
    @State var xPosGroundBeef: CGFloat = 320
    @State var yPosGroundBeef: CGFloat = 900
    
    // Position #8 = Lemon Juice
    @State var xPosLemonJuice: CGFloat = 125
    @State var yPosLemonJuice: CGFloat = 1100
    
    // Position #9 = Onion
    @State var xPosOnion: CGFloat = 320
    @State var yPosOnion: CGFloat = 1100
    
    // Ingredient collision booleans
    @State var mayoLimeCollision: Bool = false
    @State var cornCollision: Bool = false
    @State var cotijaCollision: Bool = false
    @State var blackPepperCollision: Bool = false
    @State var oreganoCollision: Bool = false
    @State var groundBeefCollision: Bool = false
    @State var lemonJuiceCollision: Bool = false
    @State var onionCollision: Bool = false

//    @State var ingredientCount: Int
    
    var body: some View {
        ZStack {
            Image("stovetop")
                .resizable()
                .scaledToFit()
                .frame(width: 1387, height: 1387)
            
            
            // Settings
            Image(systemName: "gearshape.circle.fill")
                .font(.system(size: 80))
                .offset(x: -600, y: -450)
                .foregroundColor(.black)

            
            // Flames
            HStack {
                Image(systemName: "flame")
                    .font(.system(size: 60))
                Image(systemName: "flame")
                    .font(.system(size: 60))
                Image(systemName: "flame")
                    .font(.system(size: 60))
            } // hstack ending brace
            .offset(x: 560, y: -450)

            // -- GAME START
            
            // Skillet; Stays stagnant
            Image("skillet")
                .resizable()
                .scaledToFit()
                .frame(width: 750, height: 750)
                .position(x: self.xPosSkillet, y: self.yPosSkillet)
                .offset(y: 320)
                .offset(x: 700)
            
            // Mayo & Lime mixture
            Image("mayoLime")
                .position(x: self.xPosMayoLime, y: self.yPosMayoLime)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosMayoLime = value.location.x
                            self.yPosMayoLime = value.location.y
                            self.checkCollision()
                        }) // on changed ending brace
                ) // gesture ending brace
            
            // Corn kernels
            Image("cornKernels")
                .position(x: self.xPosCorn, y: self.yPosCorn)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosCorn = value.location.x
                            self.yPosCorn = value.location.y
                        }) // onchanged ending brace
                ) // gesture ending brace
            
            // Cotija cheese
            Image("cotijaCheese")
                .position(x: self.xPosCotija, y: self.yPosCotija)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosCotija = value.location.x
                            self.yPosCotija = value.location.y
                            self.checkCollision()
                        }) // on changed ending brace
                ) // gesture ending brace
            
            // Misc. Ingredient: Black Pepper
            Image("blackPepper")
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 160)
                .position(x: self.xPosBlackPepper, y: self.yPosBlackPepper)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosBlackPepper = value.location.x
                            self.yPosBlackPepper = value.location.y
                            self.checkCollision( )
                        }) // on changed ending brace
                ) // gesture ending brace
            
            // Misc. Ingredient: Oregano
            Image("oregano")
                .position(x: self.xPosOregano, y: self.yPosOregano)
                .gesture(
                        DragGesture()
                            .onChanged({ value in
                                self.xPosOregano = value.location.x
                                self.yPosOregano = value.location.y
                                self.checkCollision()
                            }) // on changed ending brace
                    ) // gesture ending brace
                
            // Misc. Ingredient: Ground Beef
            Image("beef")
                .resizable( )
                .scaledToFit()
                .frame(width: 200, height: 200)
                .position(x: self.xPosGroundBeef, y: self.yPosGroundBeef)
                .gesture (
                    DragGesture()
                        .onChanged({ value in
                            self.xPosGroundBeef = value.location.x
                            self.yPosGroundBeef = value.location.y
                            self.checkCollision()
                        }) // on changed ending brace
                ) // gesture ending brace
            
            // Misc. Ingredient: Lemon Juice
            Image("lemonJuice")
                .position(x: self.xPosLemonJuice, y: self.yPosLemonJuice)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosLemonJuice = value.location.x
                            self.yPosLemonJuice = value.location.y
                            self.checkCollision( )
                        }) // on changed ending brace
                ) // gesture ending brace

            // Misc. Ingredient: Onion
            Image("onion")
                .resizable( )
                .scaledToFit()
                .frame(width: 165, height: 165)
                .position(x: self.xPosOnion, y: yPosOnion)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPosOnion = value.location.x
                            self.yPosOnion = value.location.y
                            self.checkCollision()
                        }) // on changed ending brace
                ) // gesture ending brace
        } // zstack ending brace
    } // var body ending brace

    func checkCollision() {
        if abs(self.xPosSkillet - self.xPosMayoLime) < 100 && abs(self.yPosSkillet - self.yPosMayoLime) < 100 {
            self.mayoLimeCollision = true
        } else if abs(self.xPosSkillet - self.xPosCorn) < 100 && abs(self.xPosSkillet - self.yPosCorn) < 100 {
            self.cornCollision = true
        } else if abs(self.xPosSkillet - self.xPosCotija) < 100 && abs(self.yPosSkillet - self.yPosCotija) < 100 {
            self.cotijaCollision = true
        } else if abs(self.xPosSkillet - self.xPosBlackPepper) < 100 && abs(self.yPosSkillet - self.yPosBlackPepper) < 100 {
            self.blackPepperCollision = true
        } else if abs(self.xPosSkillet - self.xPosOregano) < 100 && abs(self.yPosSkillet - self.yPosOregano) < 100 {
            self.oreganoCollision = true
        } else if abs (self.xPosSkillet - self.xPosGroundBeef) < 100 && abs(self.yPosSkillet - self.yPosGroundBeef) < 100 {
            self.groundBeefCollision = true
        } else if abs(self.xPosSkillet - self.xPosLemonJuice) < 100 && abs(self.yPosSkillet - self.yPosLemonJuice) < 100 {
            self.lemonJuiceCollision = true
        } else if abs(self.xPosSkillet - self.xPosOnion) < 100 && abs(self.yPosSkillet - self.yPosOnion) < 100 {
            self.onionCollision = true
        } else {
            self.mayoLimeCollision = false
            self.cornCollision = false
            self.cotijaCollision = false
            self.blackPepperCollision = false
            self.oreganoCollision = false
            self.groundBeefCollision = false
            self.lemonJuiceCollision = false
            self.onionCollision = false
        } // if else statements ending brace
    } // func ending brace
} // struct ending brace

#Preview {
    SkilletView()
}
