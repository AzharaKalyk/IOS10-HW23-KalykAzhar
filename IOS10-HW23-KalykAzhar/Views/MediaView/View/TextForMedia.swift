import SwiftUI

struct TextForMedia: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .fontWeight(.heavy)
                
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
            }
            .position(x: 200, y: 250)
        }
    }
}

struct TextForMedia_Previews: PreviewProvider {
    static var previews: some View {
        TextForMedia()
    }
}
