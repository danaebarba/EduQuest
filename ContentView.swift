
import SwiftUI

struct ContentView: View{
    var body: some View{
        TabView{
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                VStack{
                    if tab == .topics {
                        Text("Topics")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        NavigationView {
                            List {
                                Section(header: Text("Topics")) {
                                    NavigationLink(destination: TopicsView()) {
                                        Label("Topics", systemImage: "list.bullet.circle")
                                    }
                                }
                                Section(header: Text("Courses")) {
                                    NavigationLink(destination: CourseView(title: "Introduction to SwiftUI")) {
                                        Label("Introduction to SwiftUI", systemImage: "1.circle")
                                    }
                                    NavigationLink(destination: CourseView(title: "Advanced SwiftUI")) {
                                        Label("Advanced SwiftUI", systemImage: "2.circle")
                                    }
                                    NavigationLink(destination: CourseView(title: "SwiftUI for iOS")) {
                                        Label("SwiftUI for iOS", systemImage: "3.circle")
                                    }
                                    NavigationLink(destination: CourseView(title: "SwiftUI for macOS")) {
                                        Label("SwiftUI for macOS", systemImage: "4.circle")
                                    }
                                }
                            }
                            .navigationTitle("Courses")
                        }
                    } else if tab == .home{
                        HomeView()
                            .tag(tab)
                            .tabItem {
                                Image(systemName: tab.symbol)
                                Text(tab.rawValue)
                            }
                    } else if tab == .rewards{
                        RewardsView()
                            .tag(tab)
                            .tabItem {
                                Image(systemName: tab.symbol)
                                Text(tab.rawValue)
                            }
                    } else if tab == .settings {
                        SettingsView()
                            .tag(tab)
                            .tabItem {
                                Image(systemName: tab.symbol)
                                Text(tab.rawValue)
                            }
                    }
                        Spacer()
                    }
                        .tag(tab)
                        .tabItem{
                            Image(systemName: tab.symbol)
                            Text(tab.rawValue)
                        }
                }
            }
        }
    }
    
    struct TopicsView: View {
        var body: some View {
            List {
                NavigationLink(destination: MathView()) {
                    Label("Mathematics", systemImage: "1.circle")
                }
                NavigationLink(destination: ScienceView()) {
                    Label("Science", systemImage: "2.circle")
                }
                NavigationLink(destination: SpanishView()) {
                    Label("Spanish", systemImage: "3.circle")
                }
                NavigationLink(destination: EnglishView()) {
                    Label("English", systemImage: "4.circle")
                }
            }
            .navigationTitle("Topics")
        }
    }
    
    struct MathView: View {
        var body: some View {
                List {
                    NavigationLink(destination: Level1MathView()) {
                        Label("Level 1", systemImage: "1.circle")
                    }
                    NavigationLink(destination: Level2MathView()) {
                        Label("Level 2", systemImage: "2.circle")
                    }
                    NavigationLink(destination: Level3MathView()) {
                        Label("Level 3", systemImage: "3.circle")
                    }
                }
                .navigationTitle("Mathematics")
        }
    }
    
    struct ScienceView: View {
        var body: some View {
            NavigationView {
                List {
                    NavigationLink(destination: Level1ScienceView()) {
                        Label("Level 1", systemImage: "1.circle")
                    }
                    NavigationLink(destination: Level2ScienceView()) {
                        Label("Level 2", systemImage: "2.circle")
                    }
                    NavigationLink(destination: Level3ScienceView()) {
                        Label("Level 3", systemImage: "3.circle")
                    }
                }
                .navigationTitle("Science")
            }
        }
    }

struct Level1ScienceView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the process of photosynthesis?", answer: "The process by which green plants and some other organisms use sunlight to synthesize foods from carbon dioxide and water.")
            QuestionView(question: "What is the force that attracts objects towards the center of the Earth?", answer: "Gravity")
            QuestionView(question: "What is the process of osmosis?", answer: "The process by which solvents move through a semi-permeable membrane from an area of lower solute concentration to an area of higher solute concentration.")
        }
        .navigationTitle("Level 1")
    }
}

struct Level2ScienceView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the chemical symbol for the element Oxygen?", answer: "O")
            QuestionView(question: "What is the process of mitosis?", answer: "The process by which a eukaryotic cell divides into two daughter cells.")
            QuestionView(question: "What is the process of meiosis?", answer: "The process by which a diploid cell undergoes two successive cell divisions to produce four haploid cells.")
        }
        .navigationTitle("Level 2")}
}

