--
-- File generated with SQLiteStudio v3.4.4 on Fri Apr 12 23:33:57 2024
--
-- Text encoding used: UTF-8
--
-- Table: auth_group
CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTO_INCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTO_INCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_booking',
                                'Can add booking'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_booking',
                                'Can change booking'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_booking',
                                'Can delete booking'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_booking',
                                'Can view booking'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                8,
                                'add_menu',
                                'Can add menu'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                8,
                                'change_menu',
                                'Can change menu'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                8,
                                'delete_menu',
                                'Can delete menu'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'view_menu',
                                'Can view menu'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                9,
                                'add_token',
                                'Can add Token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                9,
                                'change_token',
                                'Can change Token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                9,
                                'delete_token',
                                'Can delete Token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                9,
                                'view_token',
                                'Can view Token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                37,
                                10,
                                'add_tokenproxy',
                                'Can add token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                38,
                                10,
                                'change_tokenproxy',
                                'Can change token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                39,
                                10,
                                'delete_tokenproxy',
                                'Can delete token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                40,
                                10,
                                'view_tokenproxy',
                                'Can view token'
                            );


-- Table: auth_user
CREATE TABLE IF NOT EXISTS auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTO_INCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          1,
                          'pbkdf2_sha256$390000$XsN8nLmn6WkAm0m4M2FvBj$NoNY+nl4TswsV271p0ezYpuDQn7rKEEaJF2+YVCOyN0=',
                          '2022-11-21 14:12:28.813250',
                          1,
                          'bistroadmin',
                          '',
                          'admin@littlelemon.com',
                          1,
                          1,
                          '2022-11-21 14:06:57.968059',
                          ''
                      );


-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTO_INCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTO_INCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: authtoken_token
CREATE TABLE IF NOT EXISTS authtoken_token (
    key     VARCHAR (40) NOT NULL
                         PRIMARY KEY,
    created DATETIME     NOT NULL,
    user_id INTEGER      NOT NULL
                         UNIQUE
                         REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTO_INCREMENT,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 1,
                                 '1',
                                 'Greek salad',
                                 1,
                                 '[{"added": {}}]',
                                 8,
                                 1,
                                 '2022-11-21 14:07:42.499617'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 2,
                                 '2',
                                 'Grilled fish',
                                 1,
                                 '[{"added": {}}]',
                                 8,
                                 1,
                                 '2022-11-21 14:07:53.423747'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 3,
                                 '3',
                                 'Bruschetta',
                                 1,
                                 '[{"added": {}}]',
                                 8,
                                 1,
                                 '2022-11-21 14:08:03.005746'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 4,
                                 '4',
                                 'Lemon dessert',
                                 1,
                                 '[{"added": {}}]',
                                 8,
                                 1,
                                 '2022-11-21 14:08:19.917032'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 5,
                                 '1',
                                 'Greek salad',
                                 2,
                                 '[{"changed": {"fields": ["Menu item description"]}}]',
                                 8,
                                 1,
                                 '2022-11-21 14:12:38.406458'
                             );


-- Table: django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTO_INCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'restaurant',
                                    'booking'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    8,
                                    'restaurant',
                                    'menu'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    9,
                                    'authtoken',
                                    'token'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    10,
                                    'authtoken',
                                    'tokenproxy'
                                );


