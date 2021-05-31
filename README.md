# trek-ios-AdMobMediation_v7-sample

專案內同時有 Object-C 跟 Swift target，

![截圖 2021-05-31 下午5 54 12](https://user-images.githubusercontent.com/46350143/120175859-38650100-c239-11eb-9fe1-8333bde5d419.png)

若想要測試 AdMobMediation_v7 Demo，請在 podfile 的 AdMobMediation_v7 target 安裝相關 SDK

<img width="655" alt="AdMobMediation_v7" src="https://user-images.githubusercontent.com/46350143/120176098-7bbf6f80-c239-11eb-84d5-ba6b74a6fe1d.png">


若想要測試 AdMobMediation_v7_Swift Demo，請在 podfile 的 AdMobMediation_v7_Swift target 安裝相關 SDK

<img width="668" alt="AdMobMediation_v7_Swift" src="https://user-images.githubusercontent.com/46350143/120176169-8d087c00-c239-11eb-8cac-559dd1c47e9c.png">

若在測試 AdMobMediation_v7 Demo，可以先將 AdMobMediation_v7_Swift Demo bridge file 內的 import 註解起來

![截圖 2021-05-31 下午5 59 17](https://user-images.githubusercontent.com/46350143/120176539-fb4d3e80-c239-11eb-987a-3ba96c2037fa.png)

要在測試 AdMobMediation_v7_Swift Demo 時，再把 bridge file 內的 import 註解拿掉

![截圖 2021-05-31 下午5 59 26](https://user-images.githubusercontent.com/46350143/120176693-2c2d7380-c23a-11eb-86c4-a1fa66ea0ec0.png)

