import SwiftUI

struct CreateNewPasswordPage: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isPasswordReset = false

    var body: some View {
        VStack(spacing: 20) {
            // Header with Back Button
            HStack {
                Button(action: {
                    // Action for back
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 20)

            // Create New Password Text
            Text("Create new password")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)

            // Instructional Text
            Text("Your new password must be different from previously used passwords.")
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal, 16)
                .multilineTextAlignment(.leading)

            // Password Input Field
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 16)

            // Password Requirements
            Text("Must be at least 8 characters.")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)

            // Confirm Password Field
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 16)

            Text("Both passwords must match.")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)

            // Reset Password Button
            Button(action: {
                // Action to reset password
                isPasswordReset = true
            }) {
                Text("Reset Password")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 16)

            Spacer()
        }
        .alert(isPresented: $isPasswordReset) {
            Alert(
                title: Text("Password Reset Successful"),
                message: Text("Your password has been successfully reset. You can now log in with your new password."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct CreateNewPasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewPasswordPage()
    }
}
