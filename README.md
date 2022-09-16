### 使用方式
1. 配置secrets: TENCENTCLOUD_SECRET_KEY和TENCENTCLOUD_SECRET_ID
![secrets信息](https://github.com/tongyiming/gitops-terraform/blob/main/imgs/secrets.jpg)

2. 通过pull_request流水线线上触发
提交PR触发流水线或者手动触发流水线

3. 手动本地触发
   a. 选择环境: 进入dev或prod目录中
   b. 初始化环境: terraform init
   c. 查看执行计划: terraform plan
   b. 部署资源: terraform apply
   e. 销毁资源: terraform destroy

### 目录结构
本示例包含服务的实际配置的 modules 目录和包含每个环境的根配置的 environments 目录。
- modules目录中为抽象出来的可复用模块
- 本示例中modules目中定义了network、security_group和tke三个module供用户参考
> module复用
> 1. Module 是 Terraform 为了管理单元化资源而设计的，是子节点，子资源，子架构模板的整合和抽象
> 2. Module通过对资源的定义，参数，语法等细节问题进行封装。让户只需关注module的input参数，无需关心细节信息，从而将更多的时间和精力投入到架构设计和资源关系整合上
- environments目录用于隔离不同环境，用户可以在不同环境中使用不同的云厂商或配置不同的账号以实现多云管理
  - dev分支通过创建vpc和subnet演示单一资源的创建
  - prod分支通过创建tke集群演示多个资源相互依赖的资源创建

> 环境隔离
> 1. 隔离方式
> a. 使用分支进行隔离，不同环境使用不同分支，直接在root module下通过`terraform init`初始化使用
> b. 使用terraform workspace进行隔离，与分支方式类似
> c. 使用目录进行环境隔离，不同环境使用不同目录进行初始化

### 流水线信息
1. pull_request流水线(terraform_pr_check.yml)
> 任何的PR都会触发（依次执行`terraform fmt`、`terraform init`、`terraform validate`、`terraform plan`）

2. apply流水线(terraform_merge_apply.yml)
> PR merge后触发（依次执行`terraform init`、`terraform apply`）

### PLAN信息展示
项目中的action会将`terraform fmt`、`terraform init`、`terraform validate`、`terraform plan`执行结果和PLAN详细信息通过comment在pull-reuqest中展示
![COMMENT信息](https://github.com/tongyiming/gitops-terraform/blob/main/imgs/comment_info.jpg)

### TKE结果展示(prod环境)
![COS信息](https://github.com/tongyiming/gitops-terraform/blob/main/imgs/tke-example-cluser.jpg)
![tke集群信息](https://github.com/tongyiming/gitops-terraform/blob/main/imgs/backend_cos.jpg)
