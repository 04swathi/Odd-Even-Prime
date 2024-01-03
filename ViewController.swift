
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
    super.viewDidLoad()
    }

    @IBAction func checkNumber(_ sender: UIButton) {
    if let numberText = numberTextField.text, let number = Int(numberText) {
    let result = checkPrimeEvenOdd(number: number)
    resultLabel.text = result
    } else {
    resultLabel.text = "Invalid input"
    }
    }

    func checkPrimeEvenOdd(number: Int) -> String {
    if number < 0 || number > 10 {
    return "Number should be between 0 and 10"
    }

    if number < 2 {
    return "Number is neither prime nor composite"
    }

    for i in 2..<number {
    if number % i == 0 {
    return "Number is composite (not prime)"
    }
    }

    if number % 2 == 0 {
    return "Number is even"
    } else {
    return "Number is odd"
    }
    }
    }
