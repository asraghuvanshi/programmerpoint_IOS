//
//  LoginView.swift
//  programmerPoint_IOS
//
//  Created by Amit Singh Raghuvanshi on 30/11/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Text("Login")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 100)
                    
                    Spacer()
                    TextFieldView(name: UITitleName.userName, text: $username)
                        .padding(.top , 20)
                    TextFieldView(name: UITitleName.userPassword, text: $password, isSecure: true)
                        .padding(.top , 20)
                    
                    ButtonView(buttonTitle: UIButtonTitle.login)
                        .padding(.top , 20)
                    
                    HStack(spacing: 20) {
                        CircularButtonView(imageName: UIImageName.googleLogin)
                        CircularButtonView(imageName: UIImageName.githubLogin)
                        CircularButtonView(imageName: UIImageName.facebookLogin)
                    }
                    .padding(.top , 20)

                }
                .padding(.horizontal)
            }
        }
    }
}

struct TextFieldView: View {
    var name: String
    @Binding var text: String
    var isSecure: Bool = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(name, text: $text)
            } else {
                TextField(name, text: $text)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
        .frame(height: 45)
    }
}

struct ButtonView: View {
    var buttonTitle: String = ""
    var body: some View {
        Button(action: {
            // Handle login action
        }) {
            Text(buttonTitle)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(10)
        }
    }
}

struct CircularButtonView: View {
    var imageName: String
    
    var body: some View {
        Button(action: {
            // Handle social login action
        }) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .background(Color.white)
                .clipShape(Circle())
                .foregroundColor(.white)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .shadow(radius: 5)
        }
    }
}


#Preview {
    LoginView()
}
