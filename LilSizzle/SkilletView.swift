//
//  StovetopView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/1/26.
//

import SwiftUI

struct SkilletView: View {
    
    // Position #1 = Pot -- Stays Stagnant
    @State var xPosPot: CGFloat = 200
    @State var yPosPot: CGFloat = 300
    
    // Position #2 = Mayo & Lime Mixture
    @State var xPosMayoLime: CGFloat = 200
    @State var yPosMayoLime: CGFloat = 600
    
    // Position #3 = Corn Kernels
    @State var xPosCorn: CGFloat = 400
    @State var yPosCorn: CGFloat = 600
    
    // Position #4 = Cotija Cheese
    @State var xPosCotija: CGFloat = 400
    @State var yPosCotija: CGFloat = 600
    
    // Position #5 = Black Pepper
    @State var xPosBlackPepper: CGFloat = 400
    @State var yPosBlackPepper: CGFloat = 600
    
    // Position #6 = Oregano
    @State var xPosOregano: CGFloat = 400
    @State var yPosOregano: CGFloat = 600
    
    // Position #7 = Ground Beef
    @State var xPosGroundBeef: CGFloat = 400
    @State var yPosGroundBeef: CGFloat = 600
    
    // Position #8 = Lemon Juice
    @State var xPosLemonJuice: CGFloat = 400
    @State var yPosLemonJuice: CGFloat = 600
    
    // Position #9 = Onion
    @State var xPosOnion: CGFloat = 400
    @State var yPosOnion: CGFloat = 600
    
    @State var collision: Bool = false
    
    var body: some View {
        ZStack {
            Image("stovetop")
                .resizable()
                .scaledToFit()
                .frame(width: 1387, height: 1387)
            
//            Image("start")
//                .offset(x: -380, y: -450)
            
            Image(systemName: "gearshape.circle.fill")
                .font(.system(size: 80))
                .offset(x: -600, y: -450)
                .foregroundColor(.sizzlePurple)
                
            
            // -- GAME START
            
            // Skillet; Stay stagnant
            Image("skillet")
                .resizable()
                .scaledToFit()
                .frame(width: 750, height: 750)
                .position(x: self.xPosPot, y: self.yPosPot)
                .offset(y: 320)
                .offset(x: 700)
            
            // Mayo & Lime mixture
            Image("mayoLime")
                .position(x: self.xPosMayoLime, y: self.yPosMayoLime)
                .offset(x: -95)
                .offset(y: -105)
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
                .offset(x: -95)
                .offset(y: -105)
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
                .offset(x: -290)
                .offset(y: 100)
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
                .offset(x: -100)
                .offset(y: 95)
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
                .offset(x: -270)
                .offset(y: 300)
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
                .offset(x: -80)
                .offset(y: 300)
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
                .offset(x: -275)
                .offset(y: 500)
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
                .offset(x: -90)
                .offset(y: 495)
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
        if abs(self.xPosPot - self.xPosMayoLime) < 100 && abs(self.yPosPot - self.yPosMayoLime) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosCorn) < 100 && abs(self.xPosPot - self.yPosCorn) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosCotija) < 100 && abs(self.yPosPot - self.yPosCotija) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosBlackPepper) < 100 && abs(self.yPosPot - self.yPosBlackPepper) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosOregano) < 100 && abs(self.yPosPot - self.yPosOregano) < 100 {
            self.collision = true
        } else if abs (self.xPosPot - self.xPosGroundBeef) < 100 && abs(self.yPosPot - self.yPosGroundBeef) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosLemonJuice) < 100 && abs(self.yPosPot - self.yPosLemonJuice) < 100 {
            self.collision = true
        } else if abs(self.xPosPot - self.xPosOnion) < 100 && abs(self.yPosPot - self.yPosOnion) < 100 {
            self.collision = true
        } // if else statements ending brace
    } // func ending brace
} // struct ending brace

#Preview {
    SkilletView()
}
