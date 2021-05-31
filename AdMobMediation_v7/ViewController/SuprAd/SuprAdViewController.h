//
//  SuprAdViewController.h
//  GoogleMediation
//
//  Created by JustinTsou on 2021/4/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SuprAdViewControllerDelegate <NSObject>

- (void)rootViewControllerScrollViewDidScroll:(UIScrollView *)scrollView;

@end

@interface SuprAdViewController : UIViewController

@property id<SuprAdViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
