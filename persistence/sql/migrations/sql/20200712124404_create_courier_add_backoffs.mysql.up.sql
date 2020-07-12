ALTER TABLE `courier_messages` ADD COLUMN `send_deadline` DATETIME;
ALTER TABLE `courier_messages` ADD COLUMN `last_send_attempted_at` DATETIME;
ALTER TABLE `courier_messages` ADD COLUMN `next_send_interval` INTEGER;
UPDATE courier_messages SET status = 3 WHERE status = 2;