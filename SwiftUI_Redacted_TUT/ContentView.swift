//
//  ContentView.swift
//  SwiftUI_Redacted_TUT
//
//  Created by 김선중 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        VStack{
            Image("mydog")
                .resizable()
                .frame(width: 140, height: 140)
                .clipShape(Circle())
            
            Text("서근")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "envelope.circle.fill")
                        .renderingMode(.original)
                        .unredacted()
                    Text("ksj083895@gmail.com")
                }
                HStack {
                    Image(systemName: "phone.circle.fill")
                        .renderingMode(.original)
                        .unredacted()
                    Text("+82 10 1234 5678")
                }
                HStack {
                    Image(systemName: "network")
                        .foregroundColor(.yellow)
                        .unredacted()
                    Text("seons-dev.tistory.com")
                }
                
            }
            
            Spacer().frame(height: 30)
            
            Button(action: {
                print("프로필을 업데이트 합니다.")
                
            }){
                Text("Update Profile")
                    .frame(width: 200, height: 40)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            .disabled(isLoading)
        }
        
        .onAppear { startNetworkCall() }
        //isLoading이 true이면 .placeholder을 실행 그게아니면 empty
        .redacted(reason: isLoading ? .placeholder : [])
    }
    
    func startNetworkCall() {
        isLoading = true
        //3초 지연 후, 로딩이 완료됨
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
