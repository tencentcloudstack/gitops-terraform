### 环境隔离
1. 隔离方式
> a. 使用分支进行隔离，不同环境使用不同分支，直接在root module下通过`terraform init`初始化使用
> b. 使用terraform workspace进行隔离，与分支方式类似
> c. 使用目录进行环境隔离，不同环境使用不同目录进行初始化

2. 本示例使用environments目录隔离不同环境环境，需要分别在dev和prod中初始化terraform环境


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


### 示例信息
1. dev分支通过创建vpc和subnet演示单一资源的创建
2. prod分支通过创建tke集群演示多个资源相互依赖的资源创建

### PLAN信息
项目中的action会将`terraform fmt`、`terraform init`、`terraform validate`、`terraform plan`执行结果和PLAN详细信息通过comment在pull-reuqest中展示
![COMMENT信息](https://github.com/tongyiming/gitops-terraform/imgs/comment_info.jpg)

### TKE结果展示(prod环境)
![COS信息](https://github.com/tongyiming/gitops-terraform/imgs/tke-example-cluser.jpg)
![tke集群信息](https://github.com/tongyiming/gitops-terraform/imgs/backend_cos.jpg)
