-- auto-generated definition
create table user
(
    id           bigint auto_increment
        primary key,
    userAccount  varchar(256)                                                                                           null comment '账号',
    username     varchar(256)                                                                                           null comment '用户昵称',
    avatarUrl    varchar(1024) default 'https://q5.itc.cn/q_70/images03/20240331/90002c03e8334d9ea30de98790831762.jpeg' null comment '头像',
    gender       tinyint                                                                                                null,
    userPassword varchar(512)                                                                                           not null,
    phone        varchar(128)                                                                                           null,
    email        varchar(512)                                                                                           null,
    userStatus   int           default 0                                                                                not null comment '用户状态',
    createTime   datetime      default CURRENT_TIMESTAMP                                                                not null,
    updataTime   datetime      default CURRENT_TIMESTAMP                                                                null on update CURRENT_TIMESTAMP comment '更新日期',
    isDelete     tinyint       default 0                                                                                null,
    userRole     int           default 0                                                                                not null comment '99-管理员 0-普通用户 1-VIP',
    planetCode   varchar(512)                                                                                           null comment '星球编号'
)
    comment '用户';

