import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageChanger: UIImageView!
    let assets: [String] = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        randomBall()
    }

    
    @IBAction func ballChanger(_ sender: UIButton) {
        randomBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBall()
    }
    
    func randomBall(){
        randomNumber = Int.random(in: 0...4)
        imageChanger.image = UIImage(named: assets[randomNumber])
    }
}

