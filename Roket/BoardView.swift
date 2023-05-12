import SwiftUI

struct BoardView: View {
    
    let rows = 14
    let columns = 13
    
    var body: some View {
        VStack(spacing:0) {
            
            
            ForEach(0..<rows) { row in
                HStack(spacing:0) {
                    ForEach(0..<columns) { column in
                        Rectangle()
                            .fill(Color("CustomColor"))
                            .frame(width: 30, height: 30)
                            .overlay(
                                Rectangle()
                                    .stroke(Color("Gold"), lineWidth: 1)
                            )
                    }
                }
            }
            Spacer()
            
            HStack(spacing:50) {
                Button(action: {}) {
                    Image(systemName: "arrow.left.square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.up.square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.down.square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.right.square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
            }
            .frame(height: 70)
            .padding(.horizontal)
        }
        .background(Image("BoardBackground")
            .resizable()
        )
        .padding(.horizontal)
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}

