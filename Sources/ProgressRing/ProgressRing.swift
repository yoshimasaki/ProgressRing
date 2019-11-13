import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct ProgressRing: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(viewModel.color, style: StrokeStyle(lineWidth: viewModel.ringWidth))
                .opacity(0.3)
            
            Circle()
                .trim(from: 1.01 - CGFloat(viewModel.progress), to: 1.0)
                .stroke(viewModel.color, style: StrokeStyle(lineWidth: viewModel.ringWidth, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1.0, y: .zero, z: .zero))
                .animation(.easeOut)
            
            Text(self.percentageText)
                .lineLimit(1)
                .padding(viewModel.ringWidth)
                .font(.system(size: 500.0, weight: .bold, design: .rounded))
                .minimumScaleFactor(0.01)
                .foregroundColor(self.viewModel.color)
        }
        .aspectRatio(1.0, contentMode: .fit)
        .padding(viewModel.ringWidth / 2)
    }
    
    private let percentageFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        return formatter
    }()
    
    var percentageText: String {
        percentageFormatter.string(from: NSNumber(floatLiteral: self.viewModel.progress)) ?? "--%"
    }
}
