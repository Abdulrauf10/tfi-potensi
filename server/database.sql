CREATE DATABASE potensi

CREATE TABLE participant (
  p_id BIGSERIAL NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  password TEXT,
  whatsapp BIGINT,
  company TEXT NOT NULL,
  user_type TEXT
);

CREATE TABLE questions (
  q_id BIGSERIAL NOT NULL PRIMARY KEY,
  question TEXT NOT NULL,
  question_type TEXT NOT NULL
);

CREATE TABLE choices (
  c_id BIGSERIAL NOT NULL PRIMARY KEY,
  choice TEXT NOT NULL, 
  is_correct BOOL,
  question_id BIGINT REFERENCES questions (q_id)
);

CREATE TABLE participant_answer (
  pa_id BIGSERIAL NOT NULL PRIMARY KEY,
  participant_id BIGINT REFERENCES participant (p_id),
  question_id BIGINT REFERENCES questions (q_id),
  answer1 BOOL,
  answer2 BOOL
);

-- subtest1
INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_1.JPG?alt=media&token=69b11e1d-f46d-4483-a6aa-90706ad66813', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_2.JPG?alt=media&token=72f90bb9-bf4e-4545-9957-1a11401b8419', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_3.JPG?alt=media&token=8806c5d8-e313-4d2b-8542-373511e5280d', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_4.JPG?alt=media&token=df434257-fe6e-4b0c-b9d3-7411a0b0adb6', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_5.JPG?alt=media&token=9b54ccef-2ce8-4e0c-af6e-956330af5652', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_6.JPG?alt=media&token=abdd060c-b9ee-48e8-9c45-63afd8cd2c89', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_7.JPG?alt=media&token=16893100-6297-492c-8c12-818d204d626a', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_8.JPG?alt=media&token=0f0a0ec3-a45c-4b27-85a8-914fe1aea668', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_9.JPG?alt=media&token=c6fdecfb-88ee-44b8-bc48-867473520099', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_10.JPG?alt=media&token=bd65f5e1-bd39-4b4d-ab09-3a0b80fc3607', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_11.JPG?alt=media&token=5b96e997-1cb6-4ed8-8530-1c3fc2cbddcf', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_12.JPG?alt=media&token=0c35acf7-8a77-4478-87ec-eb3c22cc4726', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_13.JPG?alt=media&token=9f3f05ce-dd76-4b17-80f2-6ecbf1e6c28a', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_14.JPG?alt=media&token=a1180df3-70b2-47b2-b4d7-a5c08c471f72', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_15.JPG?alt=media&token=6e25995d-a407-49e7-97f5-ffbbbe398478', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_16.JPG?alt=media&token=7aaa8335-6748-4573-97a5-5bbaff734b8e', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_17.JPG?alt=media&token=995386a3-74ad-498f-a539-b5921da4e90e', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_18.JPG?alt=media&token=54491b3d-6482-4264-8bac-b4fb97bf279e', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_19.JPG?alt=media&token=45504851-b435-44f3-a470-82dbce52f296', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_20.JPG?alt=media&token=b027cb6d-ca86-48c6-b9d5-dc81dd7266a8', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_21.JPG?alt=media&token=6f7862e3-6e13-4e48-a413-922f4e0d82b1', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_22.JPG?alt=media&token=fbc9ed5c-0796-40e9-aa68-f31d8c8fe6f7', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_23.JPG?alt=media&token=27e3cd9b-c3f2-405f-b56e-b7ca441b9ffa', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_24.JPG?alt=media&token=82fdb344-a509-402b-8a48-ac89e53a8ca8', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_25.JPG?alt=media&token=ef5cd39c-d95e-4e84-899b-c6f69b467abb', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_26.JPG?alt=media&token=25cae8eb-8c83-45df-bc51-2069dc214aa5', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_27.JPG?alt=media&token=e381f3ec-a9aa-4756-94a9-38d6cd1c526b', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_28.JPG?alt=media&token=5b2ae507-df76-4300-b894-7103c5039df1', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_29.JPG?alt=media&token=6901c91b-e3e0-4b2f-a292-2849f1b68a22', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_30.JPG?alt=media&token=68965f5c-ce99-4be1-b071-acca3c7bd0b0', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31.JPG?alt=media&token=a802121b-4abe-4eec-b4a2-1d13b924b8c0', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_32.JPG?alt=media&token=23979f78-f021-451d-b702-67b29fbd33b2', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_33.JPG?alt=media&token=0a326bd4-5861-4425-8eba-7e969ca043de', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_34.JPG?alt=media&token=adb43725-affe-4bc3-816a-cfb88a2c5789', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_35.JPG?alt=media&token=9f615254-aa12-4937-9697-04e36829bd07', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_36.JPG?alt=media&token=07802a7f-0899-4cd6-b6b0-6cf778a7a8d2', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_37.JPG?alt=media&token=5e0950c5-828f-4d9e-b15b-fc4dabe8a652', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_38.JPG?alt=media&token=ef966fbd-daf0-4866-9289-66642c44ceee', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_39.JPG?alt=media&token=8c6dcaf1-3dac-464a-9572-2f467759d2db', 'subtest_1');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_40.JPG?alt=media&token=ec414e8f-8ebb-4719-8576-405ad5868acd', 'subtest_1');

