# USByazma-koruma
USB donanımları bilgisayara yazma korumalı takabilmek için registry'de geçici düzenleme yapan .bat dosyasıdır.

Windows ortamında "Yönetici olarak Çalıştır"malısınız. Bu sayede registry dosyanızın aktifte çalışan temp klasörü altındaki geçici 
dosyasına ulaşarak orada USB yazma yetkisinin kapatabilirsiniz. 

USB yazma koruması bu uygulamada real-time (gerçek zamanlı) çalışmaktadır. USB disk takılı iken yazma korumasını aktif ederseniz,
o andan itibaren yazma yetkisi pasif olacaktır. Bunun için diski çıkarıp yeniden takmanıza gerek yok. Aynı durum tersi için de geçerli.

Uygulamayı kapattığınız anda; hangi modda olduğunuza bakılmaksızın (yazma koruması aktif/yazma koruması pasif) kendiliğinden 
yazma koruması kapanır ve artık yeni taktığınız USB disklere yazma yetkisi geri gelir.


GÜNCELLEMELER
=============
28/06/2016
Bazı durumlarda ekrandaki yazıların okunabilmesi için öncelikle yazı rengi seçimi özelliği eklendi.
