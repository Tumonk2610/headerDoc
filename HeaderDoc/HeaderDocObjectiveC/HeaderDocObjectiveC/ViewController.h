//
//  ViewController.h
//  HeaderDocObjectiveC
//
//  Created by ViTuNguyen on 11/17/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    
    /*!
     * @brief TXTA là giá trị A kiếu số
     */
    @property (weak, nonatomic) IBOutlet UITextField *txtA;
    
    /**
     * @abstract txtB là giá trị B kiếu số
     */
    @property (weak, nonatomic) IBOutlet UITextField *txtB;
    
    /**
     lblResults là kết quả của các phép toán
     */
    
    @property (weak, nonatomic) IBOutlet UILabel *lblResults;
    
/*!
 * @brief Tính tổng 2 giá trị A và B

 *@param sender Khi click vào nít Math+ sẽ tính tổng 2 giá trị ở ô nhập A và ô nhập B
 */
- (IBAction)didTapMathPlusButton:(id)sender;
    
/*!
 * @brief Tính hiệu 2 giá trị A và B

 *@param sender Khi click vào nút Math_ sẽ tính hiệu 2 giá trị ở ô nhập A và ô nhập B

 */
- (IBAction)didTapMinusButton:(id)sender;
    

@end

