/*
  Warnings:

  - Added the required column `genreID` to the `Book` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memberID` to the `Book` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Book" ADD COLUMN     "genreID" TEXT NOT NULL,
ADD COLUMN     "memberID" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_genreID_fkey" FOREIGN KEY ("genreID") REFERENCES "Genre"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_memberID_fkey" FOREIGN KEY ("memberID") REFERENCES "Member"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
