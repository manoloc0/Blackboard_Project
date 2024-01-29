import SwiftUI

struct StickyNoteShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let offset : CGFloat = 3.0


        // Start from the top left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        // Top edge
        path.addLine(to: CGPoint(x: rect.maxX - offset , y: rect.minY))
        // Right edge
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        // Bottom edge with curled corner
        path.addLine(to: CGPoint(x: rect.minX ,  y: rect.maxY))
        // Left edge
        path.addLine(to: CGPoint(x: rect.minX + offset, y: rect.minY))

        return path
    }
}

struct ContentView1: View {
    var body: some View {
        StickyNoteShape()
            .fill(Color.yellow)
            .frame(width: 200, height: 200)
            .shadow(radius: 5)
    }
}


struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
