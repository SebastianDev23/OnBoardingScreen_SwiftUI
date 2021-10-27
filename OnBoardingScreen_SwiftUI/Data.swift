import Foundation


struct Card: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}


var testData: [Card] = [
Card(image: "1", title: "Test 1", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam"),
Card(image: "2", title: "Test 2", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam"),
Card(image: "3", title: "Test 3", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam")


]
