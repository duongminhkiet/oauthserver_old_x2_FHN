INSERT INTO oauth_client_details (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity, resource_ids, authorized_grant_types, additional_information) 
VALUES ('mobile', '$2a$10$gPhlXZfms0EpNHX0.HHptOhoFD1AoxSr/yUIdTqA8vtjeP4zi0DDu', 'http://localhost:8082/oauth/callback', 'READ,WRITE', '3600', '10000', 'inventory,payment', 'authorization_code,password,refresh_token,implicit', '{}');

INSERT INTO PERMISSION (NAME) VALUES
('create_profile'),
('read_profile'),
('update_profile'),
('delete_profile');

INSERT INTO role (NAME) VALUES
('ROLE_admin'),('ROLE_operator');

INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES
(1,1), /*create-> admin */
(2,1), /* read admin */
(3,1), /* update admin */
(4,1), /* delete admin */
(2,2),  /* read operator */
(3,2);  /* update operator */
insert into users (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('1', 'krish','$2a$10$ODGwrk2ufy5d7T6afmACwOA/6j6rvXiP5amAMt1YjOQSdEw44QdqG', 'k@krishantha.com', '1', '1', '1', '1');
insert into  users (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('2', 'suranga', '$2a$10$wQ8vZl3Zm3.zDSIcZEYym.bGq3fPMJXH9k.Vhudcfr6O6KQwDPSt6','k@krishantha.com', '1', '1', '1', '1');

INSERT INTO ROLE_USER (ROLE_ID, USER_ID)
VALUES
(1, 1) /* krish-admin */,
(2, 2) /* suranga-operator */ ;

-- mobile: pin
-- krish: kpass
-- suranga: spass


-- http://localhost:8081/oauth/authorize?client_id=mobile&response_type=code&redirect_uri=http://localhost:8082/oauth/callback&scope=WRITE
-- http://localhost:8081/users/profile?access_token=be95725b-22b9-4bb9-a4ea-1a9a05c216d5 /* be95725b-22b9-4bb9-a4ea-1a9a05c216d5 => lay tu o tren */