struct Level3ScienceView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the theory of relativity?", answer: "A theory proposed by Albert Einstein that describes the laws of physics in the presence of gravity.")
            QuestionView(question: "What is the process of evolution?", answer: "The process by which species change over time due to genetic mutations and natural selection.")
            QuestionView(question: "What is the process of thermodynamics?", answer: "The study of the relationships between heat, work, and energy.")
        }
        .navigationTitle("Level 3")
    }
}
    
    struct SpanishView: View {
        var body: some View {
            NavigationView {
                List {
                    NavigationLink(destination: Level1SpanishView()) {
                        Label("Level 1", systemImage: "1.circle")
                    }
                    NavigationLink(destination: Level2SpanishView()) {
                        Label("Level 2", systemImage: "2.circle")
                    }
                    NavigationLink(destination: Level3SpanishView()) {
                        Label("Level 3", systemImage: "3.circle")
                    }
                }
                .navigationTitle("Spanish")
            }
        }
    }

struct Level1SpanishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'hablar'?", answer: "Hablé")
            QuestionView(question: "What is the feminine singular form of the noun 'libro'?", answer: "la libra")
            QuestionView(question: "What is the masculine plural form of the adjective 'grande'?", answer: "grandes")
        }
        .navigationTitle("Level 1")
    }
}

struct Level2SpanishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'comer'?", answer: "Comí")
            QuestionView(question: "What is the feminine singular form of the noun 'casa'?", answer: "la casa")
            QuestionView(question: "What is the masculine plural form of the adjective 'feliz'?", answer: "felices")
        }
        .navigationTitle("Level 2")
    }
}

struct Level3SpanishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'ver'?", answer: "Vi")
            QuestionView(question: "What is the feminine singular form of the noun 'mano'?", answer: "la mano")
            QuestionView(question: "What is the masculine plural form of the adjective 'triste'?", answer: "tristes")
        }
        .navigationTitle("Level 3")
    }
}

    struct EnglishView: View {
        var body: some View {
            NavigationView {
                List {
                    NavigationLink(destination: Level1EnglishView()) {
                        Label("Level 1", systemImage: "1.circle")
                    }
                    NavigationLink(destination: Level2EnglishView()) {
                        Label("Level 2", systemImage: "2.circle")
                    }
                    NavigationLink(destination: Level3EnglishView()) {
                        Label("Level 3", systemImage: "3.circle")
                    }
                }
                .navigationTitle("English")
            }
        }
    }

struct Level1EnglishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'to go'?", answer: "Went")
            QuestionView(question: "What is the feminine singular form of the noun 'actor'?", answer: "actress")
            QuestionView(question: "What is the masculine plural form of the adjective 'happy'?", answer: "happy")
        }
        .navigationTitle("Level 1")
    }
}

struct Level2EnglishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'to eat'?", answer: "Ate")
            QuestionView(question: "What is the feminine singular form of the noun 'friend'?",answer: "female friend")
            QuestionView(question: "What is the masculine plural form of the adjective 'angry'?", answer: "angry")
        }
        .navigationTitle("Level 2")
    }
}

struct Level3EnglishView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the past tense of the verb 'to drink'?", answer: "Drank")
            QuestionView(question: "What is the feminine singular form of the noun 'teacher'?", answer: "female teacher")
            QuestionView(question: "What is the masculine plural form of the adjective 'tired'?", answer: "tired")
        }
        .navigationTitle("Level 3")
    }
}
    
    struct Level1MathView: View {
        var body: some View {
            List{
                QuestionView(question: "What is 2 + 2?", answer: "4")
                QuestionView(question: "What is the square root of 16?", answer: "4")
                QuestionView(question: "What is the cube of 3?", answer: "27")
            }
            .navigationTitle("Level 1")
        }
    }
    
struct Level2MathView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the derivative of y = x^2?", answer: "dy/dx = 2x")
            QuestionView(question: "What is the integral of e^x?", answer: "∫e^x dx = e^x + C")
            QuestionView(question: "What is the second derivative of y = x^3?", answer: "d²y/dx² = 6x")
        }
        .navigationTitle("Level 2")
    }
}

struct Level3MathView: View {
    var body: some View {
        List {
            QuestionView(question: "What is the limit of (x^2 - 1) / (x - 1) as x approaches 1?", answer: "f(x) = x + 1")
            QuestionView(question: "What is the Taylor series of e^x?", answer: "e^x = 1 + x + x^2/2! + x^3/3! + ... + x^n/n!")
            QuestionView(question: "What is the Maclaurin series of sin(x)?", answer: "sin(x) = x - x^3/3! + x^5/5! - x^7/7! + ... + (-1)^n * x^(2n+1) / (2n+1)!")
        }
        .navigationTitle("Level 3")
    }
}


    
struct QuestionView: View {
    let question: String
    @State private var userAnswer = ""
    let answer: String
    @State private var showAnswerMessage = "1"

