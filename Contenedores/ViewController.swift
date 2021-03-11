//
//  ViewController.swift
//  Contenedores
//
//  Created by edeluz on 11/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contenedorVista: UIView!
    
    private lazy var vista1ViewController: Vista1ViewController = {
        let storyboard = UIStoryboard(name: "Vista1ViewController", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "vista1ViewController") as! Vista1ViewController
        return viewController
    }()
    private lazy var vista2ViewController: Vista2ViewController = {
        let storyboard = UIStoryboard(name: "Vista2ViewController", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "vista2ViewController") as! Vista2ViewController
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contenedorVista.addSubview(vista1ViewController.view) // llamarlo desde aqui, no hacerlo en la vista
    }

    @IBAction func cambiarController(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            contenedorVista.addSubview(vista1ViewController.view)
        } else {
            contenedorVista.addSubview(vista2ViewController.view)
        }
    }
    
}

