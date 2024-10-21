import SwiftUI

struct InitialPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Image("backgroundImage") // Replace with your actual image name
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    // GameOn! Logo
                    Text("Game")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.black) +
                    Text("On!")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.red)
                    
                    // Sports Icons (replace with your icon names)
                    HStack(spacing: 16) {
                        Image(systemName: "volleyball.fill") // Replace with your actual icon
                            .resizable()
                            .frame(width: 40, height: 40)
                        Image(systemName: "soccerball") // Replace with your actual icon
                            .resizable()
                            .frame(width: 40, height: 40)
                        Image(systemName: "football") // Replace with your actual icon
                            .resizable()
                            .frame(width: 40, height: 40)
                        Image(systemName: "baseball.fill") // Replace with your actual icon
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 40)
                    
                    // Navigation Buttons
                    VStack(spacing: 16) {
                        NavigationLink(destination: LoginPage()) {
                            Text("Log In")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(10)
                        }
                        .frame(width: 200)
                        
                        NavigationLink(destination: SignUpPage1()) {
                            Text("Sign Up")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(10)
                        }
                        .frame(width: 200)
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 40)
            }
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

struct InitialPage_Previews: PreviewProvider {
    static var previews: some View {
        InitialPage()
    }
}
