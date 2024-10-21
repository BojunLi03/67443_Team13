import SwiftUI

struct ResetPasswordPage: View {
    @State private var email = ""
    @State private var isLinkSent = false

    var body: some View {
        VStack(spacing: 20) {

            // Reset Password Text
            Text("Reset password")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)

            // Instructional Text
            Text("Enter the email associated with your account and we'll send an email with instructions to reset your password.")
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal, 16)
                .multilineTextAlignment(.leading)

            // Email Input Field
            TextField("Email address", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 16)
                .keyboardType(.emailAddress)

            // Send Instructions Button
            Button(action: {
                // Simulate sending reset link
                isLinkSent = true
            }) {
                Text("Send Instructions")
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
        .alert(isPresented: $isLinkSent) {
            Alert(
                title: Text("Check your mail"),
                message: Text("We have sent a password recover instructions to your email."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct ResetPasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordPage()
    }
}
