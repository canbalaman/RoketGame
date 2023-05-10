import SwiftUI

struct StoriesView: View {
    let text: String
    let chunkSize: Int // istediğiniz kısım boyutunu belirleyen bir değişken
    @State private var chunkIndex: Int = 0 // gösterilen kısımın indeksini tutacak state
    
    var body: some View {
        
        VStack {
            Spacer()
            ScrollView {
                Spacer()
                Text(getChunk())
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            HStack {
                Button(action: previousChunk) {
                    Image(systemName: "chevron.backward")
                    Text("Geri")
                        .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(15.0)
                }
                .disabled(chunkIndex == 0) // ilk kısımda geri butonu disable edilir

                Spacer()

                Button(action: nextChunk) {
                    
                    Text("İleri")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(15.0)
                    Image(systemName: "chevron.forward")
                    
                }
                .disabled(getChunk().count < chunkSize) // son kısımda ileri butonu disable edilir
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }

    // verilen chunk boyutunda metnin bir kısmını döndürür
    func getChunk() -> String {
        let startIndex = text.index(text.startIndex, offsetBy: chunkIndex * chunkSize)
        let endIndex = text.index(startIndex, offsetBy: chunkSize, limitedBy: text.endIndex) ?? text.endIndex
        return String(text[startIndex..<endIndex])
    }
    
    // gösterilen kısımın indeksini bir azaltır
    func previousChunk() {
        chunkIndex -= 1
    }
    
    // gösterilen kısımın indeksini bir artırır
    func nextChunk() {
        chunkIndex += 1
    }
}



struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(text: "Gezegenimizdeki genç bir bilim insanı olan Burak, yıllar boyunca uzay keşiflerine merak salmıştı. Her gece, evinin çatısına çıkıp yıldızları izliyor ve uzayın derinliklerine hayranlıkla bakıyordu.Bir gün, Burak'in hayalleri gerçek olmuştu. Kendisi ve ekibi, uzayda keşif yapmak için özel olarak tasarlanmış bir roket inşa etmişti. Burak, roketin kontrol panelinin başında heyecanla bekliyordu.              Ekibi de, görev için hazırlıklarını tamamlamışlardı.Roketi fırlatmak için son hazırlıklar yapıldı ve Burak, roketi yavaşça hareket ettirmeye başladı. İlk aşama sorunsuz geçti ve roket yavaş yavaş yükselmeye başladı. Burak, ekranları izlerken roketin yönünü kontrol ediyordu.Ancak, bir anda, roketin kontrol panelinde bir uyarı ışığı yanmaya başladı.                                                      Burak, hemen ekibine haber verdi ve roketin sorununu çözmek için elinden geleni yaptı. Ekibi de, elinden geleni yaparak roketin kontrolünü geri kazanmak için çalıştı.Uzun süren bir mücadeleden sonra, Burak ve ekibi sorunu çözmeyi başardı ama büyük bir  sorun vardı roket çok küçüktü bunun için Burak ve ekibi yeni ve daha büyük bir roket çizmek istiyordu.                                   Bu konuda yardım almak için ise Deneyimli Mühendis Can'dan yardım almak istedi ama Can Daha önce böyle büyük bir roket yapmamıştı Can' a yardım etmek istermisin ", chunkSize: 400)
    }
}
