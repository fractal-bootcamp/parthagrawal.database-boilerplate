/*
  Warnings:

  - You are about to drop the column `authorID` on the `Book` table. All the data in the column will be lost.
  - You are about to drop the column `genreID` on the `Book` table. All the data in the column will be lost.
  - You are about to drop the column `memberID` on the `Book` table. All the data in the column will be lost.
  - Added the required column `authorId` to the `Book` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memberId` to the `Book` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Book" DROP CONSTRAINT "Book_authorID_fkey";

-- DropForeignKey
ALTER TABLE "Book" DROP CONSTRAINT "Book_memberID_fkey";

-- AlterTable
ALTER TABLE "Book" DROP COLUMN "authorID",
DROP COLUMN "genreID",
DROP COLUMN "memberID",
ADD COLUMN     "authorId" TEXT NOT NULL,
ADD COLUMN     "memberId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "Author"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_memberId_fkey" FOREIGN KEY ("memberId") REFERENCES "Member"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
