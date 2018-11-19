//
//  ViewModel.h
//  HeaderDocObjectiveC
//
//  Created by ViTuNguyen on 11/17/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject

   /*!
    * @briefPhép tính tổng 2 giá trị A và B
    *@param a Gia trị A số kiểu string
    *@param b   Giá Trị B số kiếu string
    *@return Giá trị C là tổng  giá trị là số kiểu string
    */
    
    
   /**
    tét

    @param a <#a description#>
    @param b <#b description#>
    @return <#return value description#>
    */
   + (NSString *) mathPlusWithA:(NSString *) a andB:(NSString *) b;


@end

NS_ASSUME_NONNULL_END
