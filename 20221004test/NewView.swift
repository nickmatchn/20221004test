
import SwiftUI

struct HeaderView: View{
    @Binding var title:String
    var counter :Int = 0 //默認值為0
    
    init(title: Binding<String>) {
        self._title = title  //綁定類型加上 _
        let sentence = self._title.wrappedValue //wrappedValue獲取綁定的值，因為是綁定類型加上 _
        self.counter = sentence.count //計算字數
    }
    var body: some View{
        Text(self.title + "/ \(self.counter)")
    }
}


struct NewView: View {
    @State private var title:String = "HELLO"
    var body: some View {
        
        VStack{
            Text(self.title)
                .font(.title)
            HeaderView(title: self.$title)
            HStack {
                Button {
                    self.title = "HELLO WORLD"
                } label: {
                    Text("確定")
                        .font(.title)
                        .padding(10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(13)
                        .buttonStyle(.automatic)
                    Button {
                        self.title = ""
                    } label: {
                        Text("回復")
                            .font(.title)
                            .padding(10)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(13)
                            .buttonStyle(.automatic)
                    }
                    
                    
            }
            }

        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
