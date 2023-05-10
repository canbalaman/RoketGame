import SwiftUI



struct Welcomeview : View {
    let longText = "Gezegenimizdeki genç bir bilim insanı olan Burak, yıllar boyunca uzay keşiflerine merak salmıştı. Her gece, evinin çatısına çıkıp yıldızları izliyor ve uzayın derinliklerine hayranlıkla bakıyordu.Bir gün, Burak'in hayalleri gerçek olmuştu. Kendisi ve ekibi, uzayda keşif yapmak için özel olarak tasarlanmış bir roket inşa etmişti. Burak, roketin kontrol panelinin başında heyecanla bekliyordu.              Ekibi de, görev için hazırlıklarını tamamlamışlardı.Roketi fırlatmak için son hazırlıklar yapıldı ve Burak, roketi yavaşça hareket ettirmeye başladı. İlk aşama sorunsuz geçti ve roket yavaş yavaş yükselmeye başladı. Burak, ekranları izlerken roketin yönünü kontrol ediyordu.Ancak, bir anda, roketin kontrol panelinde bir uyarı ışığı yanmaya başladı.                                                      Burak, hemen ekibine haber verdi ve roketin sorununu çözmek için elinden geleni yaptı. Ekibi de, elinden geleni yaparak roketin kontrolünü geri kazanmak için çalıştı.Uzun süren bir mücadeleden sonra, Burak ve ekibi sorunu çözmeyi başardı ama büyük bir  sorun vardı roket çok küçüktü bunun için Burak ve ekibi yeni ve daha büyük bir roket çizmek istiyordu.                                   Bu konuda yardım almak için ise Deneyimli Mühendis Can'dan yardım almak istedi ama Can Daha önce böyle büyük bir roket yapmamıştı Can' a yardım etmek istermisin"
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Text("Hoş Geldin Burak")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15.0)
                    
                    VStack {
                        NavigationLink(destination: StoriesView(text: longText, chunkSize: 400)) {
                            Text("Oyna")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(15.0)
                        }
                    }
                }
            }
        }
    }
}


struct Welcomeview_Previews: PreviewProvider {
    static var previews: some View {
        Welcomeview()
    }
}
