//
//  InfoView.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/07/26.
//

import SwiftUI

struct InfoView: View {
  //MARK: - Properties
  
  @Environment(\.presentationMode) var presentationMode
  
  //MARK: - Body
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        HeaderComponent()
        
        Spacer(minLength: 10)
        
        Text("App Info")
          .fontWeight(.black)
          .modifier(TitleModifier())
        
        AppInfoView()
        
        Text("Credits")
          .fontWeight(.black)
          .modifier(TitleModifier())
        
        CreditsView()
        
        Spacer(minLength: 10)
        
        Button {
          presentationMode.wrappedValue.dismiss()
        } label: {
          Text("Continue".uppercased())
            .modifier(ButtonModifier())
        }

      } //: VStack
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding(.top, 15)
      .padding(.bottom, 25)
    .padding(.horizontal, 25)
    } //: ScrollView
  }
}

//MARK: - InfoView

struct AppInfoView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
      RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone and iPad")
      RowAppInfoView(itemOne: "Developer", itemTwo: "Kodirbek Khamzaev")
      RowAppInfoView(itemOne: "Designer", itemTwo: "Robert Petras")
      RowAppInfoView(itemOne: "Version", itemTwo: "1.0.0")
    } //: VStack
  }
}

struct RowAppInfoView: View {
  
  var itemOne: String
  var itemTwo: String
  
  var body: some View {
    VStack {
      HStack {
        Text(itemOne)
          .foregroundColor(.gray)
        Spacer()
        Text(itemTwo)
      }
      Divider()
    }
  }
}


//MARK: - Credits View
struct CreditsView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      HStack {
        Text("Photos")
          .foregroundColor(.gray)
        Spacer()
        Text("Unsplash")
      }
      Divider()
      
      Text("Photographers")
        .foregroundColor(.gray)
      
      Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
        .multilineTextAlignment(.leading)
        .font(.footnote)
    } //: VStack
  }
}



//MARK: - Preview
struct InfoView_Previews: PreviewProvider {
  static var previews: some View {
    InfoView()
  }
}






