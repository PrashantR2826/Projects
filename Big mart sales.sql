use project;
select * from project1;

#1. WRITE a sql query to show all Item_Identifier
select item_identifier from project1;
#2. WRITE a sql query to show count of total Item_Identifier
select count(item_identifier) from project1;
#3. WRITE a sql query to show maximum Item Weight
select max(item_weight) from project1;
#4. WRITE a query to show minimun Item Weight
select min(item_weight) from project1;
#5. WRITE a query to show average Item_Weight
select avg(item_weight) from project1;
#6. WRITE a query to show count OF Item_Fat_Content WHERE 
#Item_Fat_Content IS Low Fat
select count(item_fat_content) from project1 where Item_Fat_Content='Low Fat';
#7. WRITE a query to show count OF Item_Fat_Content WHERE 
#Item_Fat_Content IS Regular
select count(item_fat_content) from project1 where Item_Fat_Content='Regular';
#8. WRITE a query TO show maximum Item_MRP
select max(item_MRP) from project1;
#9. WRITE a query TO show minimum Item_MRP
select min(item_mrp) from project1;
#10.WRITE a query to show Item_Identifier , Item_Fat_Content 
#,Item_Type,Item_MRP and Item_MRP IS greater than 200
select item_identifier,item_fat_content,item_type,item_mrp from project1 where Item_MRP>200;

#11.WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
select max(item_mrp) from project1 where Item_Fat_Content='Low Fat';

#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS 
#Low Fat
select min(item_mrp) from project1 where Item_Fat_Content='Low Fat';
#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select * from project1 where item_mrp between 50 and 100;
#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content
select distinct item_fat_content from project1;
#15.WRITE a query to show ALL UNIQUE value Item_Type
select distinct item_type from project1;
#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from project1 order by item_mrp desc;
#17.WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales
select * from project1 order by Item_Outlet_Sales asc;

#18.WRITE a query to show ALL DATA IN ascending BY Item_Type
select * from project1 order by Item_Type;
#19.WRITE a query to show DATA OF item_type dairy & Meat
select * from project1 where Item_Type in ('Dairy','Meat');
#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct outlet_size from project1;
#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct outlet_location_type from project1;
#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type
select distinct outlet_type from project1;
#23.WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending
select Item_Type,count(*) as no_of_item from project1 group by Item_Type order by no_of_item desc;

#24.WRITE a query to show count NO. OF item BY Outlet_Size AND 
#ordered it IN ascending
select outlet_size,count(*) no_of_item from project1 group by Outlet_Size order by no_of_item;
#25.WRITE a query to show count NO. OF item BY(incomplete question)

#26.WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending\
select outlet_type,count(*) no_of_item from project1 group by Outlet_Type order by no_of_item desc;
#27.WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending
select outlet_location_type,count(*) no_of_item from project1 group by Outlet_Location_Type order by no_of_item desc;
#28.WRITE a query to show maximum MRP BY Item_Type
select item_type,max(item_mrp) from project1 group by Item_Type order by max(Item_MRP);
#29.WRITE a query to show minimum MRP BY Item_Type
select item_type,min(item_mrp) from project1 group by Item_Type order by max(item_mrp);
#30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select Outlet_Establishment_Year,min(item_mrp) from project1 group by Outlet_Establishment_Year order by  min(item_mrp) desc;
#31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select Outlet_Establishment_Year,max(item_mrp) from project1 group by Outlet_Establishment_Year order by max(item_mrp) desc;
#32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending
select outlet_size,avg(item_mrp) from project1 group by Outlet_Size order by avg(item_mrp) desc;
#33.WRITE a query to show average MRP BY Outlet_Size
select outlet_size,avg(item_mrp) from project1 group by Outlet_Size;
#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select outlet_type,avg(item_mrp) from project1 group by Outlet_Type order by avg(item_mrp) asc;
#35.WRITE a query to show maximum MRP BY Outlet_Type.
select outlet_type,max(item_mrp) from project1 group by Outlet_Type;
#36.WRITE a query to show maximum Item_Weight BY Item_Type 
select item_type,max(item_weight) from project1 group by Item_Type ;
#37.WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year
 select outlet_establishment_year,max(item_weight) from project1 group by Outlet_Establishment_Year ;
#38.WRITE a query to show minimum Item_Weight BY Outlet_Type 
select outlet_type,min(item_weight) from project1 group by Outlet_Type;
#39.WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending
select Outlet_Location_Type,avg(item_weight) from project1 group by Outlet_Location_Type order by avg(item_weight) desc;
#40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select item_type,max(Item_Outlet_Sales) from project1 group by item_type;
#41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select item_type,min(Item_Outlet_Sales) from project1 group by item_type;
#42.WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
select Outlet_Establishment_Year,min(Item_Outlet_Sales) from project1 group by Outlet_Establishment_Year;
#43.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending
select Outlet_Establishment_Year,max(Item_Outlet_Sales) from project1 group by Outlet_Establishment_Year order by max(Item_Outlet_Sales) desc;

#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending
select outlet_size,avg(item_outlet_sales) from project1 group by Outlet_Size order by avg(item_outlet_sales) desc;
#45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
 select outlet_size,avg(item_outlet_sales) from project1 group by Outlet_Size;
#46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type
select outlet_type,avg(item_outlet_sales) from project1 group by Outlet_type;
#47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
select outlet_type,max(item_outlet_sales) from project1 group by Outlet_type;
#49.WRITE a query to show total Item_Outlet_Sales BY Item_Type
select item_type,sum(item_outlet_sales) from project1 group by Item_Type;
#50.WRITE a query to show total Item_Outlet_Sales BY 
#51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select Item_Fat_Content ,sum(item_outlet_sales) from project1 group by Item_Fat_Content;
#52.WRITE a query to show maximum Item_Visibility BY Item_Type
select item_type,max(item_visibility) from project1 group by Item_Type ;
#53.WRITE a query to show Minimum Item_Visibility BY Item_Type 
select item_type,min(item_visibility) from project1 group by Item_Type ;
#54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1
select Outlet_Location_Type,item_type,sum(Item_Outlet_Sales) from project1
where Outlet_Location_Type='Tier 1' group by Item_Type ;
#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & L
select item_type,item_fat_content,sum(Item_Outlet_Sales) from project1 where Item_Fat_Content in ('Low Fat','LF') group by Item_Type;