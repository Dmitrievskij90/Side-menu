//
//  ViewController.swift
//  Side menu
//
//  Created by Konstantin Dmitrievskiy on 18.04.2021.
//

import UIKit

class HomeViewController: UIViewController {
    private var isMenuVisible = false

    @IBOutlet weak var leadingViewConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateNavigationBarUI()
    }

    @IBAction private func menuButtonTapped(_ sender: UIBarButtonItem) {
        if isMenuVisible == false {
            leadingViewConstraint.constant = view.bounds.width / 2
            isMenuVisible = true
        } else {
            leadingViewConstraint.constant = 0
            isMenuVisible = false
        }

        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
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

    private func updateNavigationBarUI() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.tintColor = .white

        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
}
