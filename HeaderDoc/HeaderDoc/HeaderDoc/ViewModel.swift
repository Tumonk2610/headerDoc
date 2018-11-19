//
//  ViewModel.swift
//  HeaderDoc
//
//  Created by ViTuNguyen on 11/16/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
class ViewModel {
    
    /// <#Description#>
    let txtA = Variable("0")
    let txtB = Variable("0")
    
    /// MathX Tính tổng 2 giá trị A và B
    ///
    /// - Returns: C Tổng A Cộng B
    
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func mathX() -> Observable<String> {
        return Observable.combineLatest(txtA.asObservable(),txtB.asObservable()){
            
            /// <#Description#>
            let  c = Int($0)! + Int($1)!
           return "\(c)"
        }
    }
    
    func mathY() -> Observable<String> {
        return Observable.combineLatest(txtA.asObservable(),txtB.asObservable()){
            
            let  c = Int($0)! + Int($1)!
            return "\(c)"
        }
    }
    
    /// MathC Tính hiệu 2 giá trị A và B
    /// cái này dài thế : )))
    /// - Parameters:
    ///   - a: Gía trị là Số kiều string
    ///   - b: Giá trị là số kiểu string
    /// - Returns:  C là hiệu 2 số A và B
    func mathC(a:String, b: String) -> String {
        
        let c  = Int(a)! - Int(b)!
        return "\(c)"
        
    }
    
}
