insert into menu_item 
values
(1,'Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes'),
(2,'Burger',129.00,'Yes','2017-12-23','Main Course','No'),
(3,'Pizza',149.00,'Yes','2017-08-21','Main Course','No'),
(4,'Friench Fries',57.00,'No','2017-07-02','Starters','Yes'),
(5,'Chocolate Brownie',32.00,'Yes','2022-11-02','Dessert','Yes');


insert into users values
(1,'user01'),
(2,'user02');

insert into carts values
(1,'Sandwich',99.00,'Yes',1,1),
(2,'Burger',129.00,'Yes',1,2),
(3,'Pizza',149.00,'Yes',1,3);


select * from menu_item;

select * from menu_item where menu_dol<curdate() and menu_active = "yes";

select * from menu_item where menu_id=3;

update menu_item set menu_name="Hot dog",menu_price="100.00",menu_active="Yes",menu_dol="2020-05-30",menu_category="Starters",menu_free_del="No"
where menu_id="5";

select cart_id,cart_name,cart_price,cart_free_del from carts c join users u on c.user_id=u.user_id where u.user_id=1;

select sum(cart_price) from carts c join users u on c.user_id=u.user_id where u.user_id=1;


delete c.* from carts c left join users u on c.user_id=u.user_id where u.user_id=1 and c.menu_id=2;