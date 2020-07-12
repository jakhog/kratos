ALTER TABLE "courier_messages" RENAME TO "_courier_messages_tmp";
CREATE TABLE "courier_messages" (
"id" TEXT PRIMARY KEY,
"type" INTEGER NOT NULL,
"status" INTEGER NOT NULL,
"body" TEXT NOT NULL,
"subject" TEXT NOT NULL,
"recipient" TEXT NOT NULL,
"created_at" DATETIME NOT NULL,
"updated_at" DATETIME NOT NULL,
"last_send_attempted_at" DATETIME,
"next_send_interval" INTEGER
);
INSERT INTO "courier_messages" (id, type, status, body, subject, recipient, created_at, updated_at, last_send_attempted_at, next_send_interval) SELECT id, type, status, body, subject, recipient, created_at, updated_at, last_send_attempted_at, next_send_interval FROM "_courier_messages_tmp";
DROP TABLE "_courier_messages_tmp";
ALTER TABLE "courier_messages" RENAME TO "_courier_messages_tmp";
CREATE TABLE "courier_messages" (
"id" TEXT PRIMARY KEY,
"type" INTEGER NOT NULL,
"status" INTEGER NOT NULL,
"body" TEXT NOT NULL,
"subject" TEXT NOT NULL,
"recipient" TEXT NOT NULL,
"created_at" DATETIME NOT NULL,
"updated_at" DATETIME NOT NULL,
"next_send_interval" INTEGER
);
INSERT INTO "courier_messages" (id, type, status, body, subject, recipient, created_at, updated_at, next_send_interval) SELECT id, type, status, body, subject, recipient, created_at, updated_at, next_send_interval FROM "_courier_messages_tmp";
DROP TABLE "_courier_messages_tmp";
ALTER TABLE "courier_messages" RENAME TO "_courier_messages_tmp";
CREATE TABLE "courier_messages" (
"id" TEXT PRIMARY KEY,
"type" INTEGER NOT NULL,
"status" INTEGER NOT NULL,
"body" TEXT NOT NULL,
"subject" TEXT NOT NULL,
"recipient" TEXT NOT NULL,
"created_at" DATETIME NOT NULL,
"updated_at" DATETIME NOT NULL
);
INSERT INTO "courier_messages" (id, type, status, body, subject, recipient, created_at, updated_at) SELECT id, type, status, body, subject, recipient, created_at, updated_at FROM "_courier_messages_tmp";
DROP TABLE "_courier_messages_tmp";
UPDATE courier_messages SET status = 1 WHERE status = 2;
UPDATE courier_messages SET status = 2 WHERE status = 3;
UPDATE courier_messages SET status = 2 WHERE status = 4;