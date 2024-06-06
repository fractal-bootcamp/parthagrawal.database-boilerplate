-- CreateTable
CREATE TABLE "BookGenres" (
    "id" TEXT NOT NULL,
    "bookID" TEXT NOT NULL,
    "genreID" TEXT NOT NULL,

    CONSTRAINT "BookGenres_pkey" PRIMARY KEY ("id")
);
