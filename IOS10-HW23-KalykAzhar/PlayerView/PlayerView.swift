import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image("joji")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 52, height: 52)
                    .shadow(radius: 5)
                Text("Joji - Demons")
                Spacer()
                Button {
                } label: {
                    Image(systemName: ImagesForPlayerView.play)
                        .font(.title2)
                        .foregroundColor(Color.black)
                }
                Button {
                } label: {
                    Image(systemName: ImagesForPlayerView.forward)
                        .font(.title2)
                        .foregroundColor(Color.black)
                }
            }
            .padding()
            .padding(.bottom, 40)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

enum ImagesForPlayerView {
    static let play = "play.fill"
    static let forward = "forward.fill"
}