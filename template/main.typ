#import "@preview/resume-ng:1.0.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Resume-ng",
  author: (name: "张鹏"),
  contacts: 
    (
      "+86 156-5291-8073",
       link("mailto:zhangpeng.eic@bytedance.com", "zhangpeng.eic@bytedance.com"),
    )
)

#resume-section("教育经历")
#resume-education(
  university: "中国科学院计算技术研究所",
  degree: "硕士研究生",
  school: "计算机体系结构",
  start: "2012-09",
  end: "2015-06"
)[
荣誉：中国科学院研究生院优秀学生
]

#resume-education(
  university: "山东师范大学",
  degree: "工学学士",
  school: "计算机科学与技术",
  start: "2008-09",
  end: "2012-06"
)[
荣誉：校一等奖学金、国家励志奖学金
]

#resume-section[技术能力]
- *编程语言*：Golang（熟练掌握）、Python/Java（熟悉）、C/C++（了解）、前端基础（JavaScript/CSS/HTML）
- *数据库与中间件*：MySQL、Redis、Kafka
- *云原生技术*：Docker、Kubernetes
- *架构设计*：微服务（Kitex/SpringBoot/Thrift）、高可用架构、分布式锁
- *其他*：BPMN流程引擎、TMF扩展框架、系统稳定性建设

#resume-section[工作经历]
#resume-work(
  company: "字节跳动",
  duty: "后端研发工程师",
  start: "2020.02",
  end: "至今",
)[
- 主导交易核心系统架构设计，支撑日均百万级订单处理
- 设计基于BPMN的流程编排引擎，实现业务扩展框架，支持多国交易场景快速适配（覆盖10+国家）
- 主导状态机重构升级，将订单状态流转错误率降低至0
- 完成PreOrder、Pending迁移、服务市场、免费样品等总多新业务的接入，协调中美团队对接等
]
#resume-work(
  company: "Aibee",
  duty: "后端研发工程师",
  start: "2018.04",
  end: "2020.02",
)[
- 主导智能零售系统研发，基于K8s容器化部署实现99.99%服务可用性
- 设计Redis多级缓存架构，降低API响应延迟至50ms以内
]

#resume-work(
  company: "GeneDock",
  duty: "后端研发工程师",
  start: "2017.05",
  end: "2018.04",
)[
- 开发基因分析流程的计算调度系统。该系统完成用户的基因分析任务的调度以及执行工作。
]

#resume-work(
  company: "猿辅导",
  duty: "后端研发工程师",
  start: "2017.05",
  end: "2018.04",
)[
- 基于Spring Boot框架设计并开发高并发RESTful API服务，采用Thrift RPC协议构建微服务架构，通过Zookeeper实现分布式服务的注册发现与负载均衡。
- 基于AngularJS开发响应式Web网站。
]

#resume-section[项目经历]


#resume-project(
  title: "全球化架构升级",
  duty: "扩展框架的调研、设计、开发",
  start: "2024.09",
  end: "2025.04",
)[
  - 成果：设计交易扩展框架，引入BPMN引擎，通过垂直和水平能力分离，满足不同业务市场的独立性，以及兼顾平台能力跨市场的复用性
  - 技术：深度解析阿里TMF框架源码，基于AOP方案实现动态扩展，以及基于对业务进行抽象建模能力、流程、Task、扩展点等能力，实现业务的叠加和扩展
]

#resume-project(
  title: "状态机重构升级",
  duty: "状态机重构升级方案的设计、研发和上线",
  start: "2022.06",
  end: "2022.12",
)[
- 成果：通过SDK化改造与事务锁机制，使订单状态流转错误率降至0
- 技术：基于业务身份实现模板化状态机，支持10+业务线快速配置
]

#resume-project(
  title: "交易支持PreOrder",
  duty: "负责交易域PreOrder的设计、研发和上线",
  start: "2024.04",
  end:   "2024.07",
)[
  - 成果：通过PreOrder交易链路改造，上线后新增GMV💲775,498.25，累积覆盖1089个商家，5个类目
  - 难点：涉及域多交易、商品、PDP、物流、购物车、提下单、查单、触达、售后、支付、gne、商家管理等。交易和支付是核心改造链路，preorder交易侧是新流程非常复杂。且支付域研发在美国、存在跨语言和跨时区沟通问题。
]

#resume-project(
  title: "PendingGTM迁移项目",
  duty: "负责方案的设计、研发和上线",
  start: "2023.09",
  end:  "2023.12",
)[
  - 成果：有效减少了用户冲动消费后造成的商家资损。通过pending，可能避免了76261单因用户支付后取消（而商家已发货）导致的资损
  - 难点：协调逆向、GNE、商家履约、开放平台、C端、数仓等多域设计&开发，改动跨下单，二次支付，支付回调等多个流程且逻辑复杂
]

#resume-section[个人总结]

- 擅长复杂系统设计，具备从0到1构建跨国电商核心系统能力
- 持续技术深耕者，主导开源框架二次开发并落地生产环境
- 擅长跨团队协作（曾主导中美研发团队协同）
- 主动学习，积极思考，喜爱钻研，热衷于新知识与新技术，善于将新方法应用在解决问题的过程中
