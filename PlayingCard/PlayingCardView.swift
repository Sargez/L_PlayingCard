//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by 1C on 22/04/2022.
//

import UIKit

@IBDesignable
class PlayingCardView: UIView {

    @IBInspectable
    var rank: Int = 11 {didSet {setNeedsDisplay(); setNeedsLayout()}}
    @IBInspectable
    var suit: String = "❤️" {didSet {setNeedsDisplay(); setNeedsLayout()}}
    @IBInspectable
    var isFaceUp: Bool = true {didSet {setNeedsDisplay(); setNeedsLayout()}}
    
    var cardFaceScale: CGFloat = SizeRatio.faceCardImageSizeToBoundsSize {didSet {setNeedsDisplay()}}
    
    @objc func adjustCardFaceScale(byHandlingPinchRecognized recognizer: UIPinchGestureRecognizer) {
        switch recognizer.state {
        case .ended, .changed:
            cardFaceScale *= recognizer.scale
            recognizer.scale = 1
        default:
            break
        }
    }
    
    private lazy var upperLeftCornerLabel: UILabel = createCornerLabel()
    private lazy var lowerRightCornerLabel: UILabel = createCornerLabel()
    
       
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsDisplay()
        setNeedsLayout()
    }
    
    
    
    override func draw(_ rect: CGRect) {
         
        
        
//        Drawing with Core graphics (context_
//        if let context = UIGraphicsGetCurrentContext() {
//            context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//            context.setLineWidth(5.0)
//            UIColor.green.setFill()
//            UIColor.red.setStroke()
//            context.strokePath()
//            context.fillPath()
//        }
//
//        Drawing with UIBezierPath
//        let path = UIBezierPath()
//        path.lineWidth = 5.0
//        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//        UIColor.green.setFill()
//        UIColor.red.setStroke()
//        path.stroke()
//        path.fill()
        
//        ==============MY TEST=================
//        let labelRect = CGRect(x: 20, y: 20, width: 100, height: 50)
//        let label = UILabel(frame: labelRect)
//        label.text = "Sergey hello!"
//        addSubview(label)
        
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x:rect.midX, y:rect.midY-80))
//        path.addLine(to: CGPoint(x: rect.maxX-10, y: rect.midY+70))
//        path.addLine(to: CGPoint(x: rect.minX+10, y: rect.midY+70))
//        path.close()
//
//        UIColor.green.setFill()
//        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
//        path.lineWidth = 3.0
//        path.fill()
//        path.stroke()
        
//        let _rect = CGRect(origin: CGPoint(x:rect.midX-50, y:rect.midY-50),
//                          size: CGSize(width: 100, height: 100))
//        let path = UIBezierPath(roundedRect: _rect, cornerRadius: CGFloat(8.0))
//        UIColor.red.withAlphaComponent(0.5).setStroke()
//        path.lineWidth = 3.0
//        //path.stroke()
//        path.addClip()
//        //UIColor.red.setStroke()
//        //path.lineWidth = 3.0
//        //path.move(to: rect.origin)
//        for y in stride(from: rect.minY, through: rect.maxY, by: 10) {
//            path.move(to: CGPoint(x: rect.minX, y: y))
//            path.addLine(to: CGPoint(x: rect.maxX, y: y))
//
//        }
//        path.stroke()
//
//        print(path.contains(CGPoint(x: rect.midX, y: rect.midY)))
////        path.stroke()
//        let oval = UIBezierPath(ovalIn: _rect)
//        UIColor.red.withAlphaComponent(0.1).setFill()
//        oval.fill()
//
//

        
  //      var path = UIBezierPath()
//        path.move(to: CGPoint(x:rect.midX, y:rect.midY-80))
//        path.addArc(
//            withCenter: CGPoint(x:rect.midX, y:rect.midY-80),
//            radius: 15*CGFloat.pi,
//            startAngle: 0,
//            endAngle: 180,
//            clockwise: true)
//
////        UIColor.red.setFill()
////        path.fill()
//        UIColor.green.setStroke()
//        path.lineWidth = 3
//        path.stroke()
        
