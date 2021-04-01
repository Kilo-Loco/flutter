import SwiftUI

public typealias Widget = View

public protocol StatelessWidget: Widget {}

public protocol StatefulWidget: Widget {
    
    associatedtype State: WidgetState
    
    var state: State { get }
}

public protocol WidgetState: ObservableObject {}
