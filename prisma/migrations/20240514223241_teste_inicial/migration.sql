-- CreateTable
CREATE TABLE "marcas" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(60) NOT NULL,
    "cidade" VARCHAR(40) NOT NULL,

    CONSTRAINT "marcas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "vinhos" (
    "id" SERIAL NOT NULL,
    "tipo" VARCHAR(30) NOT NULL,
    "preco" DECIMAL(9,2) NOT NULL,
    "quant" SMALLINT NOT NULL,
    "teor" SMALLINT NOT NULL,
    "marcaId" INTEGER NOT NULL,

    CONSTRAINT "vinhos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "vinhos" ADD CONSTRAINT "vinhos_marcaId_fkey" FOREIGN KEY ("marcaId") REFERENCES "marcas"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
