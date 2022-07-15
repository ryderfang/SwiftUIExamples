import SwiftUI

struct SearchUserBar: View {
    @Binding var text: String
    @State var action: () -> Void

    var body: some View {
        ZStack {
            HStack {
                TextField(
                    "Search User", text: $text
                    )
                    .padding([.leading, .trailing], 8)
                    .frame(height: 32)
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(8)
                    .autocapitalization(.none)

                Button(
                    action: action,
                    label: { Text("Search") }
                    )
                    .foregroundColor(Color.white)
                }
                .padding([.leading, .trailing], 16)
            }
            .frame(height: 64)
            .background(Color.yellow)
    }
}

#if DEBUG
struct SearchUserBar_Previews : PreviewProvider {
  static var previews: some View {
      SearchUserBar(text: .constant(""), action: {})
  }
}
#endif

