#import "@preview/resume-ng:1.0.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Resume-ng",
  author: (name: "张鹏"),
  contacts: 
    (
      "+86 15652918073",
       link("mailto:zhangpeng.eic@bytedance.com", "zhangpeng.eic@bytedance.com"),
    )
)

#resume-section("教育经历")
#resume-education(
  university: "中科院计算所",
  degree: "硕士研究生",
  school: "计算机体系结构",
  start: "2012-09",
  end: "2015-06"
)[
中国科学院研究生院优秀学生
]

#resume-education(
  university: "山东师范大学",
  degree: "工学学士",
  school: "计算机科学与技术",
  start: "2008-09",
  end: "2012-06"
)[
校一等奖学金，国家励志奖学金
]

#resume-section[技术能力]
- *语言*: 编程不受特定语言限制。熟练掌握Golang, 熟悉Python, Java，了解C/C++, 了解 Javascript/CSS/Html。
- *工作流*: mysql, redis, kafka 等.
- *其他*: 有容器化技术的实践经验，熟悉 docker 的使用。

#resume-section[工作经历]
#resume-work(
  company: "字节跳动",
  duty: "后端研发工程师",
  start: "2020.02",
  end: "至今",
)[
- 承担国际电商交易领域的核心系统研发工作，深度参与多个核心系统的建设，承担系统的设计开发维护工作，并持续优化改进；
- 对标行业，持续规划增强交易中心系统的基础能力，优化开放性、扩展性；
- 参与系统国际架构改进、对系统进行稳定性、高可用建设；
- 探索国际电商新业务模式。
]
#resume-work(
  company: "Aibee",
  duty: "后端研发工程师",
  start: "2018.04",
  end: "2020.02",
)[
- 以图搜图，智能试衣镜，智能奉客盘，智能货柜，以及标注系统的后端开发，保证后端服务的高可用，
   高并发等。其中使用 K8s 作为容器编排工具，Redis 作为缓存，Kafka 作为消息队列。
]

#resume-work(
  company: "GeneDock",
  duty: "后端研发工程师",
  start: "2017.05",
  end: "2018.04",
)[
- 基于Thrift 开发基因分析流程的计算调度系统。 该系统完成用户的基因分析任务构成的有向无环图job
  的调度以及执行工作。以及使用基于Zookeeper的分布式锁保证资源的申请和释放的正确性。
]

#resume-work(
  company: "猿辅导",
  duty: "后端研发工程师",
  start: "2017.05",
  end: "2018.04",
)[
- 基于Spring Boot 开发后端REST 接口以及编写通过Thrift 和Zookeeper 等构建的后端微服务的RPC
  接口。熟练编写 Mysql 的CRUD，以及使用 Memcached 进行数据缓存以提高性能。并使用 RabbitMQ
  对微服务解耦。熟练掌握服务逻辑分层技术，以及使用设计模式设计可扩展性强的代码。
- 基于AngularJS 开发的响应式 Web 网站。熟练编写Direcitve 实现前端功能的复用，以及前端常用控
  件及样式的使用。
]

#resume-section[项目经历]


#resume-project(
  title: "全球化架构升级",
  duty: "扩展框架的调研、设计、开发",
  start: "2024.09",
  end: "2025.04",
)[
  - 调研了流程编排引擎的多种不同选型、对比了优缺点并最终选型BPMN。
  - 调研了阿里的TMF开源实现Lattice、国内电商BOS系统、国内运维平台的思路和实现等，源码级了解底层细节和方案、借鉴他们并结合我们的不同点给出我们的方案思路。
  - 设计了交易扩展框架的详细技术方案。
  - 跟架构组进行流量观测、AOP等方案的讨论与设计，与QA同学讨论对接流量录制方案并配合落地。
]

#resume-project(
  title: "状态机重构升级",
  duty: "状态机重构升级方案的设计、研发和上线",
  start: "2022.06",
  end: "2022.12",
)[
  - 状态机服务和订单服务分离，统一整合成订单模型服务（同时完成订单读写分离）
  - 状态机计算流程抽象成SDK
  - 基于DB锁，保证数据强一致性，同时解决并发问题
  - 基于业务身份实现状态机模板化
  - 简化数据结构抽象及状态流转机制
  - 项目收益：
  - 架构更合理： 通过事务解决并发问题
  - 代码维护性提高： 通过sdk的简洁数据结构实现，方便维护迭代升级
  - 状态机扩展性提高：  目前可根据业务身份模板化状态机流转，高效支持业务
]

#resume-project(
  title: "交易支持PreOrder",
  duty: "负责交易域PreOrder的设计、研发和上线",
  start: "2024.04",
  end:   "2024.07",
)[
  - 涉及域多交易、商品、PDP、物流、购物车、提下单、查单、触达、售后、支付、gne、商家管理等。
  - 交易和支付是核心改造链路，prorder交易侧是新流程非常复杂。且支付域研发在美国、存在跨语言和跨时区沟通问题。
  - 如期上线无delay&&完善的监控和报警机制、最终线上正式流量无线上问题。
  - 10月上线后，累计新增GMV💲775,498.25，累积覆盖1089个商家，5个类目
]

#resume-project(
  title: "Pending GTM至美国&状态迁移至交易",
  duty: "负责方案的设计、研发和上线",
  start: "2023.09",
  end:  "2023.12",
)[
  - 协调逆向、GNE、商家履约、开放平台、C端、数仓等多域设计&开发
  - pending的改动跨下单，二次支付，支付回调等多个流程且逻辑复杂
  - 自1月5日启用pending功能以来，美国共有5376779单，其中76261单发起了取消请求。这一功能有效减少了用户冲动消费后造成的商家资损。通过pending，可能避免了76261单因用户支付后取消（而商家已发货）导致的资损。
]

#resume-section[个人总结]

- 主动学习，积极思考，喜爱钻研，热衷于新知识与新技术，善于将新方法应用在解决问题的过程中。
- 为人正直诚实，性格乐观向上，乐于和他人沟通合作，能在较大压力下工作，平衡处理各项事务。
- 身体健康，热爱足球，跑步等。
