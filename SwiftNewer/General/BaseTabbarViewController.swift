//
//  BaseTabbarViewController.swift
//  SwiftNewer
//
//  Created by lsp's mac pro on 2018/10/25.
//  Copyright © 2018 lsp's mac pro. All rights reserved.
//

import UIKit

class BaseTabbarViewController: UITabBarController {

    var  items:NSArray = []
    let nameArr = ["首页","分类","购物车","我的"]
    let picArr = ["main","grid","cart","me"]
    let picSelectArr = ["main_blue","grid_blue","cart_blue","me_blue"]
    let viewControllerArr = [HomeViewController(),LoanViewController(),ActivityViewController(),MineViewController()]
    //初始化数组
    var NavVCArr:[NSObject] = [NSObject]()
    
    var nav:BaseNavViewController = BaseNavViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
         self.creatTabBar()
    }
    

    func creatTabBar() {
        var _:CGFloat = 15;
        let tabImageMargin:CGFloat = 25;
        
        
        
        let  homeVc  = HomeViewController()
        homeVc.title = "首页";
        let homeNav = BaseNavViewController(rootViewController:homeVc)
        homeNav.tabBarItem.title = "首页"
        homeNav.tabBarItem.image = UIImage(named:"unTabbarSelect")
        homeNav.tabBarItem.selectedImage = UIImage(named:"tabbarSelect")
        homeNav.tabBarItem.imageInsets = UIEdgeInsets(top: tabImageMargin, left: 0, bottom: -tabImageMargin, right: 0);
        homeNav.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -tabImageMargin);
        let  loanVc  = LoanViewController()
        loanVc.title = "借款";
        let loanNav = BaseNavViewController(rootViewController:loanVc)
        loanNav.tabBarItem.title = "借款"
        loanNav.tabBarItem.image = UIImage(named:"unTabbarSelect")
        loanNav.tabBarItem.selectedImage = UIImage(named:"tabbarSelect")
           loanNav.tabBarItem.imageInsets = UIEdgeInsets(top: tabImageMargin, left: 0, bottom: -tabImageMargin, right: 0);
         loanNav.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -tabImageMargin);
        let  activityVc  = ActivityViewController()
        activityVc.title = "活动";
        let activityNav = BaseNavViewController(rootViewController:activityVc)
        activityNav.tabBarItem.title = "活动"
        activityNav.tabBarItem.image = UIImage(named:"unTabbarSelect")
        activityNav.tabBarItem.selectedImage = UIImage(named:"tabbarSelect")
        activityNav.tabBarItem.imageInsets = UIEdgeInsets(top: tabImageMargin, left: 0, bottom: -tabImageMargin, right: 0);
         activityNav.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -tabImageMargin);
        let  mineVc  = MineViewController()
        mineVc.title = "我的";
        let mineNav = BaseNavViewController(rootViewController:mineVc)
        mineNav.tabBarItem.title = "我的"
        mineNav.tabBarItem.image = UIImage(named:"unTabbarSelect")
        mineNav.tabBarItem.selectedImage = UIImage(named:"tabbarSelect")
         mineNav.tabBarItem.imageInsets = UIEdgeInsets(top: tabImageMargin, left: 0, bottom: -tabImageMargin, right: 0);
          mineNav.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -tabImageMargin);
        // 添加工具栏
        items = [homeNav,loanNav,activityNav,mineNav]
        self.viewControllers = items as? [UIViewController]
        for  i in 0 ..< items.count {
            /*
             (items[i] as AnyObject) 相当于 self.navigationController?
             **/
            //设置导航栏的背景图片 （优先级高）
            (items[i] as AnyObject).navigationBar.setBackgroundImage(UIImage(named:"NavigationBar"), for:.default)
            //设置导航栏的背景颜色 （优先级低）
            (items[i] as AnyObject).navigationBar.barTintColor = UIColor.white
            //设置导航栏的字体颜色
            (items[i] as AnyObject).navigationBar.titleTextAttributes =
                [NSAttributedString.Key.foregroundColor: UIColor.black]
        }
        
        
        
        //tabBar 底部工具栏背景颜色 (以下两个都行)
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.backgroundColor = UIColor.white
        //设置 tabBar 工具栏字体颜色 (未选中  和  选中)
        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .selected)
        // 修改标签栏未选中时文字颜色
        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.green], for: .normal)
        
      
        
        
        
        
        
        
    }
    

}
