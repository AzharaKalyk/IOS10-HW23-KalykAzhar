import SwiftUI

struct PlayerView: View {
    
    @State var showModalView = false
    
    var body: some View {
        HStack {
            HStack {
                Button {
                    showModalView = true
                } label: {
                    Image("joji")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .shadow(radius: 5)
                }
                
                Button {
                    showModalView = true
                } label: {
                    Text("Joji - Demons")
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .popover(isPresented: $showModalView) {
                DetailPlayerMusic()
            }
            
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
        .position(x: 180, y: 660)
        .padding()
        
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

