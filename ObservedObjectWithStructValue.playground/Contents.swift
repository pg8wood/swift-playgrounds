import SwiftUI
import PlaygroundSupport

struct State {
    var value = 0
    var title = "hello"
}

class TestObservableObject: ObservableObject {
    @Published var state: State = State()
}

struct MyView: View {
    @ObservedObject var viewModel: TestObservableObject
    
    var body: some View {
        VStack {
            Text(viewModel.state.title)
            Text("\(viewModel.state.value)")
            
            Button("Edit view model") {
                viewModel.state.value = 1
                viewModel.state.title = "world"
            }
        }
    }
}

let view = MyView(viewModel: TestObservableObject())
PlaygroundPage.current.setLiveView(view)
