//
//  NewInfoSheet.swift
//  FGRN
//
//  Created by FAITH CHONG RUI EN stu on 5/11/22.
//

import SwiftUI

struct NewInfoSheet: View {
    @State var infos = ""
    @Binding var questions: [Question]
    @State var contentGenre = 3
    @Binding var BasicInfo: Int
    @Binding var Greeting: Int
    @Binding var Content: Int
    @Binding var Closing: Int

    @State var typeString: String

    

    @State  var ah = ["Basic Info", "Greeting", "Content", "Closing"]

    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("enter extra info", text: $infos)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            
            Picker("Info Genre", selection: $typeString) {
                ForEach(ah, id: \.self) { option in
                    Text(option)
                        .tag(option)
                        .foregroundColor(Color.lightBlue)
                        .font(.system(size: 25))
                }

//                           Text("Basic Info").tag(0)
//                           Text("Greeting").tag(1)
//                           Text("Content").tag(2)
//                           Text("Closing").tag(3)
              
            
                       }
            
            
            
            Button("save info") {
                if typeString == "Basic Info" {
                    questions.insert((Question(question: "", input: infos, questionType: typeString)), at: 0)
//                    BasicInfo = BasicInfo + 1
                    Greeting = Greeting + 1
                    Content = Content + 1
                    Closing = Closing + 1
                }
//                questions.insert(infos, at: //content gengre thinh)
                dismiss()
            }
        }
    }
}

//struct NewInfoSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        NewInfoSheet(questions: .constant([]))
//    }
//}
