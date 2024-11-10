CREATE OR REPLACE FUNCTION sys_insert_task_priorities() RETURNS VOID AS
$$
BEGIN
    INSERT INTO task_priorities (name, value, color_code) VALUES ('低', 0, '#75c997');
    INSERT INTO task_priorities (name, value, color_code) VALUES ('中', 1, '#fbc84c');
    INSERT INTO task_priorities (name, value, color_code) VALUES ('高', 2, '#f37070');
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION sys_insert_project_access_levels() RETURNS VOID AS
$$
BEGIN
    INSERT INTO project_access_levels (name, key)
    VALUES ('管理员', 'ADMIN');
    INSERT INTO project_access_levels (name, key)
    VALUES ('成员', 'MEMBER');
    INSERT INTO project_access_levels (name, key)
    VALUES ('项目经理', 'PROJECT_MANAGER');
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION sys_insert_task_status_categories() RETURNS VOID AS
$$
BEGIN
    INSERT INTO sys_task_status_categories (name, color_code, index, is_todo)
    VALUES ('待办', '#a9a9a9', 0, TRUE);
    INSERT INTO sys_task_status_categories (name, color_code, index, is_doing)
    VALUES ('进行中', '#70a6f3', 1, TRUE);
    INSERT INTO sys_task_status_categories (name, color_code, index, is_done)
    VALUES ('已完成', '#75c997', 2, TRUE);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION sys_insert_project_statuses() RETURNS VOID AS
$$
BEGIN
    INSERT INTO sys_project_statuses (name, color_code, icon, sort_order, is_default)
VALUES ('已取消', '#f37070', 'close-circle', 0, FALSE),
       ('已阻塞', '#cbc8a1', 'stop', 1, FALSE),
       ('暂停', '#cbc8a1', 'stop', 2, FALSE),
       ('提议', '#cbc8a1', 'clock-circle', 3, TRUE),
       ('计划中', '#cbc8a1', 'clock-circle', 4, FALSE),
       ('进行中', '#80ca79', 'clock-circle', 5, FALSE),
       ('已完成', '#80ca79', 'check-circle', 6, FALSE);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION sys_insert_project_healths() RETURNS VOID AS
$$
BEGIN
    INSERT INTO sys_project_healths (name, color_code, sort_order, is_default)
    VALUES ('未设置', '#a9a9a9', 0, TRUE);
    INSERT INTO sys_project_healths (name, color_code, sort_order, is_default)
    VALUES ('需要关注', '#fbc84c', 1, FALSE);
    INSERT INTO sys_project_healths (name, color_code, sort_order, is_default)
    VALUES ('有风险', '#f37070', 2, FALSE);
    INSERT INTO sys_project_healths (name, color_code, sort_order, is_default)
    VALUES ('良好', '#75c997', 3, FALSE);
END;
$$ LANGUAGE plpgsql;


SELECT sys_insert_task_priorities();
SELECT sys_insert_project_access_levels();
SELECT sys_insert_task_status_categories();
SELECT sys_insert_project_statuses();
SELECT sys_insert_project_healths();

DROP FUNCTION sys_insert_task_priorities();
DROP FUNCTION sys_insert_project_access_levels();
DROP FUNCTION sys_insert_task_status_categories();
DROP FUNCTION sys_insert_project_statuses();
DROP FUNCTION sys_insert_project_healths();

INSERT INTO timezones (name, abbrev, utc_offset)
SELECT name, abbrev, utc_offset
FROM pg_timezone_names;
