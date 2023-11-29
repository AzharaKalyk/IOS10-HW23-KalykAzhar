import SwiftUI

struct PlayListView: View {
    
    @Binding var model: ModelDetailView
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Избранный плейлист")
                .fontWeight(.heavy)
                .font(.system(size: 14))
                .foregroundColor(Color(CGColor(gray: 0.45, alpha: 1)))
            
            Text(model.namePlaylist.randomElement() ?? "")
                .font(.system(size: 17))
            
            Text("Apple Music")
                .font(.system(size: 17))
                .foregroundColor(Color(CGColor(gray: 0.45, alpha: 1)))
            
            ZStack {
                Image(model.image.randomElement() ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 1.1,
                           height: UIScreen.main.bounds.width / 1.4)
                    .cornerRadius(10)
                
                HStack {
                    Text(model.title.randomElement() ?? "")
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .font(.system(size: 13))
                        .padding(.top, 200)
                        .padding(.leading)
                    
                    Spacer()
                }
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width)
    }
}
