/*
  Warnings:

  - You are about to drop the column `bookID` on the `BookGenres` table. All the data in the column will be lost.
  - You are about to drop the column `genreID` on the `BookGenres` table. All the data in the column will be lost.
  - Added the required column `bookId` to the `BookGenres` table without a default value. This is not possible if the table is not empty.
  - Added the required column `genreId` to the `BookGenres` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Book" DROP CONSTRAINT "Book_genreID_fkey";

-- AlterTable
ALTER TABLE "Book" ADD COLUMN     "genreId" TEXT;

-- AlterTable
ALTER TABLE "BookGenres" DROP COLUMN "bookID",
DROP COLUMN "genreID",
ADD COLUMN     "bookId" TEXT NOT NULL,
ADD COLUMN     "genreId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_genreId_fkey" FOREIGN KEY ("genreId") REFERENCES "Genre"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BookGenres" ADD CONSTRAINT "BookGenres_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "Book"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BookGenres" ADD CONSTRAINT "BookGenres_genreId_fkey" FOREIGN KEY ("genreId") REFERENCES "Genre"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
