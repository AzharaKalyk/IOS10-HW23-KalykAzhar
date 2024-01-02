import SwiftUI

struct PlayerView: View {
    
    @State var showModalView = false
    
    var body: some View {
        VStack {
            Spacer()
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
                            .padding([.trailing, .leading], 5)
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
            .padding()
        }
        .padding(.bottom, 30) 
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

