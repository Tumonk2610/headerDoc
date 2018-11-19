//
//  ViewController.swift
//  HeaderDoc
//
//  Created by ViTuNguyen on 11/16/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var lblResults: UILabel!
    
    var  viewModel = ViewModel()
    let disposeBag = DisposeBag()
    
    
    
    

    
    /// Khi Màn hình khởi tạo xong, Truyền giá trị của Ô nhập A và Ô nhập B cho ViewModel Xử lý.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtA.rx.text.map{$0 ?? ""}.bind(to: viewModel.txtA).disposed(by: disposeBag)
        txtB.rx.text.map{$0 ?? ""}.bind(to: viewModel.txtB).disposed(by: disposeBag)
        
    }
    
    /// Chọn vào nút math Tính tổng  giá trị  2 số A và B
    ///
    /// - Parameter sender: Tự Động lấy 2 giá tự từ Ô nhập A và Ô nhập B
    @IBAction func didTapMathButton(_ sender: Any) {
        viewModel.mathX().subscribe(onNext: { (math) in
            self.lblResults.text = math
        }).disposed(by: disposeBag)
    }
    

    /// Chọn nút Math- Tính hiệu 2 số A và B
    ///
    /// - Parameter sender: Truyền giá trị từ ô nhập A và Ô nhập B vào phép Tính C.
    @IBAction func didTapMathMinusButton(_ sender: Any) {
        self.lblResults.text =  viewModel.mathC(a: self.txtA?.text ?? "0", b: self.txtB?.text ?? "0");
        
    }
}

