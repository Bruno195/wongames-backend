-- DropIndex
DROP INDEX "games_to_categories_game_id_category_id_key";

-- CreateTable
CREATE TABLE "games_to_developers" (
    "id" SERIAL NOT NULL,
    "game_id" INTEGER NOT NULL,
    "developer_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "games_to_developers_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "games_to_developers" ADD CONSTRAINT "games_to_developers_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "games"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "games_to_developers" ADD CONSTRAINT "games_to_developers_developer_id_fkey" FOREIGN KEY ("developer_id") REFERENCES "developers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
