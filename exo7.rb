#on demande a l'utilisateur d'ecrire un mot
puts "ecrire un mot"
#on donne a la variable mot le mot taper par l'utilisateur
mot = gets.chomp
#on dit a l'utilisateur le mot qu'il a ecrit




mot.downcase!



puts "Que voulez-vous faire ?"
puts "-- Entrez '1' palindrome."
puts "-- Entrez '2' comptage."
puts "-- Entrez '3' remplace lettre."
puts "-- Entrez '4' separation"
choix = gets.chomp.downcase
puts case choix


when '1'

  deb_mot=0

  fin_mot=mot.length-1

  palindrome=1

  	while(deb_mot< fin_mot)

        if mot[deb_mot]!=mot[fin_mot]

          palindrome=0

          break

        end

        deb_mot = deb_mot +1

        fin_mot = fin_mot -1

    end

  if(palindrome==1)

    print("C'est un palindrome")

  else

    print("Ce n'est pas un palindrome")

  end

when '2'

  nb_lettre = 0

  i=0

    while i < mot.length

      if(/[a-z]/ !~ mot[i])==false

        nb_lettre=nb_lettre +1

      end

      i = i+1

    end

  print(nb_lettre)

when '3'

puts "lettre de remplacement :"
  remp = gets.chomp

puts "lettre a remplacer:"
  val = gets.chomp

  i=0

  while i < mot.length

    if mot[i]==val

     mot[i]=remp

    end

    i = i +1

  end

  print(mot)

when '4'

  remp="w"

  print(mot.chars.each_slice(mot.length/2).map(&:join))

  # print(mot.split("w").last)


  end

  puts "Voulez-vous quitter o/n?"
  # on atribu a la variable quiter la valeur taper par l'utilisateur
  quitter = gets.chomp#si quiter est n on recharge le script
  if (quitter == 'n')
   load 'exo7.rb'
  #si quiter et strictement egal a o on quit
  elsif (quitter == 'o')
   exit!
  #si toute autre lettre ou mot est inscrit message d'erreur + redemarage du script
  else
   puts '!!!ERREUR!!!'
   load 'exo7.rb'



end
