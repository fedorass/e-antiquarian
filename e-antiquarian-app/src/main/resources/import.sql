-- Countries
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (1, 1, '376595f0-0e87-40ae-b3b5-0c882403ac23', 'DE', 'Німеччина', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (2, 1, 'f62445c8-a717-4909-9c13-ad72fbc7f09e', 'UA', 'Україна', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (3, 1, 'b9210c28-5976-481f-ab26-3a2acc6613a1', 'GB', 'Великобританія', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (4, 1, '10bd8822-353a-4cf6-bfa4-d82affb97e76', 'US', 'Сполучені Штати Америки', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');

-- Materials
INSERT INTO collection_item_material (id, version, composition, material) VALUES (1, 1, 'german-silver', 'Мельхіор');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (2, 1, 'nickel-silver', 'Нейзильбер');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (3, 1, 'silver925', 'Срібло 925');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (4, 1, 'silver400', 'Срібло 400');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (5, 1, 'silver900', 'Срібло 900');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (6, 1, 'copper', 'Мідь');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (7, 1, 'zinc', 'Цинк');

-- Numismatics Monetary Periods
INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, end_year, currency) VALUES (1, 1, '7e9e28cd-e9ec-4162-a8df-00c40a0c1720', 2, 1995, 1996, 'UAK');
INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, currency) VALUES (2, 1, '428b6b1f-6aa6-44c8-ad2d-ea5fe964fec2', 2, 1996, 'UAH');

INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, currency) VALUES (3, 1, '17b33bd0-ed3e-4bf2-8472-357bdb9efe30', 4, 1900, 'USD');

INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, end_year, period_group, currency) VALUES (4, 1, 'dc6aba7b-dc24-44ee-8a23-a11e14174b95', 3, 1937, 1952, 'Король Георг VI', 'GBP');
INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, end_year, period_group, currency) VALUES (5, 1, 'b9210c28-5976-481f-ab26-3a2acc6613a1', 3, 1953, 1967, 'Королева Єлизавета II', 'GBP');
INSERT INTO numismatics_monetary_period (id, version, uuid, country_id, start_year, period_group, currency) VALUES (6, 1, '1f9a9f33-d218-4a77-896e-5f668841b270', 3, 1967, 'Королева Єлизавета II', '');

-- Denominations
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (1, 1, 'denomination_200000_uak', '200000 карбованців', 200000);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (2, 1, 'denomination_1000000_uak', '1000000 карбованців', 1000000);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (3, 1, 'denomination_2000000_uak', '2000000 карбованців', 2000000);

INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (4, 1, 'denomination_2_uah', '2 гривні', 2);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (5, 1, 'denomination_5_uah', '5 гривень', 5);

INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (6, 1, 'denomination_0_01_usd', '1 цент', 0.01);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (7, 1, 'denomination_0_05_usd', '5 центів', 0.05);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (8, 1, 'denomination_0_10_usd', '10 центів', 0.10);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (9, 1, 'denomination_0_25_usd', '25 центів', 0.25);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (10, 1, 'denomination_0_50_usd', '50 центів', 0.50);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (11, 1, 'denomination_1_usd', '1 долар', 1);

-- Numismatics Period Denominations
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 1);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 2);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 3);

INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (2, 4);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (2, 5);

INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 6);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 7);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 8);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 9);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 10);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 11);

-- Country Materials
INSERT INTO country_materials (item_id, material_id) VALUES (2, 1);
INSERT INTO country_materials (item_id, material_id) VALUES (2, 3);

INSERT INTO country_materials (item_id, material_id) VALUES (3, 3);

INSERT INTO country_materials (item_id, material_id) VALUES (4, 4);
INSERT INTO country_materials (item_id, material_id) VALUES (4, 5);
INSERT INTO country_materials (item_id, material_id) VALUES (4, 6);
INSERT INTO country_materials (item_id, material_id) VALUES (4, 7);

-- Numismatics Period Materials
INSERT INTO numismatics_period_materials (item_id, material_id) VALUES (2, 2);

