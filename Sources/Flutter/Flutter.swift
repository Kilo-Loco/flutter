import SwiftUI

typealias Widget = View

protocol StatelessWidget: Widget {}

protocol StatefulWidget: Widget {
    
    associatedtype State: WidgetState
    
    var state: State { get }
}

protocol WidgetState: ObservableObject {}
