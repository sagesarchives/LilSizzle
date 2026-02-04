//
//  StovetopView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/1/26.
//

import SwiftUI

struct SkilletView: View {
    var body: some View {
        ZStack {
            Image("stovetop")
                .resizable()
                .scaledToFit()
                .frame(width: 1387, height: 1387)
            Text("[ skillet goes on here ]")
                .font(Font.largeTitle.bold())
                .foregroundColor(.white)
        } // zstack ending brace
    } // var body ending brace
} // struct ending brace

#Preview {
    SkilletView()
}
