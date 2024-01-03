import SwiftUI

struct RowVerticalView: View {
    
    let model: ModelCategoryList
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Image(model.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2.2,
                           height: UIScreen.main.bounds.width / 3)
                    .cornerRadius(11)
                
                HStack {
                    Text(model.title)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .padding(.top, 85)
                        .padding(.leading, 10)
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width / 2.1)
            }
        }
    }
}

struct RowVerticalView_Previews: PreviewProvider {
    static var previews: some View {
        RowVerticalView(model: ModelCategoryList(image: "One",
                                                 title: "Зимняя время"))
    }
}
