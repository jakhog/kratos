ALTER TABLE "courier_messages" ADD COLUMN "send_deadline" timestamp;COMMIT TRANSACTION;BEGIN TRANSACTION;
ALTER TABLE "courier_messages" ADD COLUMN "last_send_attempted_at" timestamp;COMMIT TRANSACTION;BEGIN TRANSACTION;
ALTER TABLE "courier_messages" ADD COLUMN "next_send_interval" integer;COMMIT TRANSACTION;BEGIN TRANSACTION;
UPDATE courier_messages SET status = 3 WHERE status = 2;