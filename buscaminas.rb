filas=10
columnas=10
bombas=5

def crear_tablero(filas, columnas, bombas)
        tablero=Array.new(filas)
        for i in (0..filas-1) do
            tablero[i]=Array.new(columnas,' ')
        end
        
        crear_bombas(filas,columnas,bombas)
        
        return tablero
end

def crear_bombas(filas, columnas, bombas)
    
    for z in (1..bombas) do
        posFila= rand(0..filas-1)
        posColum= rand(0..columnas-1)
        tablero[posFila][posColum]='O'
    end
return tablero
end


def imprimir_tablero(filas,columnas,bombas)
   z = crear_tablero(filas, columnas, bombas)
    
   for x in (0..filas-1) do
        print z[x]
        puts ""
    end
end

imprimir_tablero(filas,columnas,bombas)