    var body: some View {
        VStack(alignment: .leading) {
            Text(question)
                .font(.title)
                .padding()
            TextField("Enter your answer", text: $userAnswer)
                .padding()
            Button(action: {
                if userAnswer == answer {
                    self.showAnswerMessage = "2"
                } else {
                    self.showAnswerMessage = "3"
                }
            }) {
                Text("Submit")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            if showAnswerMessage == "2"  || showAnswerMessage == "3"{
                if userAnswer == answer {
                    Text("Correcto!")
                        .font(.headline)
                        .foregroundColor(.green)
                        .padding()
                } else {
                    Text("Incorrecto.")
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
    }
}

    struct CourseView: View {
        let title: String
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Learn about \(title) in this course.")
                    .padding()
            }
        }
    }
    struct SettingsView: View {
        @State private var username = ""
        @State private var email = ""
        @State private var password = ""
        @State private var confirmPassword = ""
        @State private var notificationEnabled = true
        @State private var selectedLanguageIndex = 0

        var body: some View {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    SecureField("Confirm Password", text: $confirmPassword)
                }

                Section(header: Text("Notifications")) {
                    Toggle(isOn: $notificationEnabled) {
                        Text("Receive notifications")
                    }
                }

                Section(header: Text("Language")) {
                    Picker("Select language", selection: $selectedLanguageIndex) {
                        Text("English").tag(0)
                        Text("Español").tag(1)
                        Text("Français").tag(2)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }

struct RewardsView: View {
    @State private var points = 100
    @State private var level = 1
    @State private var medals = 0

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Points")) {
                    Text("\(points) points")
                }

                Section(header: Text("Level")) {
                    Text("Level \(level)")
                }

                Section(header: Text("Medals")) {
                    Text("\(medals) medals")
                }

                Section(header: Text("Rewards")) {
                    ForEach(rewards, id: \.self) { reward in
                        if reward.pointsRequired <= self.points {
                                HStack {
                    Image(systemName: reward.icon)
                        .imageScale(.large)
                    Text(reward.name)
                        .font(.headline)
                    Spacer()
                    Text("\(reward.pointsRequired) points")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    if reward.medalsRequired <= self.medals {
                        Image(systemName: "medal")
                            .imageScale(.large)
                            .foregroundColor(.yellow)
                    }
                    if self.level >= reward.levelRequired {
                        Image(systemName: "checkmark.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(.green)
                    }
                    if reward.pointsRequired <= self.points && reward.medalsRequired <= self.medals && self.level >= reward.levelRequired {
                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Rewards")
        }
    }


struct Reward: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let pointsRequired: Int
    let medalsRequired: Int
    let levelRequired: Int
}

extension Reward: Hashable {
    var hashValue: Int {
        return id.hashValue
    }
}

let rewards = [
    Reward(name: "Sticker Pack", icon: "star.fill", pointsRequired: 100, medalsRequired: 0, levelRequired: 1),
    Reward(name: "T-Shirt", icon: "tshirt", pointsRequired: 500, medalsRequired: 1, levelRequired: 2),
    Reward(name: "Hoodie", icon: "hoodie", pointsRequired: 1000, medalsRequired: 3, levelRequired: 3),
    Reward(name: "Backpack", icon: "backpack", pointsRequired: 2000, medalsRequired: 5, levelRequired: 4),
    Reward(name: "iPad", icon: "ipad", pointsRequired: 5000, medalsRequired: 10, levelRequired: 5)
]

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                //boton 1
                NavigationLink(destination: Nivel1()) {
                            Text("  ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                        }
                        .position(x:320, y: 80)
                // boton 2
                NavigationLink(destination: Nivel1()) {
                    Text("  ")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(10)
                }
                .position(x: 60, y: 180)
                //boton 3
                NavigationLink(destination: Nivel1()) {
                            Text("  ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                        }
                        .position(x: 320, y: 0)
                //boton 6
                NavigationLink(destination: Nivel1()) {
                            Text("  ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                        }
                        .position(x: 70, y: 285)
                //boton 4
                NavigationLink(destination: Nivel1()) {
                            Text("  ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                        }
                        .position(x: 70, y: -60)
                //boton 5
                NavigationLink(destination: Nivel1()) {
                            Text("  ")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                        }
                        .position(x: 330, y: -60)
            }
            .background(
                Image("Nievel")
                    .resizable()
                    .scaledToFill()
            )
            
        }
    }
}

struct Nivel1: View {
    var body: some View {
        List {
            QuestionView(question: "¿Cuál es el producto de 3 y 4?", answer: "12")
            QuestionView(question: "What is the force that attracts objects towards the center of the Earth?", answer: "Gravity")
           QuestionView(question: "¿Cuál es la principal fuente de energía para las células?", answer: "La glucosa.")
           QuestionView(question: "¿Cuál es el principal producto de la respiración celular?", answer: "El ATP.")
            QuestionView(question: "¿Cuál es la raíz cuadrada de 81?", answer: "9")
            QuestionView(question: "What's the plural of child?", answer: "Children")
            QuestionView(question: "What's the third person singular of to do?", answer: "Does")
            QuestionView(question: "¿Qué tipo de palabra es correr?", answer: "Verbo")
            QuestionView(question: "¿Cuál es el antónimo de grande?", answer: "Pequeño")
        }
        .navigationTitle("Nivel1")
    }
}

#if DEBUG
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
#endif


