println("Hola mundo!")

# Creamos una matriz de 3 x 2
mat = [     1 2
            3 4
            5 6]

# Obtenemos el orden de una matriz
size(mat)
size(mat,1)
size(mat,2)

# Elemento de la fila 1 y columna 2
mat[1,2]

# Llamamos al paquete statistics para usar mean, std, etc
using Statistics

# Calculamos la media de todos los elementos
mean(mat)

# Calculamos la media por columnas
mean(mat; dims= 1)

# Calculamos la media por filas
mean(mat; dims= 2)


# Dataset Anscombe
mat2 = [ 10.0	8.04	10.0	9.14	10.0	7.46	8.0	6.58
        8.0	6.95	8.0	8.14	8.0	6.77	8.0	5.76
        13.0	7.58	13.0	8.74	13.0	12.74	8.0	7.71
        9.0	8.81	9.0	8.77	9.0	7.11	8.0	8.84
        11.0	8.33	11.0	9.26	11.0	7.81	8.0	8.47
        14.0	9.96	14.0	8.10	14.0	8.84	8.0	7.04
        6.0	7.24	6.0	6.13	6.0	6.08	8.0	5.25
        4.0	4.26	4.0	3.10	4.0	5.39	19.0	12.50
        12.0	10.84	12.0	9.13	12.0	8.15	8.0	5.56
        7.0	4.82	7.0	7.26	7.0	6.42	8.0	7.91
        5.0	5.68	5.0	4.74	5.0	5.73	8.0	6.89 ]

# Calculamos la media de cada columna
mean(mat2,dims = 1)

# Calculamos la desviacion standar de cada columna
std(mat2, dims = 1)

# Determinamos la matriz de correlacion
cor(mat2)

# Cargamos Pkg para instalar Plots
using Pkg
Pkg.add("Plots")

# Cargamos Plots para realizar graficos
using Plots

scatter(mat2[:,1], mat2[:,2]; legend = false)

plot( scatter(mat2[:,1], mat2[:,2]; legend = false),
scatter(mat2[:,3], mat2[:,4]; legend = false),
scatter(mat2[:,5], mat2[:,6]; legend = false),
scatter(mat2[:,7], mat2[:,8]; legend = false)  )