-- choices subtest 1
INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_1_a.JPG?alt=media&token=ba2e40a9-8ff9-4f8a-91af-2bd1b817295d', false, 1);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_1_b.JPG?alt=media&token=1076d029-2b21-41c0-80ef-db0118d46eb5', true, 1);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_1_c.JPG?alt=media&token=b6071787-52bc-47f1-af86-47437eacbe4f', false, 1);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_1_d.JPG?alt=media&token=7a07e4d3-7101-443d-9153-0d3d4baeb383', false, 1);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_2_a.JPG?alt=media&token=7ef4b3ef-7d63-417f-b0f1-fa412704feb2', false, 2);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_2_b.JPG?alt=media&token=cffa0061-d337-4956-9313-dbd5c677ab59', false, 2);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_2_c.JPG?alt=media&token=6db4660a-d312-452d-9d20-12b17fbdce7c', true, 2);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_2_d.JPG?alt=media&token=c803e828-a27c-4f66-9108-3cd57cc898b8', false, 2);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_3_a.JPG?alt=media&token=32c13bb5-dd1c-4632-878e-7ba9f51bb1c8', false, 3);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_3_b.JPG?alt=media&token=38e4ad19-9e76-4604-b7be-3996cca594b4', false, 3);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_3_c.JPG?alt=media&token=b04ce9d4-ba21-4ca0-a4f9-7db36b1771c2', true, 3);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_3_d.JPG?alt=media&token=f3402823-c2a2-4989-a6b5-25e118053177', false, 3);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_4_a.JPG?alt=media&token=676504e7-1346-4065-9f6f-28446d735601', true, 4);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_4_b.JPG?alt=media&token=d8003372-c0a9-444f-bd78-c6cc3e136292', false, 4);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_4_c.JPG?alt=media&token=3e5c43f6-b8d8-4022-9ba8-33c7c949eb56', false, 4);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_4_d.JPG?alt=media&token=86d171a7-0421-4b32-a293-5a176b84940b', false, 4);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_5_a.JPG?alt=media&token=f599c4e8-1c0f-4507-9146-201673176c04', false, 5);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_5_b.JPG?alt=media&token=24475f12-0cba-4724-b5ee-12b89a04d559', true, 5);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_5_c.JPG?alt=media&token=23a63954-6280-4d73-a969-fb0cd1a2a16d', false, 5);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_5_d.JPG?alt=media&token=9a254b28-3df3-4837-868e-6b85731b90a2', false, 5);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_6_a.JPG?alt=media&token=0d58c6a5-2c52-4298-9305-74b001d4d7a9', false, 6);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_6_b.JPG?alt=media&token=c65bc045-687f-45d7-8ee8-9873c4679fcc', false, 6);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_6_c.JPG?alt=media&token=45b89fb6-261d-4de6-a324-55819a5c49bc', false, 6);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_6_d.JPG?alt=media&token=721b7c63-1000-420b-87ff-905023f1dd7f', true, 6);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_7_a.JPG?alt=media&token=61bc8ddd-a9b3-45ed-acc1-b894cf0feb7b', false, 7);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_7_b.JPG?alt=media&token=c2647fe4-c7d4-4923-ae13-e56ab2e8a2da', false, 7);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_7_c.JPG?alt=media&token=64db22cd-27f8-4ee7-b21b-aba666956fc8', false, 7);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_7_d.JPG?alt=media&token=31e5181f-dd20-4a52-9cf9-033df4bb9c3d', true, 7);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_8_a.JPG?alt=media&token=bf526309-22ec-4670-8dd0-d302b6fd764b',true, 8);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_8_b.JPG?alt=media&token=a8e9d083-5dce-49aa-9957-584f5f29fa32',false, 8);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_8_c.JPG?alt=media&token=9e59a225-9fae-4115-9783-311906abcaa5',false, 8);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_8_d.JPG?alt=media&token=b4cbd01c-269e-4a90-b17a-f6c281c06876',false, 8);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_9_a.JPG?alt=media&token=b55898b7-a4f3-4a11-bf63-79b441d3705f', false, 9);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_9_b.JPG?alt=media&token=1294f7b9-a38f-4c92-be85-a6a227b361ce', false, 9);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_9_c.JPG?alt=media&token=effb6cc1-e9e8-4e00-8464-b970ce64e32a', false, 9);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_9_d.JPG?alt=media&token=6193d75a-dc8c-421c-bc09-7451821c300e', true, 9);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_10_a.JPG?alt=media&token=e55615f0-74f0-4f9c-8ab8-6eeee339ffdc',true, 10);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_10_b.JPG?alt=media&token=c9e71614-d684-43bb-8d17-6ed3898583da',false, 10);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_10_c.JPG?alt=media&token=14058e4d-dc18-41ed-a2b6-c4c8ede18bb5',false, 10);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_10_d.JPG?alt=media&token=fd48ed4a-b238-4476-ab6b-fd871b5697a0',false, 10);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_11_a.JPG?alt=media&token=97a27d3b-eaca-4113-a968-cedc753a8301', false, 11);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_11_b.JPG?alt=media&token=2b8188df-a051-40d3-8cf7-c046de0067dc', true, 11);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_11_c.JPG?alt=media&token=9c1a8248-dd8a-4493-87e3-da66b9c04f98', false, 11);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_11_d.JPG?alt=media&token=2f791323-08d1-4c32-901d-7101dbcefb06', false, 11);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_12_a.JPG?alt=media&token=354870f2-71ad-465d-9acb-7d7f0e0ceef9', false, 12);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_12_b.JPG?alt=media&token=8846003c-686e-4197-959c-32a55d1ef8cb', false, 12);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_12_c.JPG?alt=media&token=5c8c22c4-1883-4e77-84a1-5b57cfab62fa', true, 12);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_12_d.JPG?alt=media&token=6457c9a1-cd09-4c33-b9b2-c699443fef56', false, 12);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_13_a.JPG?alt=media&token=ea444e2a-bdc0-4d4b-b89d-7c2340c77469', false, 13);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_13_b.JPG?alt=media&token=1dfde7d9-76f4-4a28-a6b7-99a46f01ac89', true, 13);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_13_c.JPG?alt=media&token=30618069-1ba9-486a-82de-417bc3224afe', false, 13);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_13_d.JPG?alt=media&token=bd45a666-df82-4903-a4dd-3c0b752fe85f', false, 13);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_14_a.JPG?alt=media&token=b4cc858b-5127-4d72-8a2f-9d58ce9c7c2b', false, 14);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_14_b.JPG?alt=media&token=7910956f-48da-4153-8477-9b413ffeccdd', false, 14);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_14_c.JPG?alt=media&token=488a3fd6-c6ca-4efd-be14-223404d74b38', false, 14);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_14_d.JPG?alt=media&token=2fa2e0e7-c827-4e6a-b839-db231ef4b62d', true, 14);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_15_a.JPG?alt=media&token=79c9c6b5-9717-4119-b35b-ad8f4f03d2a6', false, 15);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_15_b.JPG?alt=media&token=8052d02d-1c1e-4089-aeb5-1fa0efc1cb19', true, 15);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_15_c.JPG?alt=media&token=1eb66ae2-558f-4db0-b15b-1291b39eae4f', false, 15);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_15_d.JPG?alt=media&token=6a6ac191-4ae6-49e2-b6c8-24c956d56223', false, 15);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_16_a.JPG?alt=media&token=55d11379-4cc7-45d8-a571-732abd58a412', false, 16);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_16_b.JPG?alt=media&token=72b6e202-acf5-4c7d-b5c0-16f8e266146f', false, 16);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_16_c.JPG?alt=media&token=dc6ab299-ac12-4755-a71c-8df14668c487', true, 16);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_16_d.JPG?alt=media&token=da62d787-1aa5-48e3-a661-2a70293a31de', false, 16);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_17_a.JPG?alt=media&token=9bca64a9-eff5-4a7a-9687-5e07aedc011d', false, 17);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_17_b.JPG?alt=media&token=735db2b4-7579-41ad-a23c-0718c28d9a15', false, 17);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_17_c.JPG?alt=media&token=c92589a4-b2e2-4c4b-be77-f9b1c6bace73', true, 17);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_17_d.JPG?alt=media&token=8f8b5b01-6b74-4ecb-a875-4496dda98061', false, 17);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_18_a.JPG?alt=media&token=3c67dee1-3117-40e4-af33-af630f63b54f', false, 18);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_18_b.JPG?alt=media&token=ea064f4e-5227-40c2-9c9a-afb2864e53eb', false, 18);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_18_c.JPG?alt=media&token=cdd5cf68-d5df-496c-8829-f1ffe9eeaa91', false, 18);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_18_d.JPG?alt=media&token=5361e132-4116-4269-abb8-82d68b37616a', true, 18);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_19_a.JPG?alt=media&token=a63c66f0-4a05-4a22-9ccb-4b6947f24952', true, 19);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_19_b.JPG?alt=media&token=c4b329b8-2c9f-4698-a67e-00fc21af033e', false, 19);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_19_c.JPG?alt=media&token=110b359a-d76f-4248-b76f-90867c952893', false, 19);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_19_d.JPG?alt=media&token=59fa9d47-6a59-45f7-beba-024a8c9e45ab', false, 19);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_20_a.JPG?alt=media&token=be72b7a3-df5d-4e7e-afaa-12112fc38cc6', true, 20);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_20_b.JPG?alt=media&token=5fa1ca2e-770a-4243-98b0-7eef3298004d', false, 20);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_20_c.JPG?alt=media&token=bf5797bf-5d23-4bfc-a6fc-a780c75b6d5b', false, 20);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_20_d.JPG?alt=media&token=822fa527-1070-46b6-b520-f36a7c3a01f3', false, 20);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_21_a.JPG?alt=media&token=f62c14a5-b488-4f13-a0a1-52c811b6d70c', true, 21);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_21_b.JPG?alt=media&token=901e894c-fbe2-4359-aafa-1d0a6fe6dc91', false, 21);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_21_c.JPG?alt=media&token=b9029c5c-a31a-416a-b27c-cc7ff570e444', false, 21);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_21_d.JPG?alt=media&token=c39ac994-90a7-4fc1-ac82-87e55acdf9c2', false, 21);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_22_a.JPG?alt=media&token=7bdac256-1022-46fa-84ac-55628fa6b3a0', false, 22);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_22_b.JPG?alt=media&token=6eeed475-e728-4890-b3ca-e4733a7461e2', false, 22);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_22_c.JPG?alt=media&token=1aea231e-ffdc-4881-b7d6-7504b86ce056', true, 22);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_22_d.JPG?alt=media&token=e48eae20-3f37-4ca0-b00c-3d1f46128c1c', false, 22);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_23_a.JPG?alt=media&token=ae894503-6256-4ec6-b67b-660f6fe37946', false, 23);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_23_b.JPG?alt=media&token=3befcf9a-8d83-4733-97cb-757c3d055b6a', false, 23);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_23_c.JPG?alt=media&token=4b5dd775-da76-409f-9a0f-cf9f7ababf45', false, 23);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_23_d.JPG?alt=media&token=75d46cf9-ace0-4e86-933f-2c46e6648696', true, 23);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_24_a.JPG?alt=media&token=59a311a7-ecfd-4119-a1a6-715e182b87ad', true, 24);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_24_b.JPG?alt=media&token=8b9d7753-4af1-4a69-a6dd-6bae0a31964c', false, 24);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_24_c.JPG?alt=media&token=59a18546-13c0-424c-85de-f0fe89eb6e2e', false, 24);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_24_d.JPG?alt=media&token=997d3d14-5274-476f-80ed-117c54f69557', false, 24);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_25_a.JPG?alt=media&token=23c953cd-0028-4da6-8813-79d6d37c258b', true, 25);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_25_b.JPG?alt=media&token=bb948b3c-9903-4689-8d9e-04982ef2db41', false, 25);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_25_c.JPG?alt=media&token=d2365713-8960-46de-a658-44f54865bc72', false, 25);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_25_d.JPG?alt=media&token=fb637669-2577-4e22-8cc8-29ecf534843e', false, 25);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_26_a.JPG?alt=media&token=294e230d-c467-4f90-bc01-a777f907c867', false, 26);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_26_b.JPG?alt=media&token=f9be3ec7-f3c7-47f0-b820-9e550009e00a', true, 26);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_26_c.JPG?alt=media&token=98dedb85-7113-41c2-b3e5-591c9177b104', false, 26);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_26_d.JPG?alt=media&token=9617b2e5-c92a-42aa-9ef5-3a12d6eaed86', false, 26);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_27_a.JPG?alt=media&token=4f3d4d45-1649-4653-a89e-b6ac5356e945', false, 27);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_27_b.JPG?alt=media&token=ced0a883-a023-450b-8270-b1341a1c7b27', true, 27);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_27_c.JPG?alt=media&token=0fed1a4c-bdd5-4732-bd85-ac7041f9c2ea', false, 27);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_27_d.JPG?alt=media&token=61ef1a45-3e9a-4a1c-8c06-f466ae9572e9', false, 27);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_28_a.JPG?alt=media&token=5bdf62ac-1e88-4393-a5a2-1a66bd42f86b', false, 28);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_28_b.JPG?alt=media&token=8d8a68a5-ec7d-48aa-8dce-8528bbd3f26b', false, 28);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_28_c.JPG?alt=media&token=8d22b527-197f-414f-a56d-4ece54db9c06', true, 28);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_28_d.JPG?alt=media&token=dbc5d32e-8923-41e8-b2cd-1c55c8c75e93', false, 28);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_29_a.JPG?alt=media&token=67224883-0571-4f0b-b186-09b468ac4e59', false, 29);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_29_b.JPG?alt=media&token=c1d33c10-e367-4113-a25e-c726a755a048', false, 29);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_29_c.JPG?alt=media&token=056fdb27-9b9a-4f10-b771-2344c9e6470a', true, 29);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_29_d.JPG?alt=media&token=22157dd7-f9f1-49af-8693-b1e6543056cc', false, 29);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_30_a.JPG?alt=media&token=55b5c6bc-ae54-4883-8556-b6661e475f96', true, 30);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_30_b.JPG?alt=media&token=6c6644c3-4198-4675-a6d8-bed32b0c0796', false, 30);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_30_c.JPG?alt=media&token=d87b339a-f75c-4a5c-a880-9b807b246ead', false, 30);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_30_d.JPG?alt=media&token=711aed13-38b7-4835-93f3-7b4bda3ca8d1', false, 30);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31_a.JPG?alt=media&token=8c427252-c1e1-4b0a-adff-1d3aea29a8f0', false, 31);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31_b.JPG?alt=media&token=fcc94453-3efe-4dc4-b54d-722b24a1a879', true, 31);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31_c.JPG?alt=media&token=9563e3d5-1645-4219-91d3-eef973ec7119', false, 31);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31_d.JPG?alt=media&token=75b30abc-6517-469f-a9b4-b9eb1593a0f5', false, 31);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_31_a.JPG?alt=media&token=8c427252-c1e1-4b0a-adff-1d3aea29a8f0', false, 32);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_32_b.JPG?alt=media&token=10292344-e499-4f3a-8049-1595308234c7', true, 32);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_32_c.JPG?alt=media&token=e3f2c746-2a00-4f94-ac18-c3acb8547d01', false, 32);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_32_d.JPG?alt=media&token=5d4729e9-fed7-4708-baf1-e387bbcab3e8', false, 32);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_33_a.JPG?alt=media&token=6f134530-fded-4f0d-9c64-7069d1995004', false, 33);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_33_b.JPG?alt=media&token=82a4e7da-5b0e-4d50-9b03-95ea6200e067', true, 33);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_33_c.JPG?alt=media&token=8d4908dd-0dec-4488-832f-97c60d7837eb', false, 33);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_33_d.JPG?alt=media&token=83396011-891a-4ea9-88ae-9fa8a97bedc0', false, 33);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_34_a.JPG?alt=media&token=34f97836-261e-490f-bd51-126ad70963d8', false, 34);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_34_b.JPG?alt=media&token=bca2f72b-25ce-4389-8816-f636ffeb4eca', false, 34);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_34_c.JPG?alt=media&token=e2f208ca-bdb4-4d7a-a102-81c7af6b579b', false, 34);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_34_d.JPG?alt=media&token=dee7e5d3-3499-4e37-80ab-dc037bd99ffd', true, 34);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_35_a.JPG?alt=media&token=6e7d8853-ad67-411b-bf69-ee37dea4ac5c', true, 35);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_35_b.JPG?alt=media&token=976ea439-e6af-4461-b35f-9ac0b017695b', false, 35);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_35_c.JPG?alt=media&token=ca3357ba-ebdc-4efa-8b2f-a05e1c6227d0', false, 35);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_35_d.JPG?alt=media&token=b35d94fe-f340-47c3-8809-0b6aa13576f8', false, 35);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_36_a.JPG?alt=media&token=d4bb3f8d-ac68-4756-a063-1e6eb4abbcc6', false, 36);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_36_b.JPG?alt=media&token=04bdd7d0-174d-4dfe-9d1c-cf638d68a77a', true, 36);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_36_c.JPG?alt=media&token=e2ded49b-93f0-4130-b209-a154a0e30ab0', false, 36);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_36_d.JPG?alt=media&token=1682c6c9-07fd-492d-a0e7-df730a5ffa48', false, 36);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_37_a.JPG?alt=media&token=a012d91c-99fb-46e9-8d27-e4c5dac1e7a3', true, 37);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_37_b.JPG?alt=media&token=d4b6e665-38c2-4b4f-816e-5696f70ab20f', false, 37);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_37_c.JPG?alt=media&token=c6eb0849-ae20-4ec4-bdd6-5d62d62b5c2b', false, 37);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_37_d.JPG?alt=media&token=573db11b-9ae0-45db-a376-1384f4105290', false, 37);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_38_a.JPG?alt=media&token=45e2b7df-effd-42e4-9ddd-c3d23913128a', false, 38);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_38_b.JPG?alt=media&token=a614a018-adc8-48ea-b477-4bbde8dc2862', true, 38);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_38_c.JPG?alt=media&token=575fb4bf-a121-4d23-a8c8-2569caa29ff2', false, 38);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_38_d.JPG?alt=media&token=2246b5cd-300d-42a6-bcd2-1bf171bfa76c', false, 38);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_39_a.JPG?alt=media&token=cfd90a23-7ab8-4fc9-a79f-0da9b4ea6b44', true, 39);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_39_b.JPG?alt=media&token=ab8e645a-1609-4ac3-a21b-a164e523f296', false, 39);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_39_c.JPG?alt=media&token=b7e8ff23-be0c-4931-a196-40eb1fb93baf', false, 39);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_39_d.JPG?alt=media&token=bf76d87e-cf05-4120-8ec4-d80bb77aee08', false, 39);


INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_40_a.JPG?alt=media&token=d7e6740b-7d40-4b47-a9fb-1ebc12a3212a', false, 40);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_40_b.JPG?alt=media&token=af0ca204-1af9-46b1-85ad-52fb7f43b366', false, 40);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_40_c.JPG?alt=media&token=53f9f85c-1af9-400e-9ba5-19485017e455', false, 40);

INSERT INTO choices(choice, is_correct, question_id) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_1_soal_no_40_d.JPG?alt=media&token=d13c9dfc-c01b-4a4b-9d4b-5ac0c8295195', true, 40);



-- subtest 2
INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_1.JPG?alt=media&token=57587bb9-2121-4444-9764-031666bd8863', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_2.JPG?alt=media&token=d773067d-ac29-4431-8068-b74453a46446', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_3.JPG?alt=media&token=8ddb7272-e78d-4750-a1c5-0387046ba054', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_4.JPG?alt=media&token=8637493a-d2ae-4149-a748-6c42142754e6', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_5.JPG?alt=media&token=0967532a-ea3c-4212-803e-9ee9de9e51e7', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_6.JPG?alt=media&token=07011da6-1125-4fc0-99d0-70fd834eded2', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_7.JPG?alt=media&token=999831d2-afe9-4492-a4fa-162385ceff74', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_8.JPG?alt=media&token=8d5229dd-f93e-4790-9d90-0165df6c7528', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_9.JPG?alt=media&token=2f8c6d59-eb4f-49a5-b233-0fd718d1db70', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_10.JPG?alt=media&token=10f6c0ee-684e-45a1-bc98-5d2abfb013ab', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_11.JPG?alt=media&token=5d791fd1-9ebe-41b6-a0e1-89e2459e8719', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_12.JPG?alt=media&token=780d3794-30c0-4b32-b9e0-3e57e6332047', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_13.JPG?alt=media&token=d87faa50-64ee-4435-b545-e76532325b7c', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_14.JPG?alt=media&token=1e079f5b-ce95-460e-aadb-3d8b28e0e043', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_15.JPG?alt=media&token=2a1e1f07-7c4f-4296-a75f-61cebdda73b2', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_16.JPG?alt=media&token=fecd4bc1-81ab-4389-8dd7-55c8dda77a41', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_17.JPG?alt=media&token=d965ee49-f2fb-46a6-a035-ab8d16acc0b4', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_18.JPG?alt=media&token=a01ce95b-c2aa-4503-bdf8-5c4cf86485e8', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_19.JPG?alt=media&token=91b9c747-7a33-4598-a715-7a98b8f4bcc4', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_20.JPG?alt=media&token=4220ea98-d26e-4844-ad36-7093851eacd0', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_21.JPG?alt=media&token=5fc47f73-4a18-4bb5-b538-205efcf0cc2f', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_22.jpg?alt=media&token=95c5c972-e778-4b0a-b295-ce8a25be833d', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_23.JPG?alt=media&token=92f85cb8-f9a8-46d4-9b3f-87917861be55', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_24.JPG?alt=media&token=36886cb7-dce7-4710-b3a6-c0cb77fd992f', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_25.JPG?alt=media&token=8f44a940-553d-4e82-b119-f8152e5699f4', 'subtest_2');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_2_soal_no_26.JPG?alt=media&token=ea7650b5-d0de-449d-a0be-6c3f0b29d6a5', 'subtest_2');



