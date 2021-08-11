-- sampleuserというユーザーを作成する
-- rootユーザーで実行すること

GRANT ALL ON sample.* TO 'sampleuser'@'localhost' IDENTIFIED BY 'sampleuser';