-- Table: django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTO_INCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2022-11-21 14:06:23.660312'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2022-11-21 14:06:23.666379'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'admin',
                                  '0001_initial',
                                  '2022-11-21 14:06:23.669881'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2022-11-21 14:06:23.674060'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2022-11-21 14:06:23.677051'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2022-11-21 14:06:23.685233'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2022-11-21 14:06:23.689528'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2022-11-21 14:06:23.693111'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2022-11-21 14:06:23.695616'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2022-11-21 14:06:23.699511'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2022-11-21 14:06:23.700330'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2022-11-21 14:06:23.704512'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2022-11-21 14:06:23.708514'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2022-11-21 14:06:23.712797'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2022-11-21 14:06:23.716728'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2022-11-21 14:06:23.720103'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'auth',
                                  '0012_alter_user_first_name_max_length',
                                  '2022-11-21 14:06:23.724284'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  18,
                                  'restaurant',
                                  '0001_initial',
                                  '2022-11-21 14:06:23.725868'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'sessions',
                                  '0001_initial',
                                  '2022-11-21 14:06:23.727280'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'restaurant',
                                  '0002_menu_menu_item_description',
                                  '2022-11-21 14:10:46.759340'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  21,
                                  'restaurant',
                                  '0003_remove_booking_comment_remove_booking_guest_number_and_more',
                                  '2022-12-07 13:19:01.018151'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  22,
                                  'authtoken',
                                  '0001_initial',
                                  '2024-04-12 05:49:09.763031'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  23,
                                  'authtoken',
                                  '0002_auto_20160226_1747',
                                  '2024-04-12 05:49:09.779056'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  24,
                                  'authtoken',
                                  '0003_tokenproxy',
                                  '2024-04-12 05:49:09.783028'
                              );


-- Table: django_session
CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);

INSERT INTO django_session (
                               session_key,
                               session_data,
                               expire_date
                           )
                           VALUES (
                               'm5tnw5ip4rmmpjkga4aur64i0x277ehd',
                               '.eJxVjDsOwjAQBe_iGln-rjElfc5g7XptEkC2lE-FuDtESgHtm5n3Egm3dUzbUuY0sbgILU6_G2F-lLYDvmO7dZl7W-eJ5K7Igy5y6Fye18P9OxhxGb81Wcs-oCrsMbDXroKiAA5qyKAiaSaODjHEs8pYIQMYbzhT9NUW48X7A-49ODY:1ox7XA:9nu4KmhBoxn7hboZjHou8LQOYSNkRDHMbEHz6En7EZI',
                               '2022-12-05 14:12:28.814262'
                           );


-- Table: restaurant_booking
CREATE TABLE IF NOT EXISTS restaurant_booking (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTO_INCREMENT,
    first_name       VARCHAR (200) NOT NULL,
    reservation_date DATE          NOT NULL,
    reservation_slot SMALLINT      NOT NULL
);

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   1,
                                   'Ajinkya',
                                   '2022-12-22',
                                   10
                               );

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   2,
                                   'Sudhir',
                                   '2022-12-22',
                                   9
                               );

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   4,
                                   'John Doe',
                                   '2022-12-07',
                                   10
                               );

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   5,
                                   'Jane Doe',
                                   '2022-12-07',
                                   13
                               );

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   6,
                                   'P K',
                                   '2022-12-12',
                                   11
                               );

INSERT INTO restaurant_booking (
                                   id,
                                   first_name,
                                   reservation_date,
                                   reservation_slot
                               )
                               VALUES (
                                   7,
                                   'U G',
                                   '2022-12-12',
                                   16
                               );


-- Table: restaurant_menu
CREATE TABLE IF NOT EXISTS restaurant_menu (
    id                    INTEGER       NOT NULL
                                        PRIMARY KEY AUTO_INCREMENT,
    name                  VARCHAR (200) NOT NULL,
    price                 INTEGER       NOT NULL,
    menu_item_description TEXT          NOT NULL
);

INSERT INTO restaurant_menu (
                                id,
                                name,
                                price,
                                menu_item_description
                            )
                            VALUES (
                                1,
                                'Greek salad',
                                12,
                                'Our famous Greek salad of crispy lettuce, peppers, olives, and our

Chicago-style feta cheese. Garnished with crispy onion and salty capers.'
                            );

INSERT INTO restaurant_menu (
                                id,
                                name,
                                price,
                                menu_item_description
                            )
                            VALUES (
                                2,
                                'Grilled fish',
                                9,
                                ''
                            );

INSERT INTO restaurant_menu (
                                id,
                                name,
                                price,
                                menu_item_description
                            )
                            VALUES (
                                3,
                                'Bruschetta',
                                11,
                                ''
                            );

INSERT INTO restaurant_menu (
                                id,
                                name,
                                price,
                                menu_item_description
                            )
                            VALUES (
                                4,
                                'Lemon dessert',
                                7,
                                ''
                            );


-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


