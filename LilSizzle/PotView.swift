//
//  PotView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/3/26.
//

import SwiftUI
import AVFoundation

    struct PotView: View {
        @State var xPosPot: CGFloat = 940
        @State var yPosPot: CGFloat = 620
        
        //Position #2 = tofu Ingredient #1
        @State var xPosTofu: CGFloat = 100
        @State var yPosTofu: CGFloat = 500
        
        //Position #3 =  onion Ingredient #2
        @State var xPosOnion: CGFloat = 300
        @State var yPosOnion: CGFloat = 485
        
        @State var xPosFlour: CGFloat = 100
        @State var yPosFlour: CGFloat = 700
        
        @State var xPosSugar: CGFloat = 300
        @State var yPosSugar: CGFloat = 700
        
        @State var xPosCinnamon: CGFloat = 100
        @State var yPosCinnamon: CGFloat = 890
        
        @State var xPosOil: CGFloat = 300
        @State var yPosOil: CGFloat = 890
        
        @State var xPosTSauce: CGFloat = 100
        @State var yPosTSauce: CGFloat = 1100
        
        @State var xPosWater: CGFloat = 300
        @State var yPosWater: CGFloat = 1100
        
        @State var xPos10: CGFloat = 1300
        @State var yPos10: CGFloat = 250
        
        @State var xPos11: CGFloat = 1100
        @State var yPos11: CGFloat = 250
        
        @State var xPos12: CGFloat = 1200
        @State var yPos12: CGFloat = 250
        
        
        
        @State var collision: Bool = false
        @State private var audioPlayer:  AVAudioPlayer?
        
        var body: some View {
           
            ZStack {
                Image("stovetop")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1387, height: 1387)
                Image("pot")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 750, height: 750)
                                .position(x: self.xPosPot, y: self.yPosPot)
                Image("tofu")
                    .position(x: self.xPosTofu, y:self.yPosTofu)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosTofu = value.location.x
                                self.yPosTofu = value.location.y
                                self.checkCollision()
                                
                            })
                    )
                Image("onion")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                    .position(x: self.xPosOnion, y:self.yPosOnion)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosOnion = value.location.x
                                self.yPosOnion = value.location.y
                                self.checkCollision()
                                
                            })// on changed ending brace
                    )// gesture ending brace
                                
                Image("flour")
                    .position(x: self.xPosFlour, y:self.yPosFlour)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosFlour = value.location.x
                                self.yPosFlour = value.location.y
                                self.checkCollision()
                                
                            })// onchanged ending brace
                    )// gesture ending brace
            
                Image("sugar")
                    .position(x: self.xPosSugar, y:self.yPosSugar)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosSugar = value.location.x
                                self.yPosSugar = value.location.y
                                self.checkCollision()
                                
                            })//on changed ending brace
                    )// gesture ending brace
                Image("cinnamon")
                    .position(x: self.xPosCinnamon, y:self.yPosCinnamon)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosCinnamon = value.location.x
                                self.yPosCinnamon = value.location.y
                               self.checkCollision()
                                
                            })// on changed ending brace
                    )// gesture ending brace
                Image("oil")
                    .resizable()
                    .scaledToFit()
                    .frame ( width: 160, height: 160)
                    .position(x: self.xPosOil, y:self.yPosOil)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosOil = value.location.x
                                self.yPosOil = value.location.y
                                self.checkCollision()
                                
                            })//on changed ending brace
                    )// gesture ending brace
                Image("tomatoSauce")
                    .position(x: self.xPosTSauce, y:self.yPosTSauce)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosTSauce = value.location.x
                                self.yPosTSauce = value.location.y
                               self.checkCollision()
                                
                            })// on changed ending brace
                    )//gesture ending brace
                Image("water")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 170)
                    .position(x: self.xPosWater, y:self.yPosWater)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPosWater = value.location.x
                                self.yPosWater = value.location.y
                                self.checkCollision()
                                
                            })// on changed ending brace
                    )// gesture ending brace
                
                Image("fireUnlit")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .position(x: self.xPos10, y:self.yPos10)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos10 = value.location.x
                                self.yPos10 = value.location.y
                                self.checkCollision()
                                
                            })// on changed ending brace
                    )// gesture ending brace
                Image("fireUnlit")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .position(x: self.xPos11, y:self.yPos11)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos11 = value.location.x
                                self.yPos11 = value.location.y
                                self.checkCollision()
                            })// on changed ending brace
                    )// gesture ending brace
                Image("fireUnlit")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .position(x: self.xPos12, y:self.yPos12)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos12 = value.location.x
                                self.yPos12 = value.location.y
                                self.checkCollision()
                                
                            })// on changed ending brace
                    )// gesture ending brace
                
            } // zstack ending brace
        } // var body ending brace
func checkCollision () {
    if abs(self.xPosPot - self.xPosFlour) < 100 && abs(self.yPosPot - self.yPosFlour) < 100 {
        self.collision = true
    } else if abs(self.xPosPot - self.xPosTofu) < 100 && abs (self.xPosPot - self.yPosTofu) < 100 {
        self.collision = true
    } else if abs(self.xPosPot - self.xPosOnion) < 100 && abs (self.xPosPot - self.yPosOnion) < 100 {
        self.collision = true
    } else if abs (self.xPosPot - self.xPosCinnamon) < 100 && abs (self.xPosPot - self.yPosCinnamon) < 100 {
        self.collision = true
    } else if abs (self.xPosPot - xPosOil) < 100 && abs (self.xPosPot - self.yPosOil) < 100 {
        self.collision = true
    } else if abs (self.xPosPot - self.xPosSugar) < 100 && abs (self.yPosPot - self.yPosSugar) < 100 {
        self.collision = true
    } else if abs (self.xPosPot - self.xPosTSauce) < 100 && abs (self.xPosPot - self.yPosTSauce) < 100 {
        self.collision = true
    } else if abs (self.xPosPot - self.xPosWater) < 100 && abs (self.xPosPot - self.yPosWater) < 100 {
        self.collision = true
    }//if else statements ending brace
} //func ending brace
} //struct ending brace


#Preview {
    PotView()
}
