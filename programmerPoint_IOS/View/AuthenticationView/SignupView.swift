//
//  SignupView.swift
//  programmerPoint_IOS
//
//  Created by Amit Singh Raghuvanshi on 01/12/24.
//

import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Text("SignUp")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 100)
                    
                    Spacer()
                    TextFieldView(name: UITitleName.userName, text: $username)
                        .padding(.top , 20)
                    TextFieldView(name: UITitleName.userEmail, text: $password, isSecure: false)
                    TextFieldView(name: UITitleName.phoneNumber, text: $password, isSecure: false)
                    TextFieldView(name: UITitleName.userPassword, text: $password, isSecure: true)
                    
                    ButtonView(buttonTitle: UIButtonTitle.signup)
                        .padding(.top , 20)
                    
                    
                    HStack(spacing: 20) {
                        CircularButtonView(imageName: UIImageName.googleLogin)
                        CircularButtonView(imageName: UIImageName.githubLogin)
                        CircularButtonView(imageName: UIImageName.facebookLogin)
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Already have an account? Login")
                            .foregroundStyle(Color.black)
                    })
                    .padding(.top , 20)
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SignupView()
}