//        path = UIBezierPath()
//        path.move(to: CGPoint(x:rect.midX, y:rect.midY+50))
//        path.addCurve(to: CGPoint(x:rect.midX, y:rect.midY+200),
//                      controlPoint1: CGPoint(x:rect.midX-40, y:rect.midY+100),
//                      controlPoint2: CGPoint(x:rect.midX-40, y:rect.midY+150))
//
//        UIColor.magenta.setFill()
//                path.fill()
//                UIColor.yellow.setStroke()
//                path.lineWidth = 3
//                path.stroke()
//
//        path = UIBezierPath()
//        path.move(to: CGPoint(x:rect.midX, y:rect.midY-200))
//        path.addQuadCurve(to: CGPoint(x:rect.midX, y:rect.midY),
//                          controlPoint: CGPoint(x:rect.midX-150, y:rect.midY-100))
//
//        UIColor.magenta.setFill()
//                path.fill()
//                UIColor.green.setStroke()
//                path.lineWidth = 3
//                path.stroke()
        
//
//         let _rect = CGRect(origin: CGPoint(x:rect.midX-50, y:rect.midY-50),
//                            size: CGSize(width: 100, height: 100))
//        let path = UIBezierPath(roundedRect: _rect, cornerRadius: CGFloat(8.0))
//        UIColor.red.withAlphaComponent(1).setStroke()
//        path.lineWidth = 3.0
//        path.stroke()
//
//        let newrect = _rect.insetBy(dx: -20, dy: -20)
//        let path2 = UIBezierPath(roundedRect: newrect, cornerRadius: CGFloat(8.0))
//        UIColor.green.withAlphaComponent(1).setStroke()
//        path2.lineWidth = 3.0
//        path2.stroke()
//
//        let renewrect = newrect.sized(to: CGSize(width: newrect.size.width*1.5,
//                                                 height: newrect.size.height*1.5))
//
//
//        let path3 = UIBezierPath(roundedRect: renewrect, cornerRadius: CGFloat(8.0))
//        UIColor.magenta.withAlphaComponent(1).setStroke()
//        path3.lineWidth = 3.0
//        path3.stroke()
        
