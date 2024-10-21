import SwiftUI

struct SignUpPage2: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sign Up")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            // Username field
            TextField("Username", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            // Password field
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            // Password Confirmation field
            SecureField("Password Confirmation", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            // Password requirements
            VStack(alignment: .leading, spacing: 5) {
                Text("Password must contain:")
                    .font(.subheadline)
                Text("• at least 7 characters")
                Text("• at least 1 number")
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(8)
            
            // Confirm Button
            Button(action: {
                // Handle sign up logic here
                print("Sign up confirmed")
            }) {
                Text("Confirm")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .padding(.top, 30)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationBarBackButtonHidden(false)
    }
}

struct SignUpPage2_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage2()
    }
}
