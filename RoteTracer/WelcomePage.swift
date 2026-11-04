import SwiftUI

struct WelcomePage: View {

    @State private var trackingText = ""

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text("What are you tracking?")
                .font(.title)

            TextField("Enter what you want to track", text: $trackingText)
                .textFieldStyle(.roundedBorder)

            Button("Start Tracking") {
                print("Tracking: \(trackingText)")
            }
            .buttonStyle(.borderedProminent)
            .disabled(trackingText.trimmingCharacters(in: .whitespaces).isEmpty)

        }
        .padding()
    }
}
