# Lorsqu'un chunk devient trop long, ou lorsqu'il ne doit être exécuté qu'une seule fois. Il est intéressant de se poser la question de savoir si le code présent dans ce chunk ne doit pas être placé dans un script R.
# Par exemple lorsque vous devez importer des données brutes, puis les modifiers et sauver une version  avec les variables bien encodées, cette succession d'étape ne doit être réalisé qu'une seule fois. 

example <- tibble::tribble(
  ~x, ~y,
   1,  3,
   2,  4
)

data.io::write(example, file = "data/example_data.rds", type = "rds", compress = "xz")
