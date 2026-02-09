//
//  PotView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/3/26.
//

import SwiftUI
import AVFoundation

    struct PotView: View {
        @State var xPos1: CGFloat = 940
        @State var yPos1: CGFloat = 620
        
        //Position #2 = Ingredient #1
        @State var xPos2: CGFloat = 100
        @State var yPos2: CGFloat = 500
        
        //Position #3 = Ingredient #3
        @State var xPos3: CGFloat = 300
        @State var yPos3: CGFloat = 485
        
        @State var xPos4: CGFloat = 100
        @State var yPos4: CGFloat = 700
        
        @State var xPos5: CGFloat = 300
        @State var yPos5: CGFloat = 700
        
        @State var xPos6: CGFloat = 100
        @State var yPos6: CGFloat = 890
        
        @State var xPos7: CGFloat = 300
        @State var yPos7: CGFloat = 890
        
        @State var xPos8: CGFloat = 100
        @State var yPos8: CGFloat = 1100
        
        @State var xPos9: CGFloat = 300
        @State var yPos9: CGFloat = 1100
        
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
                                .position(x: self.xPos1, y: self.yPos1)
                Image("tofu")
                    .position(x: self.xPos2, y:self.yPos2)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos2 = value.location.x
                                self.yPos2 = value.location.y
//                                self.collision()
                                
                            })
                    )
                Image("onion")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                    .position(x: self.xPos3, y:self.yPos3)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos3 = value.location.x
                                self.yPos3 = value.location.y
//                                self.collision()
                                
                            })
                    )
                                
                Image("flour")
                    .position(x: self.xPos4, y:self.yPos4)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos4 = value.location.x
                                self.yPos4 = value.location.y
//                                self.collision()
                                
                            })
                    )
            
                Image("sugar")
                    .position(x: self.xPos5, y:self.yPos5)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos5 = value.location.x
                                self.yPos5 = value.location.y
//                                self.collision()
                                
                            })
                    )
                Image("cinnamon")
                    .position(x: self.xPos6, y:self.yPos6)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos6 = value.location.x
                                self.yPos6 = value.location.y
//                                self.collision()
                                
                            })
                    )
                Image("salt")
                    .position(x: self.xPos7, y:self.yPos7)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos7 = value.location.x
                                self.yPos7 = value.location.y
//                                self.collision()
                                
                            })
                    )
                Image("tomatoSauce")
                    .position(x: self.xPos8, y:self.yPos8)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos8 = value.location.x
                                self.yPos8 = value.location.y
//                                self.collision()
                                
                            })
                    )
                Image("oatMilk")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .position(x: self.xPos9, y:self.yPos9)
                    .gesture(
                        DragGesture()
                            .onChanged({value in
                                self.xPos9 = value.location.x
                                self.yPos9 = value.location.y
//                                self.collision()
                                
                            })
                    )
                
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
//                                self.collision()
                                
                            })
                    )
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
//                                self.collision()
                                
                            })
                    )
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
//                                self.collision()
                                
                            })
                    )
                
            } // zstack ending brace
        } // var body ending brace
    } // struct ending brace

#Preview {
    PotView()
}
