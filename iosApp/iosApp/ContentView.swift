import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        Text(TimeZoneHelperImpl().currentTime())
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