-- choice subtest 2
INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 41);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 41);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 41);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 41);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 41);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 41);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 42);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 42);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 42);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 42);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 42);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 42);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 43);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 43);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 43);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 43);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 43);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 43);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 44);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 44);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 44);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 44);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 44);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 44);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 45);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 45);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 45);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 45);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 45);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 45);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 46);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 46);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 46);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 46);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 46);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 46);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 47);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 47);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 47);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 47);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 47);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 47);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 48);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 48);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 48);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 48);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 48);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 48);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 49);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 49);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 49);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 49);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 49);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 49);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 50);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 50);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 50);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 50);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 50);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 50);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 51);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 51);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 51);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 51);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 51);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 51);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 52);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 52);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 52);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 52);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 52);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 52);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 53);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 53);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 53);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 53);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 53);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 53);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 54);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 54);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 54);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 54);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 54);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 54);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 55);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 55);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 55);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 55);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 55);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 55);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 56);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 56);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 56);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 56);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 56);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 56);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 57);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 57);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 57);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 57);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 57);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 57);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 58);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 58);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 58);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 58);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 58);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 58);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 59);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 59);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 59);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 59);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 59);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 59);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 60);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 60);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 60);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 60);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 60);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 60);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 61);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 61);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 61);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 61);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 61);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 61);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 62);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 62);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 62);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 62);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 62);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 62);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 63);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 63);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 63);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 63);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 63);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 63);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 64);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 64);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 64);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 64);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 64);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 64);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 65);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 65);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 65);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 65);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 65);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 65);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 66);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 66);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 66);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 66);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 66);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 66);


