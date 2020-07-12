ALTER TABLE "courier_messages" ADD COLUMN "send_deadline" timestamp;
ALTER TABLE "courier_messages" ADD COLUMN "last_send_attempted_at" timestamp;
ALTER TABLE "courier_messages" ADD COLUMN "next_send_interval" integer;
UPDATE courier_messages SET status = 3 WHERE status = 2;