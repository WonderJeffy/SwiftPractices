import I18NResource
import SwiftUI

public struct ViewB: View {
    public init() {}
    public var body: some View {
        Text("HELLO_WORLD", bundle: .i18n) // 使用 Bundle.i18n
            .font(.title)
            .foregroundColor(Color("i18nColor", bundle: .i18n)) // 使用 Bundle.i18n
    }
}

struct ViewBPreview: PreviewProvider {
    static var previews: some View {
        VStack {
            ViewB()
            ViewB()
                .environment(\.locale, .init(identifier: "zh-cn"))
            VStack {
                ViewB()
                ViewB()
                    .environment(\.locale, .init(identifier: "zh-cn"))
            }
            .environment(\.colorScheme, .dark)
        }
    }
}