//        ==============MY TEST=================
        
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        roundedRect.addClip()
        UIColor.white.setFill()
        roundedRect.fill()

        if isFaceUp {
            
            if let cardImage = UIImage(named: rankString + suit,
                                       in: Bundle(for: self.classForCoder),
                                       compatibleWith: traitCollection) {
                cardImage.draw(in: bounds.zoom(by: cardFaceScale))
            } else {
                drawPips()
            }

        } else {
            if let cardBack = UIImage(named: "cardback", in: Bundle(for: self.classForCoder), compatibleWith: traitCollection) {
                cardBack.draw(in: bounds)
            }
        }
        
    }
    
    private func drawPips()
        {
            let pipsPerRowForRank = [[0],[1],[1,1],[1,1,1],[2,2],[2,1,2],[2,2,2],[2,1,2,2],[2,2,2,2],[2,2,1,2,2],[2,2,2,2,2]]
            
            func createPipString(thatFits pipRect: CGRect) -> NSAttributedString {
                let maxVerticalPipCount = CGFloat(pipsPerRowForRank.reduce(0) { max($1.count, $0) })
                let maxHorizontalPipCount = CGFloat(pipsPerRowForRank.reduce(0) { max($1.max() ?? 0, $0) })
                let verticalPipRowSpacing = pipRect.size.height / maxVerticalPipCount
                let attemptedPipString = centeredAttributedString(suit, fontSize: verticalPipRowSpacing)
                let probablyOkayPipStringFontSize = verticalPipRowSpacing / (attemptedPipString.size().height / verticalPipRowSpacing)
                let probablyOkayPipString = centeredAttributedString(suit, fontSize: probablyOkayPipStringFontSize)
                if probablyOkayPipString.size().width > pipRect.size.width / maxHorizontalPipCount {
                    return centeredAttributedString(suit, fontSize: probablyOkayPipStringFontSize / (probablyOkayPipString.size().width / (pipRect.size.width / maxHorizontalPipCount)))
                } else {
                    return probablyOkayPipString
                }
            }
            
            if pipsPerRowForRank.indices.contains(rank) {
                let pipsPerRow = pipsPerRowForRank[rank]
                var pipRect = bounds.insetBy(dx: cornerOffset, dy: cornerOffset).insetBy(dx: cornerString.size().width, dy: cornerString.size().height / 2)
                let pipString = createPipString(thatFits: pipRect)
                let pipRowSpacing = pipRect.size.height / CGFloat(pipsPerRow.count)
                pipRect.size.height = pipString.size().height
                pipRect.origin.y += (pipRowSpacing - pipRect.size.height) / 2
                for pipCount in pipsPerRow {
                    switch pipCount {
                    case 1:
                        pipString.draw(in: pipRect)
                    case 2:
                        pipString.draw(in: pipRect.leftHalf)
                        pipString.draw(in: pipRect.rightHalf)
                    default:
                        break
                    }
                    pipRect.origin.y += pipRowSpacing
                }
            }
        }

    private func centeredAttributedString(_ string: String, fontSize: CGFloat) -> NSAttributedString {
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        return NSAttributedString.init(string: string,
                                       attributes: [.paragraphStyle: paragraphStyle, .font: font])
        
    }
    
    
    
    private var cornerString: NSAttributedString {
       return centeredAttributedString(rankString + "\n" + suit, fontSize: cornerFontSize)
    }

    private func createCornerLabel() -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        addSubview(label)
        return label
    }
    
    private func configureCornerLabel(_ label:UILabel) {
        label.attributedText = cornerString
        label.frame.size = CGSize.zero
        label.sizeToFit()
        label.isHidden = !isFaceUp
    }
   
    override func layoutSubviews() {
        super.layoutSubviews()
        
        configureCornerLabel(upperLeftCornerLabel)
        upperLeftCornerLabel.frame.origin = bounds.origin.offsetBy(dx: cornerOffset, dy: cornerOffset)
        
        configureCornerLabel(lowerRightCornerLabel)
        
        lowerRightCornerLabel.transform = CGAffineTransform.identity.translatedBy(x: lowerRightCornerLabel.frame.width, y: lowerRightCornerLabel.frame.height).rotated(by: CGFloat.pi)

        lowerRightCornerLabel.frame.origin = CGPoint(x: bounds.maxX, y: bounds.maxY).offsetBy(dx: -cornerOffset, dy: -cornerOffset).offsetBy(dx: -lowerRightCornerLabel.frame.width, dy: -lowerRightCornerLabel.frame.height)
    
    }
}

extension PlayingCardView {
    private struct SizeRatio {
        static let cornerFontSizeToBoundsHeight: CGFloat = 0.085
        static let cornerRadiusToBoundsHeight: CGFloat = 0.06
        static let cornerOffsetToCornerRadius: CGFloat = 0.33
        static let faceCardImageSizeToBoundsSize: CGFloat = 0.75
    }
    private var cornerRadius: CGFloat {
        bounds.size.height * SizeRatio.cornerRadiusToBoundsHeight
    }
    private var cornerOffset: CGFloat {
        cornerRadius * SizeRatio.cornerOffsetToCornerRadius
    }
    private var cornerFontSize: CGFloat {
        bounds.size.height * SizeRatio.cornerFontSizeToBoundsHeight
    }
    private var rankString: String {
        switch rank {
        case 1: return "A"
        case 2...10: return String(rank)
        case 11: return "J"
        case 12: return "Q"
        case 13: return "K"
        default: return "?"
        }
    }
}

extension CGPoint {
    func offsetBy(dx: CGFloat, dy: CGFloat) -> CGPoint {
        return CGPoint(x: x+dx, y: y+dy)
    }
}

extension CGRect {
    var leftHalf: CGRect {
        CGRect(x: minX, y: minY, width: width/2, height: height)
    }
    var rightHalf: CGRect {
        CGRect(x: midX, y: minY, width: width/2, height: height)
    }
    func inset(by size: CGSize) -> CGRect {
        insetBy(dx: size.width, dy: size.height)
    }
    func sized(to size: CGSize) -> CGRect {
        CGRect(origin: origin, size: size)
    }
    func zoom(by scale: CGFloat) -> CGRect {
        let newWidth = width * scale
        let newHeight = height * scale
        return insetBy(dx: (width - newWidth)/2, dy: (height - newHeight)/2)
    }
}