-- subtest3
INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');

INSERT INTO questions(question, question_type) VALUES('Pilihlah dua buah kata yang memiliki kesamaan arti yang paling dekat atau yang mempunyai arti yang berlawanan', 'subtest_3');


-- choices subtest 3

INSERT INTO choices(choice, is_correct, question_id) VALUES('Sedikit', true, 67);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tepat', false, 67);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Jernih', false, 67);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Banyak', true, 67);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Pergi', true, 68);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Berdiri', false, 68);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Datang', true, 68);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Beristirahat', false, 68);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Hasrat', true, 69);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Pengetahuan', false, 69);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Keinginan', true, 69);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kekuasaan', false, 69);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Jauh', true, 70);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Luas', false, 70);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Dekat', true, 70);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Nyaring', false, 70);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Terik', true, 71);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Panas', true, 71);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tawar', false, 71);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Sial', false, 71);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Kelana', true, 72);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Pemberontak', false, 72);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Pelari', false, 72);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Pengembara', true, 72);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Jasad', true, 73);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Ijazah', false, 73);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Organisme', true, 73);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Alat', false, 73);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Kikir', true, 74);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Dermawan', true, 74);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kurus', false, 74);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mendewakan', false, 74);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Azas', true, 75);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tamat', false, 75);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Prinsip', true, 75);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kekuasaan', false, 75);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Mencurigakan', false, 76);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Malu', false, 76);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Haram', true, 76);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Halal', true, 76);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Serasi', true, 77);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Sesuai', true, 77);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Ceroboh', false, 77);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kabur', false, 77);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Menyala', true, 78);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menyalak', false, 78);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Padam', true, 78);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Meradang', false, 78);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Terpencil', true, 79);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Terpencar', false, 79);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Jinak', false, 79);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Terasing', true, 79);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Ramah', false, 80);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Lihai', false, 80);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Arif', true, 80);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Bijaksana', true, 80);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Tongkat', false, 81);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Taraf', true, 81);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Titik', false, 81);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tingkat', true, 81);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Megah', false, 82);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tegang', true, 82);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Malu', false, 82);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kejang', true, 82);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Untung', true, 83);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Jujur', false, 83);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mujur', true, 83);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Urung', false, 83);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Meradang', false, 84);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Murung', true, 84);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mengampuni', false, 84);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Gembira', true, 84);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Lapang', true, 85);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Ruang', false, 85);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Panjang', false, 85);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Luas', true, 85);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Memperbaiki', false, 86);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menutupi', true, 86);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menyelubungi', true, 86);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mencari', false, 86);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Sementara', true, 87);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menggembalakan', false, 87);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menjerit', false, 87);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kekal', true, 87);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Nisbi', true, 88);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mutlak', true, 88);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Curiga', false, 88);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Malu', false, 88);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Dispensasi', true, 89);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Amnesti', false, 89);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kelonggaran', true, 89);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Penyesalan', false, 89);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Marah', true, 90);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Melarat', false, 90);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Gusar', true, 90);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menyesalkan', false, 90);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Pengecut', false, 91);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Rendah Hati', true, 91);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kecil', false, 91);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Sombong', true, 91);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Penyakit', false, 92);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tobat', false, 92);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Bisa', true, 92);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Racun', true, 92);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Damai', true, 93);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Berseri', false, 93);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tenang', true, 93);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mulia', false, 93);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Mengganggu', true, 94);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mengangkat', false, 94);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mengangkut', false, 94);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mengusik', true, 94);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Menguji', false, 95);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Memuji', true, 95);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menyanjung', true, 95);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Mendewakan', false, 95);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Vertikal', true, 96);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Lurus', false, 96);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Tegak Lurus', true, 96);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Rata-rata', false, 96);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Peraturan', false, 97);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kebiasaan', true, 97);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kenangan', false, 97);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Adat', true, 97);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Pendekar', false, 98);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Pelopor', false, 98);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Penyajak', true, 98);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Penyair', true, 98);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Menarik', false, 99);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Asing', true, 99);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Aneh', true, 99);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Umum', false, 99);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Bara', false, 100);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Suluh', true, 100);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Obor', true, 100);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Menara', false, 100);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Cemar', true, 101);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Sedih', false, 101);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Cemas', false, 101);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Bersih', true, 101);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Sedih', false, 102);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Lamban', false, 102);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kasar', true, 102);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Hati-hati', true, 102);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Penat', false, 103);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Kenyang', true, 103);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Penuh', false, 103);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Jenuh', true, 103);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Tak Bersemangat', true, 104);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Ramah Tamah', false, 104);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Keranjingan', true, 104);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Berpantang', false, 104);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Nila', false, 105);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Aib', true, 105);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Nista', true, 105);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Dosa', false, 105);


