# PodManagerLocalLab


1 要使用的库目录下面, 创建 podspec 文件, 
  创建命令  pod spec create 库名称  
  
2 修改 库名称.podspec, 主要修改几个关键地方:

 s.source       = { :git => "", :tag => "0.0.1" }  
 
 s.source_files  = "Source", "Source/**/*.{h,m}"  
 s.exclude_files = "Source/Exclude"  
     s.description  = <<-DESC
                       download
                    DESC

3 在需要引用的项目文件下创建pod文件   命令 pod init
  
4 修改pod 文件 
    pod '库名称', :path => '库的相对路径'  

5  pod install
