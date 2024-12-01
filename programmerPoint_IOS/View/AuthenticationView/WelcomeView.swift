//
//  WelcomeView.swift
//  programmerPoint_IOS
//
//  Created by Amit Singh Raghuvanshi on 30/11/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.black
            VStack {
                Text("Programmer Dating\n Point")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
