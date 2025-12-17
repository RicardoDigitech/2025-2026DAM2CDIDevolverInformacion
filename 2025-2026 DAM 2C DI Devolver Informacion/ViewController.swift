//
//  ViewController.swift
//  2025-2026 DAM 2C DI Devolver Informacion
//
//  Created by Ricardo on 17/12/25.
//

import UIKit

class ViewController: UIViewController, ObtenerDatosProtocol {
    
    func obtener(dato: String) {
        lblTexto.text = dato
    }
    
    
    @IBOutlet weak var lblTexto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnPasar(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "PASAR") {
            let destino = segue.destination as! SegundaViewController
            destino.delegate = self
        }
    }
}
