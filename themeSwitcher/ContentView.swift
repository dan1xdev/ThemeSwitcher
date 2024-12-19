
import SwiftUI

struct ContentView: View {
    @State private var isDarkMode = false
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("object")
                    .onTapGesture {
                        isDarkMode.toggle()
                    }
                Spacer()
                Text(isDarkMode ? "Ночь" : "День")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .bold()
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
