//
//  SegundaViewController.swift
//  2025-2026 DAM 2C DI Devolver Informacion
//
//  Created by Ricardo on 17/12/25.
//

import UIKit

class SegundaViewController: UIViewController {
    
    @IBOutlet weak var txtTexto: UITextField!
    
    var delegate: ObtenerDatosProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnVolver(_ sender: Any) {
        let texto = txtTexto.text!
        
        delegate?.obtener(dato: texto)
        
        self.dismiss(animated: true)
    }
}
