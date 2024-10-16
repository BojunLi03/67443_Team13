import SwiftUI

struct SignUpPage1: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDay = ""
    @State private var birthMonth = ""
    @State private var birthYear = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Sign Up")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                // Input fields
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
                
                HStack(spacing: 10) {
                    TextField("Day", text: $birthDay)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .frame(width: 60)
                        .keyboardType(.numberPad)
                    
                    TextField("Month", text: $birthMonth)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .frame(width: 60)
                        .keyboardType(.numberPad)
                    
                    TextField("Year", text: $birthYear)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .frame(width: 80)
                        .keyboardType(.numberPad)
                }
                
                // Next Button
                NavigationLink(destination: SignUpPage2()) {
                    Text("Next")
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SignUpPage1_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage1()
    }
}
