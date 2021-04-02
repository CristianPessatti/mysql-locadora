USE locadora;

SELECT * FROM filmes;

UPDATE filmes SET fil_titulo = UPPER(fil_titulo);

# TAMBEM VOU REMOVER O "FILME" DEPOIS
UPDATE filmes SET fil_titulo = REPLACE(fil_titulo, ' -FILME', '');