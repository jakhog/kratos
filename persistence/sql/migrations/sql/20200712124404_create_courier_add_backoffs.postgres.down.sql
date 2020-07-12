ALTER TABLE "courier_messages" DROP COLUMN "send_deadline";
ALTER TABLE "courier_messages" DROP COLUMN "last_send_attempted_at";
ALTER TABLE "courier_messages" DROP COLUMN "next_send_interval";
UPDATE courier_messages SET status = 1 WHERE status = 2;
UPDATE courier_messages SET status = 2 WHERE status = 3;
UPDATE courier_messages SET status = 2 WHERE status = 4;