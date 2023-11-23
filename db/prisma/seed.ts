import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

/**
 * Seed all of the necessary data needed for the application to run.
 *
 * Data to seeed
 * - Standard Record Types
 */
async function main() {
  const allStandardRecordTypes = [
    {
      id: "653e31bc-6642-4f56-b120-1aca796ca66d",
      name: "Person",
      description: "Manage People",
      slug: "people",
    },
    {
      id: "48f4fa99-435d-4375-a219-fa292c5f170b",
      name: "Deal",
      description: "Manage Deals",
      slug: "deals",
    },
    {
      id: "4d8893d4-ef0a-4402-b544-be111790ac0f",
      name: "Company",
      description: "Manage Companies",
      slug: "companies",
    },
  ];

  for (const standardRecordType of allStandardRecordTypes) {
    const { id, name, description, slug } = standardRecordType;

    await prisma.user.upsert({
      where: { id },
      update: {},
      create: {
        id,
        name,
        slug,
        description,
      },
    });
  }
}
main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
