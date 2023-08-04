/*
  Warnings:

  - Added the required column `publisherId` to the `games` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "games" ADD COLUMN     "publisherId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "games" ADD CONSTRAINT "games_publisherId_fkey" FOREIGN KEY ("publisherId") REFERENCES "publishers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
