// ViewController.swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(_ sender: Any) {
        // Instantiate the second view controller
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }

        // Set the modal presentation style to cross dissolve
        secondViewController.modalTransitionStyle = .crossDissolve

        // Present the second view controller with a cross dissolve animation
        present(secondViewController, animated: true, completion: nil)
    }
}
