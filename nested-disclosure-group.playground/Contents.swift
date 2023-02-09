import SwiftUI
import PlaygroundSupport

struct NestedDisclosureGroupView: View {
    var body: some View {
        List {
        DisclosureGroup("Settings") {
            Text("Hello")
            Text("World")
            DisclosureGroup("Account") {
                Text("My Account")
                DisclosureGroup("Subcategory") {
                    Text("1")
                    Text("2")
                    Text("3")
                }
            }
            Text("!")
        }
        }
    }
}

let view = NestedDisclosureGroupView()
PlaygroundPage.current.setLiveView(view)
