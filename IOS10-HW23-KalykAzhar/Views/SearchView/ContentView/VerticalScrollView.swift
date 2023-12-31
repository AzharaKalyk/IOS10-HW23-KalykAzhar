import SwiftUI

struct VerticalScrollView: View {
    
    let columns = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 2.3))]
    let searchCategoryList = ModelCategoryList.dataList
    
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                Text("Поиск по категориям")
                    .fontWeight(.heavy)
                    .font(.system(size: 20))
                
                Spacer()
            }
            .padding(.bottom, -4)
            
            LazyVGrid(columns: columns) {
                ForEach(searchCategoryList) { model in
                    NavigationLink {
                        DetailCategoryView(modelTitle: model)
                    } label: {
                        RowVerticalView(model: model)
                    }
                }
            }
        }
    }
}

struct VerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalScrollView()
    }
}
