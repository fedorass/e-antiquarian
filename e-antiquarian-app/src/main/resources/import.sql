-- Countries
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (1, 1, '376595f0-0e87-40ae-b3b5-0c882403ac23', 'DE', 'Німеччина', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (2, 1, 'f62445c8-a717-4909-9c13-ad72fbc7f09e', 'UA', 'Україна', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (3, 1, 'b9210c28-5976-481f-ab26-3a2acc6613a1', 'GB', 'Великобританія', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');
INSERT INTO collection_country (id, version, uuid, iso_code, default_name, collection_country_type, user_email) VALUES (4, 1, '10bd8822-353a-4cf6-bfa4-d82affb97e76', 'US', 'Сполучені Штати Америки', 'NUMISMATICS_COUNTRY', 'oleksandr.fedoras@gmail.com');

-- Materials
INSERT INTO collection_item_material (id, version, composition, material) VALUES (1, 1, 'german-silver', 'Мельхіор');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (2, 1, 'nickel-silver', 'Нейзильбер');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (3, 1, 'silver925', 'Срібло 925');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (4, 1, 'silver900', 'Срібло 900');
INSERT INTO collection_item_material (id, version, composition, material) VALUES (5, 1, 'silver400', 'Срібло 400');
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
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (6, 1, 'denomination_10_uah', '10 гривень', 10);

INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (7, 1, 'denomination_0_01_usd', '1 цент', 0.01);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (8, 1, 'denomination_0_05_usd', '5 центів', 0.05);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (9, 1, 'denomination_0_10_usd', '10 центів', 0.10);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (10, 1, 'denomination_0_25_usd', '25 центів', 0.25);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (11, 1, 'denomination_0_50_usd', '50 центів', 0.50);
INSERT INTO collection_item_denomination (id, version, denotation, denomination, rate) VALUES (12, 1, 'denomination_1_usd', '1 долар', 1);

-- Numismatics Period Denominations
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 1);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 2);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (1, 3);

INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (2, 4);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (2, 5);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (2, 6);

INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 7);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 8);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 9);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 10);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 11);
INSERT INTO numismatics_period_denominations (item_id, denomination_id) VALUES (3, 12);

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

