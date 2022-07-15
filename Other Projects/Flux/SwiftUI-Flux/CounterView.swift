import SwiftUI

struct CounterView : View {
    enum Action {
        case increment
        case decrement
    }

    @State var store = Store<Int, Action>(initial: 0) { count, action in
        switch action {
        case .increment:
            return count + 1

        case .decrement:
            return max(0, count - 1)
        }
    }

    // enough ?!
    @State private var textString = 0

    var body: some View {
        VStack {
            Text("\(textString)")

            HStack {
                Button(action: {
                    self.store.dispatch(action: .decrement)
                    textString -= 1
                }) {
                    Text("Decrement")
                }

                Button(action: {
                    self.store.dispatch(action: .increment)
                    textString += 1
                }) {
                    Text("Increment")
                }
            }
        }
    }
}
