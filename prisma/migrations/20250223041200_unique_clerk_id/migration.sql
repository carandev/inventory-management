/*
  Warnings:

  - You are about to drop the column `clerkId` on the `SystemUser` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[clerk_id]` on the table `SystemUser` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "SystemUser" DROP COLUMN "clerkId",
ADD COLUMN     "clerk_id" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "SystemUser_clerk_id_key" ON "SystemUser"("clerk_id");
