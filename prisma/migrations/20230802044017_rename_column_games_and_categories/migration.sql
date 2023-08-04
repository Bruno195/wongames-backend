/*
  Warnings:

  - You are about to drop the column `categoryId` on the `games_to_categories` table. All the data in the column will be lost.
  - You are about to drop the column `gameId` on the `games_to_categories` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[game_id,category_id]` on the table `games_to_categories` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `category_id` to the `games_to_categories` table without a default value. This is not possible if the table is not empty.
  - Added the required column `game_id` to the `games_to_categories` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "games_to_categories" DROP CONSTRAINT "games_to_categories_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "games_to_categories" DROP CONSTRAINT "games_to_categories_gameId_fkey";

-- DropIndex
DROP INDEX "games_to_categories_gameId_categoryId_key";

-- AlterTable
ALTER TABLE "games_to_categories" DROP COLUMN "categoryId",
DROP COLUMN "gameId",
ADD COLUMN     "category_id" INTEGER NOT NULL,
ADD COLUMN     "game_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "games_to_categories_game_id_category_id_key" ON "games_to_categories"("game_id", "category_id");

-- AddForeignKey
ALTER TABLE "games_to_categories" ADD CONSTRAINT "games_to_categories_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "games"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "games_to_categories" ADD CONSTRAINT "games_to_categories_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
