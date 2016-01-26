module GameMethods



def group_names(name_input)
  # this lines will look into the selected file (nombres) and create an array with the data on it
  names = []
  f = File.open("nombres.txt")
  f.each_line { |line| (names << line.chomp) }
  f.close

  # this lines will look into the selected (classnames) file and create an array with the data on it
  classnames = []
  cn = File.open("classnames")
  cn.each_line { |line| (classnames << line.chomp)}
  cn.close

  # this lines will look into the selected file (ta names) and create an array with the data on it
  ta_names = []
  ta = File.open("tanames")
  ta.each_line { |line| (ta_names << line.chomp)}
  ta.close
  # names1 = gets.chomp.capitalize.rstrip
  if classnames.include?(name_input)
    system "clear"
    puts "Hey #{name_input.capitalize}!! How is Cohort 8 doing?"

    puts "Do you want to play my adventure in English or Spanish? / Te gustaria jugar mi aventura en Ingles o Espanol?"

    puts "Type ENG for English, or SPA for spanish and press enter / Presiona ENG para Ingles o SPA para espanol y presiona Enter"
  elsif names.include?(name_input)
    system "clear"
    puts "Hola, segun el origen de tu nombre puedes hablar espanol"
    puts "Te gustaria jugar mi aventura en Ingles o Espanol?"

    puts "Presiona ENG para Ingles o SPA para espanol y luego Enter"
  elsif ta_names.include?(name_input)
    system "clear"
    puts "Hey #{name_input}!!, I hope you had enough 🍺 🍺 🍺  before checking my code!!"

    puts "Do you want to play my adventure in English or Spanish? / Te gustaria jugar mi aventura en Ingles o Espanol?"
    puts "Type ENG for English, or SPA for spanish and press enter / Presiona ENG para Ingles o SPA para espanol y presiona Enter"

  else
    system "clear"
    puts "Do you want to play my adventure in English or Spanish? / Te gustaria jugar mi aventura en Ingles o Espanol?"
    puts "Type ENG for English, or SPA for spanish and press enter / Presiona ENG para Ingles o SPA para espanol y presiona Enter"
  end

  def game_eng(lang_input)
    system "clear"
    puts "
                                       @@@@@@@@@@;;@@@@;@@@@@ ;@@@@#@@@@
                                       @@,@@@@@#@;;@@@@;@@@@@ ;@@@@+.@@@
                                       @@ @@@@@ @;;@@@@;@@@@@ ;@@@@+ .@@
                                       @. @@@@@ +;;@@@@;@@@@@ ;@@@@+  .@
                                       @  @@@@@  ;;@@@@;@@@@@ ;@@@@+ `@,
                                       `  @@@@@  `;@@@@'@@@@@ ;@@@@++@@
                                          @@@@@   ;@@@@;@@@@@ ;@@@@+ `@'
                                          @@@@@   ;@@@@;@@@@@ ;@@@@+  ,@
                                          @@@@@   ;@@@@;@@@@@ ;@@@@+ `@@
                                          @@@@@   ;@@@@;@@@@@ ;@@@@+ @@@
                                          @@@@@   ;@@@@;@@@@@ ;@@@@+@@@@







    .@@@@+@@@@# ;@@@@+@@@@ @@@@@ @@#        .@@@@@     @@@@@.@@@+;@@@@@@@@@@+@@@@@@@@@+.@@@@@@@@@ @@@@@ @@@@`
    .@@@@+@@@@@ ;@@@@+ @@@ @@@@@ @@@#       .@@@@@     @@@@@. @@+;@`@@@@@ @@+@ @@@@@ @+.@@@@@ @@@ @@@@@ @@@@@
    .@@@@+@@@@@,;@@@@+  @@ @@@@@ @@@@       .@@@@@     @@@@@.  @+;@ @@@@@ #@+@ @@@@@ @+.@@@@@  @@ @@@@@ @@@@@
    .@@@@+@@@@@.;@@@@+  '@ @@@@@ @@@@@      .@@@@@     @@@@@.  #+;` @@@@@  @+  @@@@@  +.@@@@@  ;@ @@@@@ @@@@@
    .@@@@+@@@@@ ;@@@@+ @@  @@@@@ @@@@@      .@@@@@     @@@@@. @@ ;  @@@@@  #+  @@@@@  +.@@@@@ @@  @@@@@ @@@@#
    .@@@@+@@@@  ;@@@@+@@@  @@@@@ @@@@@      .@@@@@     @@@@@'@@@    @@@@@      @@@@@   .@@@@@@@@  @@@@@ @@@#
    .@@@@+@@@@@ ;@@@@+ @@  @@@@@ @@@@@      .@@@@@   `.@@@@@.`@@    @@@@@      @@@@@   .@@@@@ @@  @@@@@ @@@@,
    .@@@@+@@@@@ ;@@@@+  ;@ @@@@@ @@@@@      .@@@@@   @.@@@@@.  ++   @@@@@      @@@@@   .@@@@@  ,@ @@@@@ @@@@@
    .@@@@+@@@@@;;@@@@+  @@ @@@@@ @@@@,      .@@@@@  @@.@@@@@.  @+   @@@@@      @@@@@   .@@@@@  @@ @@@@@ @@@@@
    .@@@@+@@@@@;;@@@@+ @@@ @@@@@ @@@@       .@@@@@ @@@.@@@@@. @@+   @@@@@      @@@@@   .@@@@@ #@@ @@@@@ @@@@@
    .@@@@+@@@@@;;@@@@+#@@@ @@@@@ @@@        .@@@@@#@@@.@@@@@.@@@+   @@@@@      @@@@@   .@@@@@+@@@ @@@@@ @@@@@
    .++++;+++++,,+++++++++ +++++ +,         .+++++++++.+++++++++;   +++++      +++++   .+++++++++ +++++ +++++




    After a long hard day at your boring office job you arrive at home. Before you walk into your house you see a letter in your mailbox, an unusual occurrence as bill day is Thursday not Monday.

    You go up to the mailbox and see that there is a little red letter—quite suspicious.

    Open mail (go to page 3)
    Go inside (go to page 2)
    Please type the page number and press enter"

    user_input_1 = gets.chomp

    # a loop until the system receives the correct page number
    until user_input_1 == "2" || user_input_1 == "3"
      puts "Please type the correct page number"
      user_input_1 = gets.chomp
    end
    if user_input_1 == "2"
      system "clear"
      puts "Page 2

      You decide that it is too suspicious and you choose to go inside. Half way up the drive you slip and fall head first on a rock.

      No one knows what happened to your body. Did the writer of the letter take it?


      THE END"
      `afplay fall.mp3`
      puts "Press any key to end the game"
      fin = gets.chomp
      system "clear"
      abort("




        .@@@@@@@@@ @@@@@ @@@@+    @@'    @@@@ @@@.;@@@@  @@@@       #@@@@`@@@@@   `#.@'    @@@@@  @@@@@
        .@#@@@@@@@ @@@@@ @@@@+   ,@@@    @@@@:+@@.;@@@@  @@@         @@@@@.@@@#  #@@.@@@`  @@@@@  @@@@@
        .@ @@@@@`@ @@@@@ @@@@+   @@@@    @@@@@ @@.;@@@@   @          @@@@@ @@@  ;@@@.@@@@  @@@@@  @@@@@
        .# @@@@@ @ @@@@@ @@@@+   @@@@;   @@@@@@`@.;@@@@              `@@@@+'@@  @@@@.@@@@' @@@@@  @@@@@
        .  @@@@@   @@@@@ @@@@+  `@@@@@   @@@@@@.#.;@@@@  +@           @@@@@ @   @@@@.@@@@@ @@@@@  @@@@@
        `  @@@@@   @@@@@.@@@@+   @@@@@   :@@@@@@ .;@@@@ '@@           '@@@@,@  .@@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@+@@@@+  @@@@@@,   @@@@@@# ;@@@@.@@@@           @@@@@   .@@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+  '#@@@@@  @ @@@@@@`;@@@@+@@@@           @@@@@    @@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ +@`@@@@@  @.+@@@@@.;@@@@ @@@@@          @@@@@    @@@@.@@@@# @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ @@ @@@@@. @@ @@@@@.;@@@@ #@@@@`         @@@@@    #@@@.@@@@  @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ @@,@@@@@@ @@#`@@@@.;@@@@  @@@@@         @@@@@     @@@.@@@'   @@@@  @@@@
           @@@@@   @@@@@ @@@@+'@@@,@@@@@ @@@`@@@@.;@@@@  @@@@@`        @@@@@      #@.@@.    .@@@@@@@.






        @@@@@@@@@   `# @;    @@@@@;@@+        @@@@@ @@`  @@@@@         @@. '@@@@,@@@@@ @@@@@ @@@@ @@@@   `+@@@@.
        @@@@@'@@@  @@@ @@@   @@@@@;@@@@       @@@@@ @@@; @@@@@        +@@@  @@@@@ @@@@ @@@@@ @@@@@`@@@  @@@.@@@.
        @@@@@ '@@ +@@@ @@@@  @@@@@;@@@@       @@@@@ @@@@ @@@@@        @@@@  @@@@@ @@@  @@@@@ @@@@@`#@@ ;@@@. @@.
        @@@@@  +@ @@@@ @@@@, @@@@@;@@@@.      @@@@@ @@@@ @@@@@        @@@@`  @@@@@:@@  @@@@@ @@@@@@ @@ @@@@.  @.
        @@@@@  @+ @@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@@.@@@@@       ;@@@@#  @@@@@ @`  @@@@@ @@@@@@#,@ @@@@.   .
        @@@@@,@@ ;@@@@ @@@@@ @@@@@;@@@#       @@@@@ @@@@ @@@@@       ,@@@@@  ,@@@@;#   @@@@@  @@@@@@ @;@@@@.
        @@@@@@@@ ;@@@@ @@@@@ @@@@@;@@@,       @@@@@ @@@@ @@@@@    :  @@@@@@   @@@@@    @@@@@ .+@@@@@@ ;@@@@@@@@@
        @@@@@ .@ `@@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@. @@@@@   `@ ,.@@@@@+  @@@@@    @@@@@ @ @@@@@@'`@@@@.@@@@
        @@@@@     @@@@ @@@@' @@@@@;@@@@.      @@@@@ ;;   @@@@@   @@ @@;@@@@@  @@@@@    @@@@@ @#`@@@@@@ @@@@.@@@@
        @@@@@     @@@@ @@@@  @@@@@;@@@@.      @@@@@      @@@@@  @@@ @@ @@@@@  @@@@@    @@@@@ @@ @@@@@@ #@@@.@@@@
        @@@@@      @@@ @@@,  @@@@@;@@@@.      @@@@@      @@@@@ @@@@.@@ @@@@@' @@@@@    @@@@@ @@@ @@@@@  @@@.@@@@
        @@@@@       @@ @@`   @@@@@;@@@@.      @@@@@      @@@@@+@@@@@@@++@@@@@ @@@@@    @@@@@ @@@':@@@@   #@.@+ ,

        Developed by Jonatan Frencia

        ")

    else
      system "clear"
      puts "Page 3
      You are too curious not to answer your mail. So you grab it out of your mailbox and open it and find seven words.

      ‘Meet me on the docks at twelve’

      You are not that sure whether to go or not because it seems like a stereotypical set up for a camp fire story.



      Drive up to the dock to find out who sent you the letter (go to page 4)

      Please any key and enter to continue"
    end

    user_input_3 = gets.chomp
    system "clear"
    puts "Page 4

    You decide to go down to the docks to confront the person who wrote the red letter.

    11:59 pm and there is no one there. Where is he? You think to yourself, did he forget? Is it a prank?

    Then you hear a car rumble in the distance. A pair of bright yellow headlights pop into existence and they are heading towards you and the noise is getting louder.

    Stand your ground (turn to page 5)
    Run away as fast as you can (turn to page 6)

    Please type the page number and press enter"

    user_input_4 = gets.chomp
    until user_input_4 == "5" || user_input_4 == "6"
      puts "Please type the correct page number"
      user_input_4 = gets.chomp
    end
    if user_input_4 == "5"
      system "clear"
      puts "Page 5

      You decide to stand your ground. The car is getting dangerously close to you. Five seconds feels like it has been an hour.

      The car is getting nearer and you are regretting your decision. You can now see the red hood of the car coming towards you.

      Just as you get ready for the numbing pain of the car hitting you it screeches to a stop. A suited man comes out of the car and he is holding a hand gun. “Where is the money?” the man shouts at you.

      Run away (turn to page 6)

      Please type the page number and press enter"

    else
      system "clear"
      puts "Page 6

      You decide to run away. In the distance you hear a car. Its headlights are getting closer. You take a left turn into a dark alleyway and end up behind a small boat house. You see the car speed past you and you decide to flank it.

      You run onto the main road and lose it. It only took you ten minutes to find the police station nearest to you.

      Once you arrive you quickly tell your story. Thirty minutes later the police sergeant returns looking happy with himself. He tells you that you were the bait in a drug bust and now you are a key person in the crime of the year.


      THE END"
      `afplay end.mp3`
      puts "Press any key to end the game"
      fin = gets.chomp
      system "clear"
      abort("




        .@@@@@@@@@ @@@@@ @@@@+    @@'    @@@@ @@@.;@@@@  @@@@       #@@@@`@@@@@   `#.@'    @@@@@  @@@@@
        .@#@@@@@@@ @@@@@ @@@@+   ,@@@    @@@@:+@@.;@@@@  @@@         @@@@@.@@@#  #@@.@@@`  @@@@@  @@@@@
        .@ @@@@@`@ @@@@@ @@@@+   @@@@    @@@@@ @@.;@@@@   @          @@@@@ @@@  ;@@@.@@@@  @@@@@  @@@@@
        .# @@@@@ @ @@@@@ @@@@+   @@@@;   @@@@@@`@.;@@@@              `@@@@+'@@  @@@@.@@@@' @@@@@  @@@@@
        .  @@@@@   @@@@@ @@@@+  `@@@@@   @@@@@@.#.;@@@@  +@           @@@@@ @   @@@@.@@@@@ @@@@@  @@@@@
        `  @@@@@   @@@@@.@@@@+   @@@@@   :@@@@@@ .;@@@@ '@@           '@@@@,@  .@@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@+@@@@+  @@@@@@,   @@@@@@# ;@@@@.@@@@           @@@@@   .@@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+  '#@@@@@  @ @@@@@@`;@@@@+@@@@           @@@@@    @@@@.@@@@@ @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ +@`@@@@@  @.+@@@@@.;@@@@ @@@@@          @@@@@    @@@@.@@@@# @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ @@ @@@@@. @@ @@@@@.;@@@@ #@@@@`         @@@@@    #@@@.@@@@  @@@@@  @@@@@
           @@@@@   @@@@@ @@@@+ @@,@@@@@@ @@#`@@@@.;@@@@  @@@@@         @@@@@     @@@.@@@'   @@@@  @@@@
           @@@@@   @@@@@ @@@@+'@@@,@@@@@ @@@`@@@@.;@@@@  @@@@@`        @@@@@      #@.@@.    .@@@@@@@.






        @@@@@@@@@   `# @;    @@@@@;@@+        @@@@@ @@`  @@@@@         @@. '@@@@,@@@@@ @@@@@ @@@@ @@@@   `+@@@@.
        @@@@@'@@@  @@@ @@@   @@@@@;@@@@       @@@@@ @@@; @@@@@        +@@@  @@@@@ @@@@ @@@@@ @@@@@`@@@  @@@.@@@.
        @@@@@ '@@ +@@@ @@@@  @@@@@;@@@@       @@@@@ @@@@ @@@@@        @@@@  @@@@@ @@@  @@@@@ @@@@@`#@@ ;@@@. @@.
        @@@@@  +@ @@@@ @@@@, @@@@@;@@@@.      @@@@@ @@@@ @@@@@        @@@@`  @@@@@:@@  @@@@@ @@@@@@ @@ @@@@.  @.
        @@@@@  @+ @@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@@.@@@@@       ;@@@@#  @@@@@ @`  @@@@@ @@@@@@#,@ @@@@.   .
        @@@@@,@@ ;@@@@ @@@@@ @@@@@;@@@#       @@@@@ @@@@ @@@@@       ,@@@@@  ,@@@@;#   @@@@@  @@@@@@ @;@@@@.
        @@@@@@@@ ;@@@@ @@@@@ @@@@@;@@@,       @@@@@ @@@@ @@@@@    :  @@@@@@   @@@@@    @@@@@ .+@@@@@@ ;@@@@@@@@@
        @@@@@ .@ `@@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@. @@@@@   `@ ,.@@@@@+  @@@@@    @@@@@ @ @@@@@@'`@@@@.@@@@
        @@@@@     @@@@ @@@@' @@@@@;@@@@.      @@@@@ ;;   @@@@@   @@ @@;@@@@@  @@@@@    @@@@@ @#`@@@@@@ @@@@.@@@@
        @@@@@     @@@@ @@@@  @@@@@;@@@@.      @@@@@      @@@@@  @@@ @@ @@@@@  @@@@@    @@@@@ @@ @@@@@@ #@@@.@@@@
        @@@@@      @@@ @@@,  @@@@@;@@@@.      @@@@@      @@@@@ @@@@.@@ @@@@@' @@@@@    @@@@@ @@@ @@@@@  @@@.@@@@
        @@@@@       @@ @@`   @@@@@;@@@@.      @@@@@      @@@@@+@@@@@@@++@@@@@ @@@@@    @@@@@ @@@':@@@@   #@.@+ ,

        Developed by Jonatan Frencia

        ")

    end

    user_input_5 = gets.chomp
    until user_input_5 == "6"
      puts "Please type the correct page number"
      user_input_5 = gets.chomp
    end
    system "clear"
    puts "Page 6

    You decide to run away. In the distance you hear a car. Its headlights are getting closer. You take a left turn into a dark alleyway and end up behind a small boat house. You see the car speed past you and you decide to flank it.

    You run onto the main road and lose it. It only took you ten minutes to find the police station nearest to you.

    Once you arrive you quickly tell your story. Thirty minutes later the police sergeant returns looking happy with himself. He tells you that you were the bait in a drug bust and now you are a key person in the crime of the year.


    THE END"
    `afplay end.mp3`
    puts "Press any key to end the game"
    fin = gets.chomp
    system "clear"
    abort("




      .@@@@@@@@@ @@@@@ @@@@+    @@'    @@@@ @@@.;@@@@  @@@@       #@@@@`@@@@@   `#.@'    @@@@@  @@@@@
      .@#@@@@@@@ @@@@@ @@@@+   ,@@@    @@@@:+@@.;@@@@  @@@         @@@@@.@@@#  #@@.@@@`  @@@@@  @@@@@
      .@ @@@@@`@ @@@@@ @@@@+   @@@@    @@@@@ @@.;@@@@   @          @@@@@ @@@  ;@@@.@@@@  @@@@@  @@@@@
      .# @@@@@ @ @@@@@ @@@@+   @@@@;   @@@@@@`@.;@@@@              `@@@@+'@@  @@@@.@@@@' @@@@@  @@@@@
      .  @@@@@   @@@@@ @@@@+  `@@@@@   @@@@@@.#.;@@@@  +@           @@@@@ @   @@@@.@@@@@ @@@@@  @@@@@
      `  @@@@@   @@@@@.@@@@+   @@@@@   :@@@@@@ .;@@@@ '@@           '@@@@,@  .@@@@.@@@@@ @@@@@  @@@@@
         @@@@@   @@@@@+@@@@+  @@@@@@,   @@@@@@# ;@@@@.@@@@           @@@@@   .@@@@.@@@@@ @@@@@  @@@@@
         @@@@@   @@@@@ @@@@+  '#@@@@@  @ @@@@@@`;@@@@+@@@@           @@@@@    @@@@.@@@@@ @@@@@  @@@@@
         @@@@@   @@@@@ @@@@+ +@`@@@@@  @.+@@@@@.;@@@@ @@@@@          @@@@@    @@@@.@@@@# @@@@@  @@@@@
         @@@@@   @@@@@ @@@@+ @@ @@@@@. @@ @@@@@.;@@@@ #@@@@`         @@@@@    #@@@.@@@@  @@@@@  @@@@@
         @@@@@   @@@@@ @@@@+ @@,@@@@@@ @@#`@@@@.;@@@@  @@@@@         @@@@@     @@@.@@@'   @@@@  @@@@
         @@@@@   @@@@@ @@@@+'@@@,@@@@@ @@@`@@@@.;@@@@  @@@@@`        @@@@@      #@.@@.    .@@@@@@@.






      @@@@@@@@@   `# @;    @@@@@;@@+        @@@@@ @@`  @@@@@         @@. '@@@@,@@@@@ @@@@@ @@@@ @@@@   `+@@@@.
      @@@@@'@@@  @@@ @@@   @@@@@;@@@@       @@@@@ @@@; @@@@@        +@@@  @@@@@ @@@@ @@@@@ @@@@@`@@@  @@@.@@@.
      @@@@@ '@@ +@@@ @@@@  @@@@@;@@@@       @@@@@ @@@@ @@@@@        @@@@  @@@@@ @@@  @@@@@ @@@@@`#@@ ;@@@. @@.
      @@@@@  +@ @@@@ @@@@, @@@@@;@@@@.      @@@@@ @@@@ @@@@@        @@@@`  @@@@@:@@  @@@@@ @@@@@@ @@ @@@@.  @.
      @@@@@  @+ @@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@@.@@@@@       ;@@@@#  @@@@@ @`  @@@@@ @@@@@@#,@ @@@@.   .
      @@@@@,@@ ;@@@@ @@@@@ @@@@@;@@@#       @@@@@ @@@@ @@@@@       ,@@@@@  ,@@@@;#   @@@@@  @@@@@@ @;@@@@.
      @@@@@@@@ ;@@@@ @@@@@ @@@@@;@@@,       @@@@@ @@@@ @@@@@    :  @@@@@@   @@@@@    @@@@@ .+@@@@@@ ;@@@@@@@@@
      @@@@@ .@ `@@@@ @@@@@ @@@@@;@@@@       @@@@@ @@@. @@@@@   `@ ,.@@@@@+  @@@@@    @@@@@ @ @@@@@@'`@@@@.@@@@
      @@@@@     @@@@ @@@@' @@@@@;@@@@.      @@@@@ ;;   @@@@@   @@ @@;@@@@@  @@@@@    @@@@@ @#`@@@@@@ @@@@.@@@@
      @@@@@     @@@@ @@@@  @@@@@;@@@@.      @@@@@      @@@@@  @@@ @@ @@@@@  @@@@@    @@@@@ @@ @@@@@@ #@@@.@@@@
      @@@@@      @@@ @@@,  @@@@@;@@@@.      @@@@@      @@@@@ @@@@.@@ @@@@@' @@@@@    @@@@@ @@@ @@@@@  @@@.@@@@
      @@@@@       @@ @@`   @@@@@;@@@@.      @@@@@      @@@@@+@@@@@@@++@@@@@ @@@@@    @@@@@ @@@':@@@@   #@.@+ ,

      Developed by Jonatan Frencia

      ")

  end

  def game_spa(lang_input)
    system "clear"
    puts  "




                                    @@@@@        .@@;
                                    @@@@@        @@@@
                                    @@@@@        @@@@
                                    @@@@@        @@@@,
                                    @@@@@       +@@@@@
                                    @@@@@       `@@@@@
                                    @@@@@    @  +@@@@@.
                                    @@@@@   +@ ':@@@@@@
                                    @@@@@  .@@ @@.@@@@@
                                    @@@@@  @@@ @@ @@@@@`
                                    @@@@@ @@@@:@@.@@@@@#
                                    ++++++++++++++,+++++



                       +@+@@@     @@@    ;@@@@ @@@@  @@#@@@@@@@   @@@
                       @@@+.@@    @@@:   ;@@@@ @@@@@ @@+@@@@ @@  `@@@
                      +@@@+ +@   `@@@@   ;@@@@ @@@@@ @.+@@@@ @@  @@@@:
                      @@@@+  @   #@@@@   ;@@@@ @@@@@ @ +@@@@  @  @@@@@
                      @@@@+      @@@@@,  ;@@@@ @@@@@ ` +@@@@  #  @@@@@
                      @@@@+      @@@@@@  ;@@@@ @@@@    +@@@@     @@@@@.
                      @@@@+     ++@@@@@  ;@@@@ @@@@`   +@@@@    #@@@@@@
                      @@@@+  ,  @ @@@@@` ;@@@@ @@@@@   +@@@@    @.@@@@@
                      @@@@+  @  @,@@@@@@ ;@@@@ @@@@@   +@@@@   '@ @@@@@`
                      `@@@+ @@ ;@@,@@@@@ ;@@@@ @@@@@   +@@@@   @@,@@@@@@
                       ,@@+@@@ @@@ @@@@@ ;@@@@ @@@@@   +@@@@   @@@:@@@@@
                         '++++ +++`+++++',++++ +++++   ;++++  ,+++ +++++



                            @@@@@ @@@@    @@.@@;     @@@@;   `@@#
                            @@@@@ @@@@+  @@@.@@@#    @@@@;   #@@@
                            @@@@@ @@@@@ @@@@.@@@@    @@@@;   @@@@
                            @@@@@ @@@@@ @@@@.@@@@@   @@@@;   @@@@'
                            @@@@@ @@@@; @@@@.@@@@@   @@@@;  ;@@@@@
                            @@@@@ @@@+ .@@@@.@@@@@   @@@@;   @@@@@
                            @@@@@ @@@@ `@@@@.@@@@@   @@@@;  ;@@@@@;
                            @@@@@ @@@@@ @@@@.@@@@@   @@@@; ;+#@@@@@
                            @@@@@ @@@@@ @@@@.@@@@:   @@@@; @@ @@@@@
                            @@@@@ @@@@@ .@@@.@@@@   `@@@@  @@ @@@@@,
                            @@@@@ @@@@@  '@@.@@@    @@@@# ,@@;@@@@@@
                            ;;;;; ;;;;;    ;`;.   :;;;;`  ;;;;`;;;;;







    Despues de un largo y duro dia de trabajo en la oficina, llegas a casa, antes de entrar te das cuenta que hay una carta en tu casilla de correo, algo inusual ya que los dias de cobro son los jueves y no lunes.

    Vas hasta la casilla y ves que hay un pequeno sobre un poco sospechoso de color rojo.



    Abres el sobre (Ve a a la pagina 3)
    Entras a tu casa sin revisar (Ve a la pagina 2)

    Por favor tipea el numero de pagina y presiona Enter"
    user_input_1_es = gets.chomp
    until user_input_1_es == "2" || user_input_1_es == "3"
      puts "Por favor pon el numero de pagina correcto y enter"
      user_input_1_es = gets.chomp
    end
    if user_input_1_es == "2"
      system "clear"
      puts "Pagina 2

      Decides que es muy sospechoso y eliges entrar a tu casa. A la mitad de camino, te resbalas en la acera y golpeas tu cabeza con una roca.

      Nadie sabe que paso con tu cuerpo, lo habra echo desaparecer el que escribio la carta?


      FIN"

      puts "Presione enter para finalizar"
      fin = gets.chomp
      system "clear"
      abort("



                  @@@@     @@@ @@@@@+@@    :@@@@@ @@@@+@@@@@    '@@      ; +@@@.
                  @@@@#   `@@@ @@@@@ @@   @@@ @@@ @@@@+@@@@@    @@@,    @@@ #@@.
                  @@@@@   @@@@ @@@@@ ,@  @@@@ .@@ @@@@+@@@@@    @@@@   '@@@@ @@.
                  @@@@@+  @@@@ @@@@@  @ `@@@@  +@ @@@@+@@@@@   ,@@@@   @@@@@@ @.
                  '@@@@@ @@@@@ @@@@@  ` @@@@@   @ @@@@+@@@@@   @@@@@.  @@@@@@@ .
                   @@@@@;@@@@@ @@@@@    @@@@@     @@@@+@@@@@   @@@@@@  :@@@@@@#
                  '#@@@@`@@@@@ @@@@@    @@@@@     @@@@#@@@@@  .@@@@@@   @@@@@@@,
                  @ @@@@ @@@@@ @@@@@    @@@@@   # @@@@+@@@@@  @ @@@@@` # @@@@@@@
                  @,@@@. @@@@@ @@@@@    ,@@@@  ,@ @@@@+@@@@@  @,@@@@@@ @+.@@@@@@
                  @@ @@  @@@@@ +@@@@  ;  @@@@  @@ @@@@+@@@@@  @@,@@@@@ @@',@@@@@
                  @@`@,  @@@@@  @@@@  .  `@@@ @@@ @@@@+@@@@@ #@@ @@@@@ @@@,,@@@.
                  @@@`   @@@@@   @@@;:     @@@@@@ @@@@+@@@@@ @@@`@@@@@#@@@@,,@;






                +@@@@@ .@@@@.@@@:     @@@       '@@@@;.@@@@.   `@@      ,:.@@@@
                '@@@#@@@ .@@@@.@@@@#    @@@     ,@@@:@@;.@@@@.   @@@#    @@@.,@@@
                @@@@ @@@ .@@@@.@@@@@   :@@@,    @@@@ #@;.@@@@.   @@@@    @@@@`+@@
                @@@@@  @@ .@@@@.@@@@@   @@@@@   @@@@@  @;.@@@@.   @@@@   ;@@@@@ #@
                @@@@@   @ .@@@@.@@@@@   @@@@@   @@@@@   ;.@@@@.  +@@@@'  ,@@@@@@ @
                @@@@@     .@@@@.@@@@.   @@@@@.  @@@@@    .@@@@.  ;@@@@@   @@@@@@@
                @@@@@@@@@ .@@@@.@@@@   @@@@@@@  @@@@@    .@@@@.  @@@@@@   @@@@@@@#
                @@@@@@@@@ .@@@@.@@@@@  @.@@@@@  @@@@@   ;.@@@@. ' @@@@@; . @@@@@@@
                @@@@@@@@@ .@@@@.@@@@@ `@ @@@@@` @@@@@  @;.@@@@. @#+@@@@@ .@ @@@@@@
                .@@@@@@@@ .@@@@.@@@@@ @@.@@@@@# `@@@@ '@;.@@@@. @@ @@@@@ .@@ @@@@@
                 @@@@@@@@ .@@@@.@@@@@ @@@:@@@@@  +@@@`@@;.@@@@.:@@ @@@@@,.@@# @@@#
                  ;@@@@   .@@@@.@@@@@ @@@ @@@@@   ,@@@@@;.@@@@.@@@;@@@@@@.@@@# @#






      @@@@@ @@.     #@.@.   +@@@@ @@@;         +@@@@ ;@@@@ @@+   .@@@@@;    @@@    @@@@@ @@@,
      @@@@@ @@@'  .@@@.@@@  +@@@@ @@@@;        +@@@@ ;@@@@ '@+  @@@;@@@;    @@@    @@@@@ @@@@.
      @@@@@ @@@@  @@@@.@@@' +@@@@ @@@@@        +@@@@ ;@@@@  @+ ;@@@; @@;   ,@@@'   @@@@@ @@@@@
      @@@@@ @@@@`+@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@  .+ @@@@;  @;   @@@@@   @@@@@ @@@@@
      @@@@@ @@@@.@@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@   + @@@@;   ;   @@@@@   @@@@@ @@@@#
      @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@;       @@@@@;  @@@@@ @@@@
      @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@@@@@@  @@@@@@@  @@@@@ @@@@
      @@@@@ @@@` @@@@@.@@@@ +@@@@ @@@@#        +@@@@ ;@@@@   + @@@@;@@@@  @ @@@@@  @@@@@ @@@@'
      @@@@@ ..   +@@@@.@@@@ +@@@@ @@@@@        +@@@@ .@@@@   ; @@@@;@@@@  @ @@@@@, @@@@@ @@@@@
      @@@@@       @@@@.@@@+ +@@@@ @@@@@        #@@@@  @@@@     '@@@;@@@@ +@;@@@@@@ @@@@@ @@@@@
      @@@@@       ,@@@.@@@  +@@@@ @@@@@        @@@@+  #@@@  #   @@@;@@@@ @@@`@@@@@ @@@@@ @@@@@
      @@@@@        `@@.@'   +@@@@ @@@@@      +@@@@'    +@@;#     ;@;@' ` @@@ @@@@@.@@@@@ @@@@@



      Developed by Jonatan Frencia


      "
)

    else
      system "clear"
      puts "Pagina 3

      Eres demasiado curioso para no chequear tu email. Entonces agarras el sobre, los abres y encuentras que dice solo siete palabras.

      'Encuentrame en el muelle a las doce'

      No estas seguro de ir o no, porque parece la tipica historia de suspenso.

      Manejas hasta el muelle para averiguar quien mando la carta (Ve a la pagina 4)



      Presiona cualquier tecla y enter para continuar"

    end

    puts "Presiona una tecla para continuar"
    user_input_3_es = gets.chomp
    system "clear"
    puts "Pagina 4

    Decides ir al muelle a confrontar a la persona que escribio la misteriosa carta.

    Miras tu reloj, 11:59 pm y no hay nadie alli. Donde estara?, piensas, se habra olvidado? Sera una broma?

    Entonces escuchas el motor de un carro a la distancia. La luces brillantes te alumbran y se acercan a ti, el ruido del motor se vuelve ensordecedor.



    Te quedas quieto esperando que alguien salga del carro (Ve a la pagina 5)
    Corres lo mas rapido que puedes (Ve a la pagina 6)

    Por favor tipea el numero de pagina y presiona Enter"

    user_input_4_es = gets.chomp
    until user_input_4_es == "5" || user_input_4_es == "6"
      puts "Por favor pon el numero de pagina correcto y enter"
      user_input_4_es = gets.chomp
    end
    if user_input_4_es == "5"
      system "clear"
      puts "Pagina 5

      Decides esperar. El carro se acerca de manera peligrosa a ti. El tiempo parece detenerse, 5 segundos parecen una hora.

      A medida que el carro se acerca, te empiezas a arrepentir de tu decision. Ahora puedes ver el capot de color rojo acercarse.

      Justo cuando te preparas a ser atropellado, el carro se detiene. Un hombre de traje baja del carro, en su mano tiene un arma. Donde esta el dinero? te pregunta de manera efusiva.



      Escapas (Ve a la pagina 6)

      Por favor tipea el numero de pagina y presiona Enter"
    else
      system "clear"
      puts "Pagina 6

      Decides correr. Escuchas el carro a la distancia. Las luces se acercan cada vez mas. Doblas a la izquierda y te metes en un callejon oscuro, ves una pequena casa y te escondes detras. Ves el auto pasar a alta velocidad, y decides corres hacia la otra direccion.

      Corres hasta la ruta y lo pierdes. Solamente te demoras unos diez minutos para encontrar la estacion de policia mas cercana.

      Una vez que llegas, le cuentas tu historia a un oficial. Treinta minutos despues el sargento vuelve muy contento. Te cuenta que has sido usado como carnada para desbaratar una banda de narcotraficantes.


      FIN"

      `afplay end.mp3`
      puts "Presione enter para finalizar"
      fin = gets.chomp
      system "clear"
      abort("



                  @@@@     @@@ @@@@@+@@    :@@@@@ @@@@+@@@@@    '@@      ; +@@@.
                  @@@@#   `@@@ @@@@@ @@   @@@ @@@ @@@@+@@@@@    @@@,    @@@ #@@.
                  @@@@@   @@@@ @@@@@ ,@  @@@@ .@@ @@@@+@@@@@    @@@@   '@@@@ @@.
                  @@@@@+  @@@@ @@@@@  @ `@@@@  +@ @@@@+@@@@@   ,@@@@   @@@@@@ @.
                  '@@@@@ @@@@@ @@@@@  ` @@@@@   @ @@@@+@@@@@   @@@@@.  @@@@@@@ .
                   @@@@@;@@@@@ @@@@@    @@@@@     @@@@+@@@@@   @@@@@@  :@@@@@@#
                  '#@@@@`@@@@@ @@@@@    @@@@@     @@@@#@@@@@  .@@@@@@   @@@@@@@,
                  @ @@@@ @@@@@ @@@@@    @@@@@   # @@@@+@@@@@  @ @@@@@` # @@@@@@@
                  @,@@@. @@@@@ @@@@@    ,@@@@  ,@ @@@@+@@@@@  @,@@@@@@ @+.@@@@@@
                  @@ @@  @@@@@ +@@@@  ;  @@@@  @@ @@@@+@@@@@  @@,@@@@@ @@',@@@@@
                  @@`@,  @@@@@  @@@@  .  `@@@ @@@ @@@@+@@@@@ #@@ @@@@@ @@@,,@@@.
                  @@@`   @@@@@   @@@;:     @@@@@@ @@@@+@@@@@ @@@`@@@@@#@@@@,,@;






                +@@@@@ .@@@@.@@@:     @@@       '@@@@;.@@@@.   `@@      ,:.@@@@
                '@@@#@@@ .@@@@.@@@@#    @@@     ,@@@:@@;.@@@@.   @@@#    @@@.,@@@
                @@@@ @@@ .@@@@.@@@@@   :@@@,    @@@@ #@;.@@@@.   @@@@    @@@@`+@@
                @@@@@  @@ .@@@@.@@@@@   @@@@@   @@@@@  @;.@@@@.   @@@@   ;@@@@@ #@
                @@@@@   @ .@@@@.@@@@@   @@@@@   @@@@@   ;.@@@@.  +@@@@'  ,@@@@@@ @
                @@@@@     .@@@@.@@@@.   @@@@@.  @@@@@    .@@@@.  ;@@@@@   @@@@@@@
                @@@@@@@@@ .@@@@.@@@@   @@@@@@@  @@@@@    .@@@@.  @@@@@@   @@@@@@@#
                @@@@@@@@@ .@@@@.@@@@@  @.@@@@@  @@@@@   ;.@@@@. ' @@@@@; . @@@@@@@
                @@@@@@@@@ .@@@@.@@@@@ `@ @@@@@` @@@@@  @;.@@@@. @#+@@@@@ .@ @@@@@@
                .@@@@@@@@ .@@@@.@@@@@ @@.@@@@@# `@@@@ '@;.@@@@. @@ @@@@@ .@@ @@@@@
                 @@@@@@@@ .@@@@.@@@@@ @@@:@@@@@  +@@@`@@;.@@@@.:@@ @@@@@,.@@# @@@#
                  ;@@@@   .@@@@.@@@@@ @@@ @@@@@   ,@@@@@;.@@@@.@@@;@@@@@@.@@@# @#






      @@@@@ @@.     #@.@.   +@@@@ @@@;         +@@@@ ;@@@@ @@+   .@@@@@;    @@@    @@@@@ @@@,
      @@@@@ @@@'  .@@@.@@@  +@@@@ @@@@;        +@@@@ ;@@@@ '@+  @@@;@@@;    @@@    @@@@@ @@@@.
      @@@@@ @@@@  @@@@.@@@' +@@@@ @@@@@        +@@@@ ;@@@@  @+ ;@@@; @@;   ,@@@'   @@@@@ @@@@@
      @@@@@ @@@@`+@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@  .+ @@@@;  @;   @@@@@   @@@@@ @@@@@
      @@@@@ @@@@.@@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@   + @@@@;   ;   @@@@@   @@@@@ @@@@#
      @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@;       @@@@@;  @@@@@ @@@@
      @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@@@@@@  @@@@@@@  @@@@@ @@@@
      @@@@@ @@@` @@@@@.@@@@ +@@@@ @@@@#        +@@@@ ;@@@@   + @@@@;@@@@  @ @@@@@  @@@@@ @@@@'
      @@@@@ ..   +@@@@.@@@@ +@@@@ @@@@@        +@@@@ .@@@@   ; @@@@;@@@@  @ @@@@@, @@@@@ @@@@@
      @@@@@       @@@@.@@@+ +@@@@ @@@@@        #@@@@  @@@@     '@@@;@@@@ +@;@@@@@@ @@@@@ @@@@@
      @@@@@       ,@@@.@@@  +@@@@ @@@@@        @@@@+  #@@@  #   @@@;@@@@ @@@`@@@@@ @@@@@ @@@@@
      @@@@@        `@@.@'   +@@@@ @@@@@      +@@@@'    +@@;#     ;@;@' ` @@@ @@@@@.@@@@@ @@@@@



      Developed by Jonatan Frencia


      "
)

    end

    user_input_5_es = gets.chomp
    until user_input_5_es == "6"
      puts "Por favor pon el numero de pagina correcto y enter"
      user_input_5_es = gets.chomp
    end
    system "clear"
    puts "Pagina 6

    Decides correr. Escuchas el carro a la distancia. Las luces se acercan cada vez mas. Doblas a la izquierda y te metes en un callejon oscuro, ves una pequena casa y te escondes detras. Ves el auto pasar a alta velocidad, y decides corres hacia la otra direccion.

    Corres hasta la ruta y lo pierdes. Solamente te demoras unos diez minutos para encontrar la estacion de policia mas cercana.

    Una vez que llegas, le cuentas tu historia a un oficial. Treinta minutos despues el sargento vuelve muy contento. Te cuenta que has sido usado como carnada para desbaratar una banda de narcotraficantes.


    FIN"

    `afplay end.mp3`
    puts "Presione enter para finalizar"
    fin = gets.chomp
    system "clear"
    abort("



                @@@@     @@@ @@@@@+@@    :@@@@@ @@@@+@@@@@    '@@      ; +@@@.
                @@@@#   `@@@ @@@@@ @@   @@@ @@@ @@@@+@@@@@    @@@,    @@@ #@@.
                @@@@@   @@@@ @@@@@ ,@  @@@@ .@@ @@@@+@@@@@    @@@@   '@@@@ @@.
                @@@@@+  @@@@ @@@@@  @ `@@@@  +@ @@@@+@@@@@   ,@@@@   @@@@@@ @.
                '@@@@@ @@@@@ @@@@@  ` @@@@@   @ @@@@+@@@@@   @@@@@.  @@@@@@@ .
                 @@@@@;@@@@@ @@@@@    @@@@@     @@@@+@@@@@   @@@@@@  :@@@@@@#
                '#@@@@`@@@@@ @@@@@    @@@@@     @@@@#@@@@@  .@@@@@@   @@@@@@@,
                @ @@@@ @@@@@ @@@@@    @@@@@   # @@@@+@@@@@  @ @@@@@` # @@@@@@@
                @,@@@. @@@@@ @@@@@    ,@@@@  ,@ @@@@+@@@@@  @,@@@@@@ @+.@@@@@@
                @@ @@  @@@@@ +@@@@  ;  @@@@  @@ @@@@+@@@@@  @@,@@@@@ @@',@@@@@
                @@`@,  @@@@@  @@@@  .  `@@@ @@@ @@@@+@@@@@ #@@ @@@@@ @@@,,@@@.
                @@@`   @@@@@   @@@;:     @@@@@@ @@@@+@@@@@ @@@`@@@@@#@@@@,,@;






              +@@@@@ .@@@@.@@@:     @@@       '@@@@;.@@@@.   `@@      ,:.@@@@
              '@@@#@@@ .@@@@.@@@@#    @@@     ,@@@:@@;.@@@@.   @@@#    @@@.,@@@
              @@@@ @@@ .@@@@.@@@@@   :@@@,    @@@@ #@;.@@@@.   @@@@    @@@@`+@@
              @@@@@  @@ .@@@@.@@@@@   @@@@@   @@@@@  @;.@@@@.   @@@@   ;@@@@@ #@
              @@@@@   @ .@@@@.@@@@@   @@@@@   @@@@@   ;.@@@@.  +@@@@'  ,@@@@@@ @
              @@@@@     .@@@@.@@@@.   @@@@@.  @@@@@    .@@@@.  ;@@@@@   @@@@@@@
              @@@@@@@@@ .@@@@.@@@@   @@@@@@@  @@@@@    .@@@@.  @@@@@@   @@@@@@@#
              @@@@@@@@@ .@@@@.@@@@@  @.@@@@@  @@@@@   ;.@@@@. ' @@@@@; . @@@@@@@
              @@@@@@@@@ .@@@@.@@@@@ `@ @@@@@` @@@@@  @;.@@@@. @#+@@@@@ .@ @@@@@@
              .@@@@@@@@ .@@@@.@@@@@ @@.@@@@@# `@@@@ '@;.@@@@. @@ @@@@@ .@@ @@@@@
               @@@@@@@@ .@@@@.@@@@@ @@@:@@@@@  +@@@`@@;.@@@@.:@@ @@@@@,.@@# @@@#
                ;@@@@   .@@@@.@@@@@ @@@ @@@@@   ,@@@@@;.@@@@.@@@;@@@@@@.@@@# @#






    @@@@@ @@.     #@.@.   +@@@@ @@@;         +@@@@ ;@@@@ @@+   .@@@@@;    @@@    @@@@@ @@@,
    @@@@@ @@@'  .@@@.@@@  +@@@@ @@@@;        +@@@@ ;@@@@ '@+  @@@;@@@;    @@@    @@@@@ @@@@.
    @@@@@ @@@@  @@@@.@@@' +@@@@ @@@@@        +@@@@ ;@@@@  @+ ;@@@; @@;   ,@@@'   @@@@@ @@@@@
    @@@@@ @@@@`+@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@  .+ @@@@;  @;   @@@@@   @@@@@ @@@@@
    @@@@@ @@@@.@@@@@.@@@@ +@@@@ @@@@@        +@@@@ ;@@@@   + @@@@;   ;   @@@@@   @@@@@ @@@@#
    @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@;       @@@@@;  @@@@@ @@@@
    @@@@@ @@@@ @@@@@.@@@@.+@@@@ @@@@         +@@@@ ;@@@@   +.@@@@@@@@@  @@@@@@@  @@@@@ @@@@
    @@@@@ @@@` @@@@@.@@@@ +@@@@ @@@@#        +@@@@ ;@@@@   + @@@@;@@@@  @ @@@@@  @@@@@ @@@@'
    @@@@@ ..   +@@@@.@@@@ +@@@@ @@@@@        +@@@@ .@@@@   ; @@@@;@@@@  @ @@@@@, @@@@@ @@@@@
    @@@@@       @@@@.@@@+ +@@@@ @@@@@        #@@@@  @@@@     '@@@;@@@@ +@;@@@@@@ @@@@@ @@@@@
    @@@@@       ,@@@.@@@  +@@@@ @@@@@        @@@@+  #@@@  #   @@@;@@@@ @@@`@@@@@ @@@@@ @@@@@
    @@@@@        `@@.@'   +@@@@ @@@@@      +@@@@'    +@@;#     ;@;@' ` @@@ @@@@@.@@@@@ @@@@@



    Developed by Jonatan Frencia


    "
)

  end
end
end
