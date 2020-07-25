select ambulance_id from ambulance.ambulance where state_id=3;

select ambulance.nurse.*, ambulance.nurse_transfer.transfer_id
from ambulance.nurse right join ambulance.nurse_transfer on 
ambulance.nurse.nurse_id = ambulance.nurse_transfer.nurse_id where ambulance.nurse_transfer.state_id=2;

select * from ambulance.transfer_out where state_id=2;

select count(ambulance_in_id) from ambulance.transfer_in where state_id=3;


select ambulance.requests.request_id, ambulance.transfer_out.patient_id
from ambulance.requests inner join ambulance.transfer_out on 
ambulance.requests.request_id = ambulance.transfer_out.request_id where state_id=2 and request_type_id=3;

select ambulance.requests.request_id, ambulance.transfer_out.state_id, ambulance.state.state_name
from  ambulance.transfer_out inner join ambulance.state on 
ambulance.transfer_out.state_id = ambulance.state.state_id
inner join ambulance.requests  on 
ambulance.transfer_out.request_id =  ambulance.requests.request_id
where request_type_id=1 ;

select distinct ambulance.driver.driver_name, ambulance.driver.license_no, ambulance.driver.tel_no
from  ambulance.transfer_hos_amb inner join ambulance.driver on 
ambulance.transfer_hos_amb.driver_id = ambulance.driver.driver_id
inner join ambulance.transfer_out on 
ambulance.transfer_hos_amb.transfer_id = ambulance.transfer_out.transfer_id
 where state_id=1;

select ambulance.requests.request_id,ambulance.transfer_out.amb_type_id, ambulance.transfer_hos_amb.amb_id
from  ambulance.transfer_out inner join ambulance.transfer_hos_amb on 
ambulance.transfer_out.transfer_id = ambulance.transfer_hos_amb.transfer_id
inner join ambulance.requests  on 
ambulance.transfer_out.request_id =  ambulance.requests.request_id
where transfer_type_id=1 and state_id=2;

select count(request_id) from ambulance.transfer_out where state_id=2;

select ambulance.transfer_out.state_id, ambulance.transfer_hos_amb.amb_id
from  ambulance.transfer_out right join ambulance.transfer_hos_amb on 
ambulance.transfer_out.transfer_id = ambulance.transfer_hos_amb.transfer_id 
where state_id=2;

select ambulance.hospital.hospital_name, ambulance.outstation_ambulance.ambulance_in_id
from  ambulance.hospital inner join ambulance.outstation_ambulance on 
ambulance.hospital.hospital_id = ambulance.outstation_ambulance.hospital_id order by hospital_name asc;

select count(transfer_id) from ambulance.transfer_out where state_id=2;

select count(ambulance_id) from ambulance.ambulance where state_id=3 ;

select ambulance.requests.request_id,ambulance.transfer_out.transfer_id,ambulance.request_type.request_name 
from  ambulance.requests inner join ambulance.transfer_out on 
ambulance.requests.request_id = ambulance.transfer_out.request_id
inner join ambulance.request_type on 
ambulance.requests.request_type_id =  ambulance.request_type.request_type_id
where state_id=2 ;

select state_id,count(transfer_id) from ambulance.transfer_out group by state_id;

select * from ambulance.hospital where hospital_name like 'c%';












