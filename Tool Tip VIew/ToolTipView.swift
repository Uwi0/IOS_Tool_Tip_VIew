import SwiftUI

struct ToolTipView<Content: View, Message: View>: View {
    
    let content: Content
    let message: Message
    
    @State var showTooltip = false
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 0.5)
            .updating($press){ currentState, gestureState, _ in
                gestureState = currentState
            }
            .onEnded { finished in
                showTooltip.toggle()
            }
    }
    
    init(
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder message: @escaping () -> Message
    ){
        self.content = content()
        self.message = message()
    }
    
    var body: some View {
        ZStack {
            let animation: Animation = .spring(
                response: 0.4,
                dampingFraction: 0.6
            )
            
            content.gesture(longPress)
            message.opacity(press ? 1.0 : 0.0)
                .animation(
                    animation,
                    value: press
                )
        }
    }
}

#Preview {
    ToolTipView(
        content: {
            MyImageView()
        },
        message: {
            MessageView(text: "Image of lightning")
        }
    ).padding()
}
