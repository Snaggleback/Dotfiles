#!/bin/bash

# Frases que vocẽ pode adicionar e remover
phrases=(
    "Comece onde você está, use o que você tem e faça o que você pode"                                                                                               # Arthur Ashe
    "Ação sempre gera inspiração. Inspiração raramente gera ação"                                                                                                    # Frank Tibolt
    "Não importa que você vá devagar, contanto que você não pare"                                                                                                    # Confúcio
    "Coragem é saber o que não temer"                                                                                                                                # Platão
    "Acredite em milagres, mas não dependa deles"                                                                                                                    # Immanuel Kant
    "A tecnologia move o mundo"                                                                                                                                      # Steve Jobs
    "A necessidade é a mãe da inovação"                                                                                                                              # Platão
    "A felicidade e a liberdade começam com um claro entendimento de uma coisa: algumas coisas estão sob nosso controle, outras não"                                 # Epicteto
    "A adversidade não é uma desgraça; é uma oportunidade"                                                                                                           # Sêneca
    "Não importa o que aconteça com você, mas como você reage a isso que importa"                                                                                    # Epicteto
    "A vida é muito curta para se preocupar com coisas insignificantes"                                                                                              # Sêneca
    "O homem sábio sempre será o mestre de sua mente"                                                                                                                # Sêneca
    "A honestidade é a primeira etapa para a grandeza"                                                                                                               # Confúcio
    "Seja gentil, pois cada pessoa que você encontra está enfrentando uma batalha difícil"                                                                           # Platão
    "A maior recompensa pelo trabalho não é o que você ganha, mas o que você se torna através dele"                                                                  # John Ruskin
    "A amizade é o ingrediente mais importante na receita da vida"                                                                                                   # Hubert H. Humphrey
    "A gratidão transforma o que temos em suficiente"                                                                                                                # Autor desconhecido
    "A persistência é o caminho do êxito"                                                                                                                            # Charles Chaplin
    "O sucesso é a soma de pequenos esforços repetidos dia após dia"                                                                                                 # Robert Collier
    "A única maneira de fazer um ótimo trabalho é amar o que você faz"                                                                                               # Steve Jobs
    "Seja a mudança que você deseja ver no mundo"                                                                                                                    # Mahatma Gandhi
    "Nunca é tarde demais para ser aquilo que você poderia ter sido"                                                                                                 # George Eliot
    "A tecnologia é uma ferramenta poderosa que pode transformar o mundo para melhor"                                                                                # Bill Gates
    "A inovação distingue um líder de um seguidor"                                                                                                                   # Steve Jobs
    "A inteligência artificial é a nova eletricidade"                                                                                                                # Andrew Ng
    "A tecnologia por si só não é suficiente. É a tecnologia casada com as artes liberais que nos torna resultado do futuro"                                         # Steve Jobs
    "O poder da tecnologia está em como a usamos para melhorar as vidas das pessoas"                                                                                 # Satya Nadella
    "Se o porco inteiro fosse perfeito, não haveria cachorro quente"                                                                                                 # Greg Universo
    "É preferível ser odiado pelo que se é do que ser amado por representar um papel"                                                                                # Autor desconhecido
    "Quando nosso propósito se torna evitação, nossa vida se torna um vazio"                                                                                         # Bill Crawford
    "A razão pela qual lutamos contra a insegurança é porque comparamos nossos bastidores, com a montanha de destaque de todos os outros"                            # Steven Furtick
    "Sua perspectiva de vida vem da gaiola em que você foi mantido em cativeiro"                                                                                     # Shannon L. Alder
    "Liberdade é pouco. O que desejo ainda não tem nome"                                                                                                             # Clarice Lispector
    "Eu não sou tão triste assim, é que hoje eu estou cansada"                                                                                                       # Clarice Lispector
    "Com perdão da palavra, sou um mistério para mim"                                                                                                                # Clarice Lispector
    "Tive vergonha de mim próprio, quando percebi que a vida é uma festa de máscaras, e participei com meu verdadeiro rosto"                                         # Franz Kafka
    "Deus está morto e os homens perdidos"                                                                                                                           # Nietzchr1
    "O sucesso é ir de fracasso em fracasso sem perder entusiasmo"                                                                                                   # Winston Churchill
    "A vida é o que acontece enquanto você está ocupado fazendo outros planos"                                                                                       # John Lennon
    "O pessimista vê dificuldade em cada oportunidade; o otimista vê oportunidade em cada dificuldade"                                                               # Winston Churchill
    "A mente é tudo. Você se torna aquilo que você pensa"                                                                                                            # Buda
    "A única coisa permanente na vida é a mudança"                                                                                                                   # Heraclito
    "O verdadeiro segredo para a juventude eterna é uma mente inquieta e curiosa"                                                                                    # Albert Einstein
    "A vida é uma tragédia quando vista de perto, mas uma comédia quando vista de longe"                                                                             # Charlie Chaplin
    "O único modo de fazer um excelente trabalho é amar o que você faz"                                                                                              # Steve Jobs
    "O sucesso não é final, o fracasso não é fatal: é a coragem de continuar que conta"                                                                              # Winston Churchill
    "Só sei que nada sei"                                                                                                                                            # Sócrates
    "A única maneira de chegar ao impossível é acreditar que é possível"                                                                                             # Lewis Carroll
    "A vida é 10% do que acontece comigo e 90% de como eu reajo a isso"                                                                                              # Charles Swindoll
    "O verdadeiro amigo é aquele que está ao seu lado quando preferiria estar em outro lugar"                                                                        # Len Wein
    "Acredite que você pode e você já está no meio do caminho"                                                                                                       # Theodore Roosevelt
    "O sucesso é a soma de pequenos esforços repetidos dia após dia"                                                                                                 # Robert Collier
    "A maneira de começar é parar de falar e começar a fazer"                                                                                                        # Walt Disney
    "Não espere por circunstâncias ideais, tome decisões e torne-as ideais"                                                                                          # Barbara Sher
    "Não é o que você olha que importa, é o que você vê"                                                                                                             # Henry David Thoreau
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado"                                                               # Roberto Shinyashiki
    "O maior prazer na vida é fazer o que as pessoas dizem que você não pode fazer"                                                                                  # Walter Bagehot
    "Quando uma porta da felicidade se fecha, outra se abre, mas muitas vezes olhamos tanto tempo para a porta fechada que não vemos aquela que foi aberta para nós" # Helen Keller
    "A verdadeira medida de um homem não é como ele se comporta em momentos de conforto e conveniência, mas como ele se mantém em tempos de controvérsia e desafio"  # Martin Luther King Jr.
    "A educação é a arma mais poderosa que você pode usar para mudar o mundo"                                                                                        # Nelson Mandela
    "A vida é como andar de bicicleta. Para ter equilíbrio, você deve continuar em movimento"                                                                        # Albert Einstein
    "Nossa maior fraqueza está em desistir. A maneira mais certa de ter sucesso é sempre tentar mais uma vez"                                                        # Thomas Edison
    "O fracasso é a oportunidade de começar de novo, com mais inteligência"                                                                                          # Henry Ford
    "O que você faz hoje pode melhorar todos os seus amanhãs"                                                                                                        # Ralph Marston
    "O mundo está nas mãos daqueles que têm coragem de sonhar e correr o risco de viver seus sonhos"                                                                 # Paulo Coelho
    "A única maneira de fazer um excelente trabalho é amar o que você faz"                                                                                           # Steve Jobs
    "O importante não é onde você está, mas para onde você está indo"                                                                                                # Oliver Wendell Holmes
    "A única coisa que fica entre você e seu objetivo é a história que você continua contando a si mesmo por que não pode alcançá-lo"                                # Jordan Belfort
    "A vida é o que acontece enquanto você está ocupado fazendo outros planos"                                                                                       # John Lennon
    "O sucesso é o resultado de tentativa, erro e aprendizado com o erro"                                                                                            # Benjamin Franklin
    "O maior erro que você pode cometer na vida é ficar constantemente com medo de cometer um erro"                                                                  # Elbert Hubbard
    "O único modo de fazer um ótimo trabalho é amar o que você faz"                                                                                                  # Steve Jobs
    "O verdadeiro segredo para a juventude eterna é uma mente inquieta e curiosa"                                                                                    # Albert Einstein
    "A única maneira de alcançar o impossível é acreditar que é possível"                                                                                            # Charles Kingsleigh (Alice no País das Maravilhas)
    "Quando você se concentra no problema, você nunca encontrará uma solução. Concentre-se na solução"                                                               # Bob Proctor
)

# Gera um número aleatório de acordo com o tamanho do array
random_index=$((RANDOM % ${#phrases[@]}))

echo "${phrases[$random_index]}"
