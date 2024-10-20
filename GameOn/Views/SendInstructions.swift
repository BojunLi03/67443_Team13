import SwiftUI

struct CheckYourMailPage: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Image(systemName: "envelope.fill") // Replace with a custom envelope image if needed
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)

            Text("Check your mail")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("We have sent a password recover instructions to your email.")
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)

            // Open Email App Button
            Button(action: {
                // Action to open email app
            }) {
                Text("Open email app")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 16)

            Button(action: {
                // Skip action
            }) {
                Text("Skip, I’ll confirm later")
                    .foregroundColor(.gray)
            }

            Text("Did not receive the email? Check your spam filter, or try another email address")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)

            Spacer()
        }
    }
}

struct CheckYourMailPage_Previews: PreviewProvider {
    static var previews: some View {
        CheckYourMailPage()
    }
}