-- Numismatics Coins
-- UAK
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (1, 1, 'e7d44e4d-8d38-4365-9e62-401610910f15', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (2, 1, 'a03cfaed-c611-4bbc-bb40-af0942ad4057', 1, '1995-07-19', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (3, 1, 'adbd1672-76a6-44fa-80fb-7408535aa249', 1, '1995-08-23', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (4, 1, '2bea2fdd-8446-45f8-af51-e956d4635665', 1, '1995-08-23', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (5, 1, 'd0e56b1b-376f-4738-858e-49d6a203ac80', 1, '1996-03-01', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (6, 1, '0f5a745b-8ce2-4097-9829-8c7415af5f95', 1, '1996-03-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (7, 1, '3bd27d90-a520-4043-bb7c-c6e564d70210', 1, '1996-04-25', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (8, 1, '95202911-7e7d-4b57-b7a4-b6e401caefd8', 1, '1996-07-10', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (9, 1, '854b3b27-f1d4-43b4-8705-207bd484f94c', 1, '1996-07-10', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (10, 1, '359f6639-c9e9-4480-a5df-5af2e3af16c7', 1, '1996-08-09', 1, 1);

INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (11, 1, '47c0893b-5239-42e9-87b5-0eae2b4273ef', 1, '1996-04-10', 3, 2);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (12, 1, 'd283d7e3-ff6e-454f-b9b1-c692ea6a7268', 1, '1996-06-21', 3, 2);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (13, 1, '0efe08f9-146e-4d8a-b690-966256ce55d8', 1, '1996-08-09', 3, 2);

INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (14, 1, 'db3d635f-441a-40eb-af09-2f5bf64829d8', 1, '1996-07-10', 3, 3);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (15, 1, 'ae5478ae-aef7-41e7-911c-35d7147500d6', 1, '1996-07-10', 3, 3);

-- 2 UAH Nickel Silver
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (27, 1, '6b2c7ee1-27e4-4741-8523-f58015022a78', 2, '2008-04-23', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (28, 1, '7d1aef7a-da99-4f9a-b767-bd349730ba03', 2, '2008-05-23', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (29, 1, '563a3bc6-37ca-4aea-ae0a-d1f2929ec972', 2, '2008-11-18', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (30, 1, '2e56ee98-c390-4e69-9770-ef3d9c10bace', 2, '2008-12-25', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (31, 1, '115cdd12-82a7-47eb-af14-7ddee4328c0c', 2, '2009-09-29', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (32, 1, '3ddf16b8-2b02-48e6-a641-56d48c16462e', 2, '2009-10-28', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (33, 1, '34fd29a2-c27a-404c-9cd1-926eaa85ea71', 2, '2012-12-27', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (34, 1, 'acda4999-be91-48ac-a3a9-5e63b1dca158', 2, '2015-03-04', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (35, 1, '6e20407c-7a2c-4ebc-a145-a8133d1583ab', 2, '2015-03-31', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (36, 1, 'f06172e6-0ded-4993-94bd-1b2cd68513d3', 2, '2015-04-28', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (37, 1, '1c8bac3b-9568-41e1-acd3-5072c50bd73e', 2, '2015-09-02', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (38, 1, '49016528-0d52-468b-9d89-a3d70e30cd21', 2, '2015-09-15', 2, 4);

INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (39, 1, '40126188-c243-4694-b08d-85daeab108ba', 2, '2017-05-11', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (40, 1, 'ffa39623-819a-4d7e-9441-3b735ec2f30f', 2, '2017-06-01', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (41, 1, '901d2221-537c-4142-bc88-1a0ba735844c', 2, '2017-07-11', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (42, 1, '4da9592e-1e2d-403a-a106-46395c1541f3', 2, '2017-09-04', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (43, 1, '48cda834-0071-4c8c-9821-49f793023eeb', 2, '2017-10-24', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (44, 1, 'cb96d8ea-81e5-4288-987a-84a69242a150', 2, '2017-11-09', 2, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (45, 1, '93c567a9-fa03-46eb-92d5-32651bf334c0', 2, '2017-12-07', 2, 4);

-- obverse reverse
-- 5 UAH Nickel Silver
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (50, 1, '5ef8b7b7-c1fc-46ba-ba36-03ac89313cfb', 2, '2005-06-01', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (51, 1, '743fb274-31a0-409e-bc9e-0da584d7d93c', 2, '2005-12-23', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (52, 1, 'abd968c8-7af1-4e32-b35e-f7e8cfaebda1', 2, '2006-08-18', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (53, 1, 'e01b90d3-0b5b-4967-9900-bc99609b1e3b', 2, '2006-08-29', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (54, 1, '823d946f-a596-4676-b47a-66cf0fd52137', 2, '2008-09-15', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (55, 1, '8bf57c38-0bca-4bc3-b33a-719bd95ca342', 2, '2009-04-16', 2, 5);