ALTER TABLE "courier_messages" DROP COLUMN "send_deadline";COMMIT TRANSACTION;BEGIN TRANSACTION;
ALTER TABLE "courier_messages" DROP COLUMN "last_send_attempted_at";COMMIT TRANSACTION;BEGIN TRANSACTION;
ALTER TABLE "courier_messages" DROP COLUMN "next_send_interval";COMMIT TRANSACTION;BEGIN TRANSACTION;
UPDATE courier_messages SET status = 1 WHERE status = 2;
UPDATE courier_messages SET status = 2 WHERE status = 3;
UPDATE courier_messages SET status = 2 WHERE status = 4;