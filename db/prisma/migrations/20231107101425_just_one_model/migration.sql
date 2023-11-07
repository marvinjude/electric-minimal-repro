/*
  Warnings:

  - You are about to drop the `companies` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `deals` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `email_receipts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `emails` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `favourites` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `files` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `invitees` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `meetings` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `people` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tags` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tasks` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `users` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `views` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `workspaces` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_companyId_fkey";

-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_dealId_fkey";

-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_peopleId_fkey";

-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_userId_fkey";

-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "companies" DROP CONSTRAINT "companies_createdById_fkey";

-- DropForeignKey
ALTER TABLE "companies" DROP CONSTRAINT "companies_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "deals" DROP CONSTRAINT "deals_companyId_fkey";

-- DropForeignKey
ALTER TABLE "deals" DROP CONSTRAINT "deals_mainContactId_fkey";

-- DropForeignKey
ALTER TABLE "deals" DROP CONSTRAINT "deals_ownerId_fkey";

-- DropForeignKey
ALTER TABLE "deals" DROP CONSTRAINT "deals_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "email_receipts" DROP CONSTRAINT "email_receipts_emailId_fkey";

-- DropForeignKey
ALTER TABLE "email_receipts" DROP CONSTRAINT "email_receipts_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "emails" DROP CONSTRAINT "emails_senderId_fkey";

-- DropForeignKey
ALTER TABLE "emails" DROP CONSTRAINT "emails_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "favourites" DROP CONSTRAINT "favourites_viewId_fkey";

-- DropForeignKey
ALTER TABLE "favourites" DROP CONSTRAINT "favourites_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "files" DROP CONSTRAINT "files_activityId_fkey";

-- DropForeignKey
ALTER TABLE "files" DROP CONSTRAINT "files_createdById_fkey";

-- DropForeignKey
ALTER TABLE "files" DROP CONSTRAINT "files_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "invitees" DROP CONSTRAINT "invitees_meetingId_fkey";

-- DropForeignKey
ALTER TABLE "invitees" DROP CONSTRAINT "invitees_userId_fkey";

-- DropForeignKey
ALTER TABLE "invitees" DROP CONSTRAINT "invitees_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "meetings" DROP CONSTRAINT "meetings_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "people" DROP CONSTRAINT "people_companyId_fkey";

-- DropForeignKey
ALTER TABLE "people" DROP CONSTRAINT "people_createdById_fkey";

-- DropForeignKey
ALTER TABLE "people" DROP CONSTRAINT "people_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "tags" DROP CONSTRAINT "tags_createdById_fkey";

-- DropForeignKey
ALTER TABLE "tags" DROP CONSTRAINT "tags_dealId_fkey";

-- DropForeignKey
ALTER TABLE "tags" DROP CONSTRAINT "tags_peopleId_fkey";

-- DropForeignKey
ALTER TABLE "tags" DROP CONSTRAINT "tags_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_companyId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_createdById_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_dealId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "views" DROP CONSTRAINT "views_ownerId_fkey";

-- DropForeignKey
ALTER TABLE "views" DROP CONSTRAINT "views_workspaceId_fkey";

-- DropTable
DROP TABLE "companies";

-- DropTable
DROP TABLE "deals";

-- DropTable
DROP TABLE "email_receipts";

-- DropTable
DROP TABLE "emails";

-- DropTable
DROP TABLE "favourites";

-- DropTable
DROP TABLE "files";

-- DropTable
DROP TABLE "invitees";

-- DropTable
DROP TABLE "meetings";

-- DropTable
DROP TABLE "people";

-- DropTable
DROP TABLE "tags";

-- DropTable
DROP TABLE "tasks";

-- DropTable
DROP TABLE "users";

-- DropTable
DROP TABLE "views";

-- DropTable
DROP TABLE "workspaces";

-- DropEnum
DROP TYPE "ActivityType";

-- DropEnum
DROP TYPE "ListType";
