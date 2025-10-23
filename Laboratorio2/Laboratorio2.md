# Trabajo Práctico de Laboratorio Nº2 - AO Real: Errores.
## OBJETIVOS
Introducir al estudiante en el diseño, armado, medición y análisis de circuitos
amplificadores lineales, teniendo en cuenta las fuentes de error del AO real, y como se
relacionan con las condiciones de entorno del circuito.  
## DESARROLLO
CIRCUITO I: El circuito sumador siguiente debe ser diseñado para las siguientes condiciones de contorno:  

- Amplificador Operacional LM741 o LM324
- Alimentación Vcc = 10V, Vss = -10V
- Ganancia en banda media A=Vo/V1 y A=Vo/V2 debe ser igual a 30 veces.
- Zi del amplificador no puede alterar o cargar la fuente de señal, es decir, Ri << Zi1 y
Zi2. (al menos 10 veces)
- Usar Resistencias <=1MΩ  
Las fuentes V1 y V2 deben considerarse en las condiciones 1.A y 1.B  

PARÁMETROS / RELACIONES A ANALIZAR:  
ANALÍTICO:  
1.1. Vo = f(V1,V2)
1.2. Errores DC
1.3. Errores AC: Ancho de Banda Plena Potencia fHP (10Vpap)
1.4. Errores AC: Ancho de banda de Pequeña Señal fH
1.5. Errores AC: Tabla de Error Vectorial Normalizado  
MEDICIÓN - SIMULACIÓN:  
1.6 Gráfico Entrada/Salida: Vo=f(V1) Vss < V1 < Vcc
1.7 Errores DC
1.8 Errores AC: Medicion del Slew Rate
1.9 Errores AC: Diagrama BODE