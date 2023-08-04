-- CreateTable
CREATE TABLE "games_to_categories" (
    "id" SERIAL NOT NULL,
    "gameId" INTEGER NOT NULL,
    "categoryId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "games_to_categories_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "games_to_categories_gameId_categoryId_key" ON "games_to_categories"("gameId", "categoryId");

-- AddForeignKey
ALTER TABLE "games_to_categories" ADD CONSTRAINT "games_to_categories_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "games_to_categories" ADD CONSTRAINT "games_to_categories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
