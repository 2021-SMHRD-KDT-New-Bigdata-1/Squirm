-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- tbl_member Table Create SQL
CREATE TABLE tbl_member
(
    `member_id`        VARCHAR(20)    NOT NULL    COMMENT '회원 아이디', 
    `member_pw`        VARCHAR(20)    NOT NULL    COMMENT '회원 비밀번호', 
    `member_name`      VARCHAR(20)    NOT NULL    COMMENT '회원 이름', 
    `member_email`     VARCHAR(50)    NOT NULL    COMMENT '회원 이메일', 
    `member_nickname`  VARCHAR(20)    NOT NULL    COMMENT '회원 닉네임', 
    `member_joindate`  DATETIME       NOT NULL    DEFAULT NOW() COMMENT '회원 가입일자', 
    `admin_yn`         VARCHAR(1)     NOT NULL    DEFAULT 'N' COMMENT '관리자 여부', 
     PRIMARY KEY (member_id)
);

ALTER TABLE tbl_member COMMENT '회원 정보';


-- tbl_sound Table Create SQL
CREATE TABLE tbl_sound
(
    `sound_num`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '소리 번호', 
    `sound_file`     VARCHAR(150)    NOT NULL    COMMENT '소리 파일', 
    `sound_subject`  VARCHAR(150)    NULL        COMMENT '글 제목', 
    `sound_content`  TEXT            NULL        COMMENT '글 내용', 
    `upload_date`    DATETIME        NOT NULL    COMMENT '업로드 일자', 
    `member_id`      VARCHAR(20)     NOT NULL    COMMENT '등록자 아이디', 
     PRIMARY KEY (sound_num)
);

ALTER TABLE tbl_sound COMMENT '소리 정보';

ALTER TABLE tbl_sound
    ADD CONSTRAINT FK_tbl_sound_member_id_tbl_member_member_id FOREIGN KEY (member_id)
        REFERENCES tbl_member (member_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tbl_frame Table Create SQL
CREATE TABLE tbl_frame
(
    `frame_num`         INT UNSIGNED      NOT NULL    AUTO_INCREMENT COMMENT '프레임 번호', 
    `sound_num`         INT UNSIGNED      NOT NULL    COMMENT '소리 번호', 
    `frame_file`        VARCHAR(150)      NOT NULL    COMMENT '프레임 파일', 
    `frame_time`        DECIMAL(12, 1)    NULL        COMMENT '프레임 시간', 
    `frame_samplerate`  INT               NULL        COMMENT '샘플 레이트', 
    `frame_frequency`   INT               NULL        COMMENT '샘플 주파수', 
     PRIMARY KEY (frame_num)
);

ALTER TABLE tbl_frame COMMENT '소리 프레임 정보';

ALTER TABLE tbl_frame
    ADD CONSTRAINT FK_tbl_frame_sound_num_tbl_sound_sound_num FOREIGN KEY (sound_num)
        REFERENCES tbl_sound (sound_num) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tbl_deeplearning Table Create SQL
CREATE TABLE tbl_deeplearning
(
    `deep_num`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '딥러닝 번호', 
    `frame_num`   INT UNSIGNED    NOT NULL    COMMENT '프레임 번호', 
    `deep_label`  VARCHAR(150)    NOT NULL    COMMENT '딥러닝 라벨 링', 
    `reg_date`    DATETIME        NOT NULL    COMMENT '등록 일자', 
    `member_id`   VARCHAR(20)     NOT NULL    COMMENT '등록자 아이디', 
     PRIMARY KEY (deep_num)
);

ALTER TABLE tbl_deeplearning COMMENT '딥러닝 분석 정보';

ALTER TABLE tbl_deeplearning
    ADD CONSTRAINT FK_tbl_deeplearning_frame_num_tbl_frame_frame_num FOREIGN KEY (frame_num)
        REFERENCES tbl_frame (frame_num) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE tbl_deeplearning
    ADD CONSTRAINT FK_tbl_deeplearning_member_id_tbl_member_member_id FOREIGN KEY (member_id)
        REFERENCES tbl_member (member_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


