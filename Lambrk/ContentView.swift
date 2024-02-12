//
//  ContentView.swift
//  Lambrk
//
//  Created by Debarun Lahiri on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    @State private var usernameError: Bool = false
    @State private var passwordError: Bool = false
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
            VStack (spacing: 42) {
                Text("Sign In")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding(.top)
                
                VStack (spacing: 16) {
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8.0)
                        .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(usernameError ? Color.red : Color.clear, lineWidth: 2))
                        .onChange(of: username) { newValue in
                            usernameError = newValue.isEmpty
                        }
                        .padding(.top, 10)
                    
                    if usernameError {
                        HStack(alignment: .center, spacing: 0, content: {
                            Text("Please enter a username")
                                .foregroundColor(.red)
                                .padding(.top, 2)
                                .padding(.leading, 8)
                            Spacer()
                        })
                    }
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8.0)
                        .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(passwordError ? Color.red : Color.clear, lineWidth: 2))
                        .onChange(of: password) { newValue in
                            passwordError = newValue.isEmpty
                        }
                    
                    if passwordError {
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                            Text("Please enter password")
                                .foregroundColor(.red)
                                .padding(.top, 2)
                                .padding(.leading, 8)
                            Spacer()
                        })
                        
                    }
                    
                    Button(action: {
                        usernameError = username.isEmpty
                        passwordError = password.isEmpty
                        
                        if !username.isEmpty && !password.isEmpty {
                            showAlert = true
                        }
                        
                    }, label: {
                        Text("Login")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8.0)
                        
                    }).alert(isPresented: $showAlert) {
                        Alert(title: Text("Login Information"),
                              message: Text("Username: \(username)\nPassword: \(password)"),
                              dismissButton: .default(Text("Ok")))
                    }
                    
                    HStack {
                        Spacer()
                        Text("Forgot Password")
                            .foregroundStyle(.blue)
                            .padding(.top, 8)
                            .padding(.bottom, 20)
                    }
                    
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(.systemBackground))
                .cornerRadius(16.0)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundStyle(.gray)
                    
                    NavigationLink(destination: Text("Sign UP")) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            .preferredColorScheme(.dark)
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)*")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
