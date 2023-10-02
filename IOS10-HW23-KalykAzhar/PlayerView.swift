import SwiftUI

struct PlayerView: View {
    var body: some View {
            HStack {
                Image("joji")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 52, height: 52)
                    .shadow(radius: 5)
                Text("Joji - Demons")
                Spacer()
                Image(systemName: "play.fill")
                    .frame(width: 35)
                Image(systemName: "forward.fill")
                    .frame(width: 35)
                
            }
            .position(x: 180, y: 660)
            .padding()
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
