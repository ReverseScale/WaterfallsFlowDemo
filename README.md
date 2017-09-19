# WaterfallsFlowDemo
Swift 实现的瀑布流布局 Demo，由网络资料整理而成。

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-swift-orange.svg) 
![](https://img.shields.io/badge/download-205K-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

Swift 实现的瀑布流展示，基于 CollectionView 实现，根据宽高数据进行适应。

| 名称 |1.列表页 |2.展示页头 |3.展示页尾 |
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-15/5454399.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-15/37963953.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-15/74870795.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 布局展示页面头部 | 布局展示页面尾部 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### viewDidLoad 中设置
```
//布局
let layout = RSCollectionView()

//创建collectionView
let collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
view.addSubview(collectionView)

collectionView.dataSource = self
collectionView.delegate = self
collectionView.backgroundColor = UIColor.white

collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: shopID)
```
### 延展方法实现协议
```
extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: shopID, for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
WaterfallsFlowDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
