-- CreateTable
CREATE TABLE "games_to_platforms" (
    "id" SERIAL NOT NULL,
    "game_id" INTEGER NOT NULL,
    "platform_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "games_to_platforms_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "games_to_platforms" ADD CONSTRAINT "games_to_platforms_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "games"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "games_to_platforms" ADD CONSTRAINT "games_to_platforms_platform_id_fkey" FOREIGN KEY ("platform_id") REFERENCES "platforms"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
