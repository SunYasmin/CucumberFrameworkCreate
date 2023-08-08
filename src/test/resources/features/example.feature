#Comment
  @tag
  Feature: Eating too many cucumbers may not be good for you

    Eating too much of anything may not be good for you

    Scenario: Eating a few is no problem
      Given Alice is hungary
      When she eats 3 cucumbers
      Then she will be full


  Feature: Guess the word

    # The first example has two steps
    Scenario: Maker starts a game
      When the Maker starts a game
      Then the Maker waits for a Breaker to join

    # The second example has three steps
    Scenario: Breaker joins a game
      Given the Maker has started a game with the word "silky"
      When the Breaker joins the Maker's game
      Then the Breaker must guess a word with 5 characters



# Not :Gherkin Language Hakkında
#Gherkin bir plain-text language'dir. Yazılımcı olmayan kişiler tarafından öğrenilebilecek şekilde tasarlanmıştır. İçerisinde bazı anahtar kelimeleri kullanarak kısa ve düzgün bir hikaye anlatımı sağlanmaya çalışılmıştır.
#
#Gherkin Syntax
#Feature: Testini yapacağımız konunun başlığıdır.
#
#Rule (Gherkin 6 ve sonrası için): Feature için iş kuralı tanımlamamıza yarar. Bir veya daha fazla senaryoyu kapsayabilir.
#
#Background: Tüm senaryolar için ortak adım olarak kullanılır. Eğer senaryolarınızda uymayan anlamlar varsa yeni bir "Background" yazıp diğer senaryoları onun altına yazabilirsiniz.
#
#Example / Scenario: İki anahtar kelime de aynı anlama gelmektedir. Farklı senaryolar yazarken çok fazla adım yazabilirsiniz ama senaryo başı önerilen adım sayısı 3 – 5 arasındadır.
#
#Given: Senaryo sahnesini tanımlamak için kullanılır. Zorunludur.
#
#When: Bir olayı veya eylemi tanımlamak için kullanılır.
#
#Then: Beklenen sonucu tanımlamak için kullanılır. Zorunludur.
#
#And: Verilenleri yazarken alt alta "Given" anahtar kelimesi kullanabilirsiniz veya onun yerine "And" anahtar kelimesini kullanarak ilk "Given" tanımından sonra ekleme yapabilirsiniz. (*) ifadesini "And" yerine yazarak da kullanabilirsiniz.
#
#But: Negatif durumlarla kullanılır.
#
#Scenario Outline: Bu anahtar kelime Aynı senaryoyu farklı değerlerle kullanmaya yarar.
#Scenario Outline Example
#Scenario Outline
    Scenario Outline: eating
      Given there are <start> cucumbers
      When I eat <eat> cucumbers
      Then I should have <left> cucumbers

      Examples:
        | start | eat | left |
        |    12 |   5 |    7 |
        |    20 |   5 |   15 |

      #NOT : Sari boyali satirlar uzerine mouse ile geldiginizde acilan pop up ile "Create step definition- tek bir adim icin"
      # veya "More Actions - butun adimlar icin" mavi renkli
      # yazi tiklanarak step definition package i altinda yer secilerek uygun isimlendirme yapilarak
      # Gherkin dilindeki scenario adimlarina gore
      # gerekli test method isimlerinin hazir bir sekilde geldigi step definition classi kolayca olusturulabilir.
      # Bu sekilde step definition classlarinda hazir gelen method adlari icerisine gerekli test kodlari yazilir.



  #Data Tables
  #Data Tables , bir değer listesini bir step definition a geçirmek için kullanışlıdır:
      Given the following users exist:
        | name   | email              | twitter         |
        | Aslak  | aslak@cucumber.io  | @aslak_hellesoy |
        | Julien | julien@cucumber.io | @jbpros         |
        | Matt   | matt@cucumber.io   | @mattwynne      |


  #Table Cell Escaping
  #If you want to use a newline character in a table cell, you can write this as \n.
  # If you need a | as part of the cell, you can escape it as \|.
  # And finally, if you need a \, you can escape that with \\.

    #Tablo hücresinde yeni satıra gecmek icin satira nerede gecmesini istiyorsaniz \n olarak yazabilirsiniz.
    # Bir | hücrenin bir parçası olarak ondan \| olarak kaçabilirsiniz.
    # Son olarak, bir \'ye ihtiyacınız varsa, \\ ile bundan kaçabilirsiniz.

# Ornek coklu yorum satiri
    """
multiple
 comment
  lines
"""
    # "*" Karakteri: Gherkin, normal adım
    # anahtar kelimelerinden(given , when , then , and , but) herhangi birinin yerine yıldız işareti (*)
    # kullanılmasını da destekler.