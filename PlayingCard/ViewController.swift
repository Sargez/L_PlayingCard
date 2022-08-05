//
//  ViewController.swift
//  PlayingCard
//
//  Created by 1C on 21/04/2022.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    
    @IBOutlet private var cardViews: [PlayingCardView]!
    
    private var myCardViews: [PlayingCardView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var grid = Grid(layout: Grid.Layout.aspectRatio(0.625), frame: view.bounds)
        grid.cellCount = 0
        //grid.aspectRatio = 0.625
        
        var cards = [PlayingCard]()
        for _ in 1...12 {
            let card = deck.draw()!
            cards += [card,card]
        }
//        for cardView in cardViews {
//            cardView.isFaceUp = true
//            let card = cards.remove(at: cards.count.arc4random)
//            cardView.rank = card.rank.order
//            cardView.suit = card.suit.rawValue
//        }
        
       
        
        for row in 0..<grid.dimensions.rowCount {
            for column in 0..<grid.dimensions.columnCount {
                if let frameCard = grid[row, column] {
                    let cgSize = CGSize(width: 5, height: 5)
                    let cardView = PlayingCardView(frame: frameCard.inset(by: cgSize))
                    cardView.isFaceUp = true
                    let card = cards.remove(at: cards.count.arc4random)
                    cardView.suit = card.suit.rawValue
                    cardView.rank = card.rank.order
                    view.addSubview(cardView)
                }
            }
        }
        
        
        
//        let labelRect = CGRect(x: 20, y: 100, width: 150, height: 50)
//        let label2 = UILabel(frame: labelRect)
//        label2.text = "Sergey hello2!"
//        view.addSubview(label2)
        
//        let space = CGFloat(5)
//        let amountCards = CGFloat(2)
//        let widthOn1card = (view.bounds.size.width - (2*amountCards*space))/amountCards
//        let heightOn1Card = 8*widthOn1card/5
//        
//        
//        let cgSizeCard = CGSize(width: widthOn1card, height: heightOn1Card)
//        let origin = CGPoint(x: 5,y: 40)
//        
//        
//        myCardViews = []
//        
//        var playingCardRect = CGRect(origin: origin, size: cgSizeCard)
//        var playingCardView = PlayingCardView(frame: playingCardRect)
//        playingCardView.isFaceUp = true
//        playingCardView.rank = PlayingCard.Rank.numeric(10).order
//        playingCardView.suit = PlayingCard.Suit.heats.rawValue
//        view.addSubview(playingCardView)
//        myCardViews.append(playingCardView)
//       
//        playingCardRect = playingCardRect.offsetBy(dx: cgSizeCard.width + space, dy: 0)
//        playingCardView = PlayingCardView(frame: playingCardRect)
//        playingCardView.isFaceUp = true
//        playingCardView.rank = PlayingCard.Rank.numeric(10).order
//        playingCardView.suit = PlayingCard.Suit.heats.rawValue
//        
//        view.addSubview(playingCardView)
//        myCardViews.append(playingCardView)
//        
//        for index in myCardViews.indices {
//            print("\(myCardViews[index].rank)\(myCardViews[index].suit)")
//        }
        
    }

    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            swipe.direction = [.left,.right]
            playingCardView.addGestureRecognizer(swipe)

            let pinch = UIPinchGestureRecognizer(target: playingCardView, action: #selector(playingCardView.adjustCardFaceScale(byHandlingPinchRecognized:)))
            playingCardView.addGestureRecognizer(pinch)
        }
    }

    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {

        switch sender.state {
        case .ended: playingCardView.isFaceUp = !playingCardView.isFaceUp
        default:
            break
        }

    }

    @objc func nextCard() {

        if let card = deck.draw() {
            playingCardView.suit = card.suit.rawValue
            playingCardView.rank = card.rank.order
        }

    }

}

