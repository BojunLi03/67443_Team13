import SwiftUI

struct LoginPage: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 0) {
            // Gray Header
            ZStack {
                Color(UIColor.systemGray5) // Light gray background color
                    .frame(height: 60) // Set the height for the header
                    .edgesIgnoringSafeArea(.top) // Extend to the edges of the screen
                
                Text("Log In")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity) // Make sure it extends horizontally

            // Form content inside a NavigationView
            NavigationView {
                VStack(spacing: 20) {
                    // Bold Header
                    Text("Login")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .padding(.top, 20)
                                            .frame(maxWidth: .infinity, alignment: .center)
                    
                    // Input fields
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    // Forgot Password Link
                    HStack {
                        Spacer()
                        NavigationLink(destination: ResetPasswordPage()) {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .underline()
                                .foregroundColor(.black)
                        }
                    }
                    
                    // Log In Button
                    Button(action: {
                        // Action for login
                        print("Log In button tapped")
                    }) {
                        Text("Log In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .navigationBarHidden(true)
            }
        }
        .edgesIgnoringSafeArea(.top) // Make sure the header aligns at the top of the screen
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
        
    }
}
