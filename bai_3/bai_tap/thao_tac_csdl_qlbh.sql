use quanlybanhang;
select oid,odate,oprice from `order`;

select customer.cname, product.pname from customer join `order` on customer.cid = `order`.cid
join oderdetail on oderdetail.oid = `order`.oid
join product on product.pid = oderdetail.pid;

select customer.* from customer where customer.cname  not in (select customer.cname from customer join `order` on customer.cid = `order`.cid);

select `order`.oid, odate, sum((odqty*pprice)) as gia from `order` join oderdetail on oderdetail.oid = `order`.oid
join product on product.pid = oderdetail.pid
group by `order`.oid;

select customer.* from customer where customer.cname != all(select customer.cname from customer join `order` on customer.cid = `order`.cid);