# EAXSDL

EAXSDL je Expert Advisor pro MetaTrader 4 (MQL4).  

## Soubory v repu
- `EAXSDL_v148.mq4` – aktuální verze (UTF-8)
- `EAXSDL_v147.mq4` – starší verze (historicky / kompatibilita)

## Požadavky
- MetaTrader 4 (MT4)
- MetaEditor (součást MT4)
- Základní znalost práce s EA (přidání na graf, povolení algo trading)

## Instalace a kompilace
1. Stáhni/zkopíruj soubor `EAXSDL_v148.mq4`.
2. V MT4 otevři **File → Open Data Folder**.
3. Jdi do `MQL4/Experts/` a vlož tam `EAXSDL_v148.mq4`.
4. Otevři soubor v **MetaEditoru** a klikni **Compile**.
5. Po úspěšné kompilaci se objeví `EAXSDL_v148.ex4`.

## Použití v MT4
1. Restartuj MT4 (nebo v Navigatoru klikni pravým → Refresh).
2. V **Navigator → Expert Advisors** najdi `EAXSDL_v148`.
3. Přetáhni EA na graf.
4. Zkontroluj:
   - nahoře je zapnuté **Algo Trading**
   - v nastavení EA máš povolené potřebné volby (např. DLL jen pokud EA vyžaduje)
5. Sleduj záložku **Experts / Journal** pro logy.

## Poznámky k vývoji
- `main` je chráněná větev – změny se dělají přes Pull Request (PR).
- Doporučení: dělej malé PR (1 logická změna), s jasným názvem a popisem.