INSERT INTO choices(choice, is_correct, question_id) VALUES('Sombong', false, 106);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Terkendali', true, 106);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Lancang', true, 106);

INSERT INTO choices(choice, is_correct, question_id) VALUES('Gila Hormat', false, 106);



-- subtest4
INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_1.JPG?alt=media&token=552b455b-f232-436a-b882-83ea2b64a3c4', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_2.JPG?alt=media&token=d613c367-0adb-412d-bd20-f473a59ecae3', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_3.JPG?alt=media&token=063931e4-d075-4657-9db5-06d0d1af657f', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_4.JPG?alt=media&token=2e3c6d38-301e-4aec-a80e-0d3cd5ffcbe9', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_5.JPG?alt=media&token=a8a7839b-b4c7-4cde-93d1-753e96d8853a', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_6.JPG?alt=media&token=310cd4cf-4833-4a42-914b-29f846701be4', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_7.JPG?alt=media&token=8b3dce5a-36aa-4d5c-9779-89f72be06f04', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_8.JPG?alt=media&token=9062cb6c-e560-46c4-bbca-e1da50178f23', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_9.JPG?alt=media&token=a4ad90b1-3044-4d16-ac23-35e50e8638d6', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_10.JPG?alt=media&token=3383d4f7-ed8b-45a3-a4c7-17a3f8d9b955', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_11.JPG?alt=media&token=7723a7a8-0e49-454f-9248-13e956d70e2e', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_12.JPG?alt=media&token=7ba65715-ebbd-4d5a-8b94-e24e68fc472b', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_13.JPG?alt=media&token=ad9305b7-5418-4f70-be5a-b2246a0b4cd3', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_14.JPG?alt=media&token=67c35d55-a595-4c2e-9f68-08a968f6758d', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_15.JPG?alt=media&token=b8c93a8f-a8ee-4576-bcbb-5a6d8a2094e6', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_16.JPG?alt=media&token=ab3b99ca-6ce5-43f8-8e2a-4fa8a2ba4360', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_17.JPG?alt=media&token=543f8bf4-b627-47ce-b4c4-cae0bda5594d', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_18.JPG?alt=media&token=20fa56b0-38f1-440d-8279-9ba8b4a6dad5', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_19.JPG?alt=media&token=daf3a87e-ada8-4ca0-abaf-69e7de9cce53', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_20.JPG?alt=media&token=e3e79bc5-4cdd-40c3-8ada-6bbd2a7c66c6', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_21.JPG?alt=media&token=e479ad5d-5734-423c-9697-f7c40fd1d098', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_22.JPG?alt=media&token=78fa26db-143f-4712-ba68-ad40f72ef358', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_23.JPG?alt=media&token=634359c1-cfaa-40cf-ac8c-0cc23cbec8fe', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_24.JPG?alt=media&token=6dd146fa-6b5f-49b8-bb3e-d6539f88bea1', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_25.JPG?alt=media&token=c60d0ee3-d72a-4118-b648-c4c9ddc1b690', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_26.JPG?alt=media&token=d3a5da81-15ea-4315-946a-c1633fd2eb9a', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_27.JPG?alt=media&token=7ccec3b3-2456-422b-9489-a5a6421202a4', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_28.JPG?alt=media&token=57c3fe2b-766d-4b72-b53e-3bd5baee07af', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_29.JPG?alt=media&token=f145061b-3265-4908-84a6-79f25710fc97', 'subtest_4');

