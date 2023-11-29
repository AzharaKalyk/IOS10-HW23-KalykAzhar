import SwiftUI

struct DetailPlayerMusic: View {
    
    @State var point: Float = 20
    @State private var startMusic = 0.0
    @State private var endMusic = -3.07
    @State private var value = 10.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors:
                            [.blue, Color(cgColor: .init(gray: 0.7, alpha: 0.6))],
                           startPoint: .leading,
                           endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image("joji")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 1.5,
                           height: UIScreen.main.bounds.width / 1.5)
                    .cornerRadius(10)
                    .shadow(radius: 20)
                    .padding(.bottom, 38)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Joji")
                            .bold(true)
                        Text("Demons")
                    }
                    .font(.system(size: 22))
                    Spacer()
                    
                        .padding()
                        .padding(.bottom, -20)
                    
                    // Реадизацмя 3х точек:D
                    Button {
                        print("")
                    } label: {
                        ZStack {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 26, height: 26)
                                .tint(Color(cgColor: .init(gray: 0.4, alpha: 1)))
                            Image(systemName: "ellipsis")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .tint(.white)
                        }
                    }
                }
                .padding()
                
                // Линия перемотки
                VStack {
                    Slider(value: $startMusic, in: 0...3.07)
                    HStack {
                        Text("\(startMusic, specifier: "%.2f")")
                        Spacer()
                        Text("\(endMusic + startMusic, specifier: "%.2f")")
                    }
                }
                .padding()
                .padding(.bottom, 20)
                HStack { // Сама перемотка
                    Button {
                    } label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 30)
                            .foregroundColor(.white)
                    }
                    
                    Button {
                    } label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .padding(.leading, 60)
                            .padding(.trailing, 60)
                            .foregroundColor(.white)
                    }
                    
                    Button {
                    } label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 20)
                HStack {
                    Button {} label: {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    Button {} label: {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.leading, 60)
                            .padding(.trailing, 60)
                    }
                    Button {} label: {
                        Image(systemName: "shuffle")
                            .resizable()
                            .frame(width: 25, height: 20)
                    }
                }
                .padding()
                .foregroundColor(.black)
            }
            .padding()
        }
    }
}
struct DetailPlayerMusic_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlayerMusic()
    }
}
