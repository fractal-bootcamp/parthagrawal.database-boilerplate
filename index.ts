import { Book, PrismaClient } from "@prisma/client"
const prisma = new PrismaClient()

type CreateBookData = {
    name: string
    ISBN: string
    authorId: string
    memberId: string
}

// type CreateBookDataAndAuthorAndMember = {
//     name: string
//     ISBN: string
//     author: {
//         create: AuthorCreateData
//     },
//     member: {
//         create: MemberCreateData
//     }
// }


async function main() {
    console.log('Welcome to this script!')

    const allBooks = await prisma.book.findMany()
    console.log(allBooks)


    await prisma.book.create({
        data: {
            name: "Lord of the Rings",
            ISBN: "asdasdas",
            bookAuthor: {
                create: {
                    name: "jrrtolkien",
                    biography: "he lived a life."
                }
            },
            bookMember: {
                create: {
                    name: "John Williams",
                    email: "jiji@gmail.com",
                    address: "249 McKibbin St"
                }
            }
        },
    })

    console.log("middle")
    const allAuthors = await prisma.author.findMany()
    const allMembers = await prisma.member.findMany()

    console.log("books:" + allBooks)
    console.log("authors: " + allAuthors)
    console.log("members: " + allMembers)

    console.log("end of main")




}

main()