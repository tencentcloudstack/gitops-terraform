### 环境隔离
1. 本示例使用environments目录隔离不同环境环境，需要分别在dev和prod中初始化terraform环境
2. 还有分支和workspace两种方式来隔离环境。用户可以将dev或prod中的文件作为项目跟模块实现，此处不再赘述


### module复用
1. Module 是 Terraform 为了管理单元化资源而设计的，是子节点，子资源，子架构模板的整合和抽象
2. Module通过对资源的定义，参数，语法等细节问题进行封装。让户只需关注module的input参数，无需关心细节信息，从而将更多的时间和精力投入到架构设计和资源关系整合上
3. 本示例中modules目中定义了network、security_group和tke三个module供用户参考

### 使用方式
1. 选择环境: 进入dev或prod目录中
2. 初始化环境: terraform init
3. 查看执行计划: terraform plan
4. 部署资源: terraform apply
5. 销毁资源: terraform destroy

### 结果展示
![COS信息](https://github.com/tongyiming/gitops-terraform/imgs/tke-example-cluser.jpg)
![tke集群信息](https://github.com/tongyiming/gitops-terraform/imgs/backend_cos.jpg)