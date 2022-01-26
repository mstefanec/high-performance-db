create table post (id bigint not null, title varchar(255), primary key (id));
create table post_details (id bigint not null, created_by varchar(255), created_on datetime, primary key (id));
alter table post_details add constraint POST_DETAILS_POST_ID_FK foreign key (id) references post (id);

insert INTO post VALUES (1, 'ACID');
insert INTO post_details VALUES (1, 'bob', GETDATE());
