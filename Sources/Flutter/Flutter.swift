@_exported import SwiftUI

public typealias Widget = View

public protocol StatelessWidget: Widget {}

public protocol StatefulWidget: Widget {
    
    associatedtype State: WidgetState
    
    var state: State { get }
}

public protocol WidgetState: ObservableObject {}

public struct ListView<Content: Widget>: Widget {
    
    let content: () -> Content
    
    public var body: some View {
        content()
    }
}

public extension ListView {
    @inlinable static func builder(
        itemCount: Int,
        @ViewBuilder builder: @escaping (Int) -> Content
    ) -> some Widget {
        ForEach(0 ..< itemCount, content: builder)
    }
}

public typealias Row = HStack

public typealias Column = VStack

public typealias Stack = ZStack
