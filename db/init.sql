create database if not exists board;
use board; 
create table if not exists tb_post (
    `id`            bigint(20)      not null auto_increment                 comment 'pk', 
    `title`         varchar(100)    not null                                comment '제목', 
    `content`       varchar(3000)   not null                                comment '내용',
    `writer`        varchar(20)     not null                                comment '작성자',
    `view_cnt`      int(11)         not null                                comment '조회수',
    `notice_yn`     tinyint(1)      not null                                comment '공지글 여부',
    `delete_yn`     tinyint(1)      not null                                comment '삭제 여부', 
    `created_date`  datetime        not null    default current_timestamp() comment '생성 일시',
    `modified_date` datetime                    default null                comment '최종 수정일시',
    primary key(id)

) comment '게시글';

