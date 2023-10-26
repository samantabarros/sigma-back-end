/*
  Warnings:

  - You are about to drop the `matriculas` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "matriculas" DROP CONSTRAINT "matriculas_id_aluno_fkey";

-- DropForeignKey
ALTER TABLE "matriculas" DROP CONSTRAINT "matriculas_id_modulo_fkey";

-- DropTable
DROP TABLE "matriculas";

-- CreateTable
CREATE TABLE "alunos_modulos" (
    "id" TEXT NOT NULL,
    "nota1" DOUBLE PRECISION NOT NULL,
    "nota2" DOUBLE PRECISION NOT NULL,
    "nota3" DOUBLE PRECISION NOT NULL,
    "id_aluno" TEXT NOT NULL,
    "id_modulo" TEXT NOT NULL,

    CONSTRAINT "alunos_modulos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "alunos_modulos" ADD CONSTRAINT "alunos_modulos_id_aluno_fkey" FOREIGN KEY ("id_aluno") REFERENCES "alunos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "alunos_modulos" ADD CONSTRAINT "alunos_modulos_id_modulo_fkey" FOREIGN KEY ("id_modulo") REFERENCES "modulos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
