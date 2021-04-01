@_exported import SwiftUI

public typealias Widget = View

public protocol StatelessWidget: Widget {}

public protocol StatefulWidget: Widget {
    
    associatedtype State: WidgetState
    
    var state: State { get }
}

public protocol WidgetState: ObservableObject {}

public typealias ListView = List

public extension ListView where SelectionValue == Int {
    @inlinable static func builder<Content: Widget>(
        itemCount: Int,
        @ViewBuilder builder: @escaping (Int) -> Content
    ) -> some Widget {
        ForEach(0 ..< itemCount, content: builder)
    }
}

public typealias Row = HStack

public typealias Column = VStack

public typealias Stack = ZStack
