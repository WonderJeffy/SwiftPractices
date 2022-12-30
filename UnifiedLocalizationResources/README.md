#  在多包项目中统一管理资源

原文地址:https://www.fatbobman.com/posts/unified_management_of_resources_in_multi-package_projects/

实践过程中的一些注意点:
1. 创建的 Package 要用 addFiles 的方法添加到项目中, 不要用 addPackage 的方法;
2. 先将 PackageA 和 PackageB 导入到工程中(Targets-General-Frameworks), 才能正常预览 SwiftUI
