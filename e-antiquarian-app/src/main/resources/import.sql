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
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (1, 1, 'e7d44e4d-8d38-4365-9e62-401610910f15', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (2, 1, 'a03cfaed-c611-4bbc-bb40-af0942ad4057', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (3, 1, 'adbd1672-76a6-44fa-80fb-7408535aa249', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (4, 1, '2bea2fdd-8446-45f8-af51-e956d4635665', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (5, 1, 'd0e56b1b-376f-4738-858e-49d6a203ac80', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (6, 1, '0f5a745b-8ce2-4097-9829-8c7415af5f95', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (7, 1, '3bd27d90-a520-4043-bb7c-c6e564d70210', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (8, 1, '95202911-7e7d-4b57-b7a4-b6e401caefd8', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (9, 1, '854b3b27-f1d4-43b4-8705-207bd484f94c', 1, '1995-05-07', 1, 1);
INSERT INTO numismatics_coin (id, version, uuid, monetary_period_id, issue_date, coin_material_id, coin_denomination_id) VALUES (10, 1, '359f6639-c9e9-4480-a5df-5af2e3af16c7', 1, '1995-05-07', 1, 1);