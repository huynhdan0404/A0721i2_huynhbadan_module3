use demo_a07;
-- lấy tên
select substring_index(fullname,' ',-1) from customer;

select * from customer where (year(curdate()) - year(birthday)) between 18 and 50;

-- 4
select customer.id, customer.fullname, count(contract.id) as 'số lần đặt dịch vụ' from customer join contract on customer.id = contract.customer_id
join customer_type on customer.customer_type_id = customer_type.id
where customer_type.`name` = 'diamond'
group by 'số lần đặt dịch vụ';

-- 5
select customer.id, customer.fullname, customer_type.`name`, contract.id, contract.start_date,contract.end_date, service.`name`, sum(service.price + contract_detail.quantity * attach_service.price) as 'tổng tiền' 
from customer left join customer_type on customer_type_id = customer.customer_type_id
join contract on customer.id = contract.customer_id
join service on service.id = contract.service_id
join contract_detail on contract_detail.contract_id = contract.id
join attach_service on contract_detail.attach_service_id = attach_service.id
group by contract_id;

-- 6
select service.*, service_type.`name` from 
service left join service_type on service.service_type_id = service_type.id
where service.id not in(select service.id from service join contract on service.id = contract.service_id where contract.start_date between '2021-01-01' and '2021-03-30' );

-- 7
select service.*, service_type.`name` from 
service left join service_type on service.service_type_id = service_type.id
where (service.id in(select service.id from service join contract on service.id = contract.service_id where year(contract.start_date) = '2020'))
and (service.id not in(select service.id from service join contract on service.id = contract.service_id where year(contract.start_date) = '2021'));

-- 8
select distinct customer.fullname from customer;

-- 9
select month(contract.start_date) as 'tháng', count(contract.customer_id) as 'số lần đặt phòng' from contract
group by month(contract.start_date);

-- 10
select contract.id, contract.start_date, contract.end_date, contract.down_payment, sum(contract_detail.quantity) as 'số lượng dich vụ kèm theo'
from contract join contract_detail on contract.id = contract_detail.contract_id 
group by contract.id;

-- 11
select attach_service.*, contract.id from attach_service join contract_detail on attach_service.id = contract_detail.attach_service_id
join contract on contract_detail.contract_id = contract.id
join customer on contract.customer_id = customer.id
join customer_type on customer.customer_type_id = customer_type.id
where customer_type.`name` = 'diamond' 
and customer.address in ('vinh','da nang');