INSERT INTO questions(question, question_type) VALUES('https://firebasestorage.googleapis.com/v0/b/tfi-potensi.appspot.com/o/subtest_4_soal_no_30.JPG?alt=media&token=0db05a17-759c-4845-aaf0-187e8b6c151a', 'subtest_4');


-- subtest 4 choice

INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 107);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 107);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 107);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 107);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 107);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 107);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 108);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 108);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 108);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 108);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 108);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 108);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 109);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 109);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 109);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 109);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 109);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 109);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 110);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 110);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 110);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 110);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 110);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 110);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 111);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 111);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 111);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 111);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 111);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 111);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 112);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 112);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 112);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 112);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 112);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 112);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 113);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 113);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 113);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 113);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 113);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 113);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 114);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 114);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 114);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 114);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 114);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 114);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 115);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 115);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 115);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 115);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 115);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 115);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 116);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 116);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 116);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 116);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 116);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 116);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 117);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 117);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 117);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 117);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 117);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 117);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 118);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 118);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 118);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 118);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 118);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 118);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 119);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 119);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 119);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 119);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 119);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 119);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 120);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 120);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 120);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 120);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 120);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 120);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 121);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 121);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 121);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 121);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 121);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 121);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 122);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 122);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 122);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 122);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 122);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 122);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 123);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 123);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 123);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 123);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 123);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 123);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 124);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 124);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 124);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 124);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 124);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 124);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 125);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 125);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 125);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 125);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 125);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 125);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 126);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 126);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 126);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 126);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 126);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 126);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 127);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 127);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 127);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 127);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 127);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 127);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 128);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 128);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 128);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 128);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 128);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 128);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 129);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 129);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 129);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 129);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 129);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 129);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 130);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 130);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 130);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 130);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 130);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 130);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 131);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 131);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 131);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 131);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 131);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 131);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 132);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 132);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', true, 132);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 132);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 132);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 132);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 133);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 133);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 133);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', true, 133);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', false, 133);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 133);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 134);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', true, 134);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 134);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 134);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 134);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 134);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', false, 135);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 135);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 135);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 135);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 135);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', true, 135);


INSERT INTO choices(choice, is_correct, question_id) VALUES('a', true, 136);

INSERT INTO choices(choice, is_correct, question_id) VALUES('b', false, 136);

INSERT INTO choices(choice, is_correct, question_id) VALUES('c', false, 136);

INSERT INTO choices(choice, is_correct, question_id) VALUES('d', false, 136);

INSERT INTO choices(choice, is_correct, question_id) VALUES('e', true, 136);

INSERT INTO choices(choice, is_correct, question_id) VALUES('f', false, 136);