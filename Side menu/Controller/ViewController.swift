//
//  ViewController.swift
//  Side menu
//
//  Created by Konstantin Dmitrievskiy on 18.04.2021.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func menuButtonTapped(_ sender: UIBarButtonItem) {
    }

    @IBAction private func settingsButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "FirstViewController", bundle: Bundle.main)
        guard let destinationVC = storyboard.instantiateInitialViewController() as? FirstViewController else {
            fatalError("Could not find FirstViewController")
        }
//        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true, completion: nil)
    }

    @IBAction private func profileButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: Bundle.main)
        guard let destinationVC = storyboard.instantiateInitialViewController() as? SecondViewController else {
            fatalError("Could not find SecondViewController")
        }
//        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true, completion: nil)
    }

    @IBAction private func inboxButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ThirdViewController", bundle: Bundle.main)
        guard let destinationVC = storyboard.instantiateInitialViewController() as? ThirdViewController else {
            fatalError("Could not find ThirdViewController")
        }
//        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true, completion: nil)
    }
}