-- 5 UAH Nickel Silver
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (50, 1, '5ef8b7b7-c1fc-46ba-ba36-03ac89313cfb', 2, '2005-06-01', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (51, 1, '743fb274-31a0-409e-bc9e-0da584d7d93c', 2, '2005-12-23', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (52, 1, 'abd968c8-7af1-4e32-b35e-f7e8cfaebda1', 2, '2006-08-18', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (53, 1, 'e01b90d3-0b5b-4967-9900-bc99609b1e3b', 2, '2006-08-29', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (54, 1, '823d946f-a596-4676-b47a-66cf0fd52137', 2, '2008-09-15', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (55, 1, '8bf57c38-0bca-4bc3-b33a-719bd95ca342', 2, '2009-04-16', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (56, 1, '5e150a0c-4c52-450b-972b-1f0d4b62c72b', 2, '2011-08-19', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (57, 1, '3fc1953a-df5c-4275-a1da-c92c40eda33b', 2, '2013-07-03', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (58, 1, '834b3674-f621-4ecc-b10c-3d62b5e046ef', 2, '2014-10-15', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (59, 1, '4d6bf52f-0400-40f8-b190-1d9479c5a6bd', 2, '2015-05-27', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (60, 1, 'c39dc0f2-6a9b-4a06-9a6f-bc4a4f06c03b', 2, '2015-07-22', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (61, 1, 'e7da5771-b47e-44d7-abd8-7b3c0e04024e', 2, '2016-05-25', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (62, 1, 'f8ae252d-7963-4577-909d-627a806849da', 2, '2016-12-19', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (63, 1, '786411cd-6d3b-41c9-84de-8890d2cfa34a', 2, '2017-05-11', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (64, 1, 'c955d379-8176-4836-8e49-e994aff6b2e1', 2, '2017-05-25', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (65, 1, '5cad50b3-bfeb-4a1c-9840-bbd3d387569e', 2, '2017-08-15', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (66, 1, 'fdf5e24d-db2c-4ff8-8a5f-288f3631f49c', 2, '2017-08-22', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (67, 1, 'd6ad6548-adf7-4ce3-8d37-dc6caa74003f', 2, '2017-08-29', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (68, 1, 'a4d5977f-da97-4a0a-8450-b1e94fa7d8bb', 2, '2017-09-18', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (69, 1, '5d75010f-a30a-466a-897c-4931cc8dc408', 2, '2017-10-24', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (70, 1, '6a8205a3-90c1-40a3-9cce-46bf7fbd86ed', 2, '2017-10-27', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (71, 1, 'e5c4fa87-66f2-4ffb-8721-6c6e9c5463e0', 2, '2017-11-23', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (72, 1, '98d58106-16e4-4890-a428-78c0e031a00b', 2, '2017-12-26', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (73, 1, 'e8a14d33-ad8a-4d56-9845-6a7a72b43fbd', 2, '2018-03-29', 2, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (74, 1, '3f8168e3-c2af-48ab-a2c4-98f8fc2c083f', 2, '2018-04-11', 2, 5);

-- 2 UAH Silver 925
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (80, 1, '3482b470-14fe-4ce0-9d24-e49e01df0e35', 2, '2014-08-18', 3, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (81, 1, '9ef068c8-4ac1-4563-83cd-051846a552a9', 2, '2015-02-16', 3, 4);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (82, 1, '0513d11e-8fcd-4f46-8041-f62630199cb4', 2, '2015-10-22', 3, 4);

-- 5 UAH Silver 925
-- Серія: Фауна в пам`ятках культури України
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (90, 1, 'd109ad42-8c85-47ba-9b37-0a0328d9ee2c', 2, '2016-11-09', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (91, 1, 'b1d70e9c-28d9-4cf7-992c-4287e088aaa1', 2, '2016-11-09', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (92, 1, '1ad374ef-84b0-46c8-ae5e-a3e4145a852a', 2, '2016-11-09', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (93, 1, '57ea45b1-9b9c-458e-834c-392411d4cc96', 2, '2017-03-15', 3, 5);
--INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (94, 1, 'Лев', 2, '2017-04-11', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (95, 1, 'd51655a1-0981-471c-be94-b0f2eaadd728', 2, '2017-05-25', 3, 5);
--INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (96, 1, 'Вепр', 2, '2018-02-27', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (97, 1, '09a8e4f4-871c-424c-8f25-cf5e1143836a', 2, '2018-02-27', 3, 5);

-- Міжнародний рік лісів
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (98, 1, 'c9827f37-7dd7-4bab-9cb9-c45def3b6dbc', 2, '2011-11-24', 3, 5);

-- Серія: Вищі навчальні заклади України - 4 (14)
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (100, 1, '54dcf85e-3784-40c0-b108-09af6eb96987', 2, '2004-08-26', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (101, 1, 'a1853f15-c9e8-46d6-affb-6ba665b42eb0', 2, '2004-10-05', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (102, 1, '124522ab-ab63-4499-a117-e1fcd64a1fa9', 2, '2010-08-30', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (103, 1, '1dda04ec-ae82-4704-a25a-7082eb2de74b', 2, '2011-01-20', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (104, 1, 'e8d89feb-a41b-40d9-aab6-5463702d5b1b', 2, '2013-11-01', 3, 5);

-- Серія: Видатні особистості України - 11 (24)
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (109, 1, '32a81f35-e20a-437e-9083-8b2dbf29a758', 2, '2006-08-23', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (110, 1, '95da26c9-88b5-4346-94ce-bd5193bb47c5', 2, '2006-09-27', 3, 5);

INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (111, 1, '3c774aa5-ca23-43be-b366-7c4320f24a7c', 2, '2008-12-26', 3, 5);

INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (112, 1, '7fc99b78-9c62-4820-a61c-61820daa4cfa', 2, '2009-02-27', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (113, 1, 'd262b204-55af-4a3f-8b0a-de83f548d6e9', 2, '2009-09-22', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (114, 1, 'ee291368-3dc2-42f5-a016-c53148f204d6', 2, '2010-02-05', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (115, 1, '70bb7ca8-947c-4576-83ec-fb2fd5a89ff7', 2, '2010-02-05', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (116, 1, '212050bc-c31d-43cf-8f4e-02d19eed6a5e', 2, '2011-04-08', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (117, 1, 'f0bc1f82-65db-436c-ab8a-c7d86c644ddf', 2, '2011-04-29', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (118, 1, '9b5ae840-3481-498c-a9e4-c2986384a0b5', 2, '2012-02-28', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (119, 1, '475e06ff-fae5-4ed3-a631-80ff3f19bc0c', 2, '2013-02-25', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (120, 1, '48863a0b-3c14-4cf0-b6a8-352082a090da', 2, '2013-11-26', 3, 5);

-- Серія: Знаки зодіаку - 4 (12)
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (120, 1, '1d7ed8ab-00a3-4637-836b-b941e136dacd', 2, '2007-01-15', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (121, 1, '1909a27f-7a52-4ee2-8c0a-611b240402af', 2, '2007-01-24', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (122, 1, '2dc981fd-f225-4a76-a2cb-74bda91a28b0', 2, '2007-02-15', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (123, 1, 'f075ab35-831e-4ee1-80cd-61ff2ba78f46', 2, '2008-08-20', 3, 5);

-- Серія: Східний календар - 4 (12)
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (130, 1, 'e4d1aec6-aea6-47b9-bfdb-b07ea3f19922', 2, '2009-01-05', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (131, 1, '50adcc86-405b-4897-8ee5-061fa9f4d7c4', 2, '2010-01-05', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (132, 1, 'db6aaec3-3eef-436e-a702-6c66dce707e6', 2, '2012-12-10', 3, 5);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (133, 1, '8ea67e18-1b72-429d-b332-99e6e896ac15', 2, '2013-12-10', 3, 5);

-- 10 UAH Silver 925
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (140, 1, '65ab32fd-a3f8-49f5-8283-c3892814184f', 2, '1999-04-30', 3, 6);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (141, 1, '36bac3ba-3a95-4e17-8607-b82d1a03ac36', 2, '2008-07-25', 3, 6);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (142, 1, '8697ff67-f15c-42e9-8653-649a8389200a', 2, '2009-11-30', 3, 6);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (143, 1, '6545d9e6-6abb-459c-95f6-3513028ae131', 2, '2010-03-25', 3, 6);

-- obverse reverse