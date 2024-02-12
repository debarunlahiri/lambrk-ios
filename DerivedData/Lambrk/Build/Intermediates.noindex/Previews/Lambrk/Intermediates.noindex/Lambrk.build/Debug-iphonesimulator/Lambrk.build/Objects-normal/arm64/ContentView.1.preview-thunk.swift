@_private(sourceFile: "ContentView.swift") import Lambrk
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension WeatherDayView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/debarunlahiri/XcodeProjects/Lambrk/Lambrk/ContentView.swift", line: 138)
        VStack {
            Text(dayOfWeek)
                .font(.system(size: __designTimeInteger("#1607.[3].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16), weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: __designTimeInteger("#1607.[3].[3].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 40), height: __designTimeInteger("#1607.[3].[3].property.[0].[0].arg[0].value.[1].modifier[3].arg[1].value", fallback: 40))
            Text("\(temperature)*")
                .font(.system(size: __designTimeInteger("#1607.[3].[3].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .medium))
                .foregroundColor(.white)
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/debarunlahiri/XcodeProjects/Lambrk/Lambrk/ContentView.swift", line: 19)
        ZStack {
//            LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
            VStack (spacing: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 42)) {
                Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Sign In"))
                    .font(.system(size: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 32), weight: .medium, design: .default))
                    .padding(.top)
                
                VStack (spacing: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: 16)) {
                    
                    TextField(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "Username"), text: $username)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(__designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 8.0))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 8.0)).stroke(usernameError ? Color.red : Color.clear, lineWidth: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)))
                        .onChange(of: username) { newValue in
                            usernameError = newValue.isEmpty
                        }
                        .padding(.top, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[1].value", fallback: 10))
                    
                    if usernameError {
                        HStack(alignment: .center, spacing: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].[0].[0].arg[1].value", fallback: 0), content: {
                            Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value", fallback: "Please enter a username"))
                                .foregroundColor(.red)
                                .padding(.top, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].modifier[1].arg[1].value", fallback: 2))
                                .padding(.leading, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].modifier[2].arg[1].value", fallback: 8))
                            Spacer()
                        })
                    }
                    
                    SecureField(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value", fallback: "Password"), text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(__designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].modifier[2].arg[0].value", fallback: 8.0))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].modifier[3].arg[0].value.arg[0].value", fallback: 8.0)).stroke(passwordError ? Color.red : Color.clear, lineWidth: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)))
                        .onChange(of: password) { newValue in
                            passwordError = newValue.isEmpty
                        }
                    
                    if passwordError {
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].[0].[0].arg[1].value", fallback: 0), content: {
                            Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].[0].[0].arg[2].value.[0].arg[0].value", fallback: "Please enter password"))
                                .foregroundColor(.red)
                                .padding(.top, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].[0].[0].arg[2].value.[0].modifier[1].arg[1].value", fallback: 2))
                                .padding(.leading, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].[0].[0].arg[2].value.[0].modifier[2].arg[1].value", fallback: 8))
                            Spacer()
                        })
                        
                    }
                    
                    Button(action: {
                        usernameError = username.isEmpty
                        passwordError = password.isEmpty
                        
                        if !username.isEmpty && !password.isEmpty {
                            showAlert = __designTimeBoolean("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[0].value.[2].[0].[0].[0]", fallback: true)
                        }
                        
                    }, label: {
                        Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: "Login"))
                            .foregroundStyle(.white)
                            .font(.headline)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(__designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[1].value.[0].modifier[5].arg[0].value", fallback: 8.0))
                        
                    }).alert(isPresented: $showAlert) {
                        Alert(title: Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].modifier[0].arg[1].value.[0].arg[0].value.arg[0].value", fallback: "Login Information")),
                              message: Text("Username: \(username)\nPassword: \(password)"),
                              dismissButton: .default(Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].modifier[0].arg[1].value.[0].arg[2].value.arg[0].value.arg[0].value", fallback: "Ok"))))
                    }
                    
                    HStack {
                        Spacer()
                        Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[5].arg[0].value.[1].arg[0].value", fallback: "Forgot Password"))
                            .foregroundStyle(.blue)
                            .padding(.top, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[5].arg[0].value.[1].modifier[1].arg[1].value", fallback: 8))
                            .padding(.bottom, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[5].arg[0].value.[1].modifier[2].arg[1].value", fallback: 20))
                    }
                    
                }
                .padding(.horizontal, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 20))
                .padding(.vertical, __designTimeInteger("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[1].value", fallback: 10))
                .background(Color(.systemBackground))
                .cornerRadius(__designTimeFloat("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 16.0))
                
                Spacer()
                
                HStack {
                    Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[0].value.[0].arg[0].value", fallback: "Don't have an account?"))
                        .foregroundStyle(.gray)
                    
                    NavigationLink(destination: Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Sign UP"))) {
                        Text(__designTimeString("#1607.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Sign Up"))
                            .foregroundColor(.blue)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            .preferredColorScheme(.dark)
            
            
        }
    
#sourceLocation()
    }
}

import struct Lambrk.ContentView
import struct Lambrk.WeatherDayView
#Preview {
    ContentView()
}



