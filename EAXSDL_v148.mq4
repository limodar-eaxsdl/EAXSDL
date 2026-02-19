// ============================================================================================
// SEKCE 01 – HLAVIČKA & IDENTITA EA
// Účel: základní identifikace EA, vlastnosti, název
// ===========================================================================================


//+--------------------------------------------------+
//| Expert Advisor: EAXSDL_Learning                  |
//| BLOK 01.10 – Identifikace EA                     |
//| (dříve: úvodní hlavička EA)                      |
//| v148 - base144  - oprava IDDLE                   |
//+--------------------------------------------------+



// ===========================================================================================
// BLOCK REGISTRY – EAXSDL_Learning v133
// AUTORITATIVNÍ ZDROJ PRAVDY
// Zdroj: EAXSDL_Learning_v133.mq4
// ===========================================================================================

// SEKCE 01 – IDENTITA / DEFINICE
//---------------------------------
// 01.10 Identifikace EA
// 01.20 Názvy UI objektů

// SEKCE 02 – KONFIGURACE & KONSTANTY
//-------------------------------------
// 02.10 Runtime proměnné EA 
// 02.20  Konfigurace EA (INPUT + KONSTANTY)
// 02.30 Bezpečnostní filtry & debug
// 02.40 Magic numbers slotů
// 02.50 FSM – log helper (READ-ONLY)

// SEKCE 03 – DENNÍ RUNTIME & OCHRANY
//------------------------------------
// 03.10 Začátek obchodního dne
// 03.11 Init runtime stavu
// 03.12 Nový obchodní den

// 03.20 Výpočet denního P/L (kostra)
// 03.21 Denní P/L ochrana

// SEKCE 04 – OBCHODNÍ LOGIKA / ROZHODOVÁNÍ
//------------------------------------------
// 04.10 Základní obchodní povolení
// 04.11 Rozhodovací runtime stavy

// 04.20 Rozhodovací logika (Conditions OK)
// 04.21 MayConsider Buy / Sell

// 04.30 CanAttemptBuy
// 04.31 CanAttemptSell

// 04.40 Logování změn stavů
// 04.41 Aktualizace stavového textu UI

// SEKCE 05 – SLOTY (RUNTIME / PARAMETRY)
//----------------------------------------
// 05.10 Slot A – (parametry + runtime)
// 05.11 Slot A : INIT / RESET RUNTIME STAVU
// 05.20 Slot B – (parametry + runtime)
// 05.21 SLOT B : INIT / RESET RUNTIME STAVU


// 05.30 Detekce otevřené pozice Slot A/B
// 05.31 Synchronizace runtime stavu slotů
// 05.32 Detekce otevřených BUY / SELL pozic
// 05.33 Cancel PENDING orders Slot A / Slot B
// 05.40 SLOT FSM 
// 05.41 Reset SLOT FSM při změně SDL
// 05.42 Update SLOT FSM z runtime

// SEKCE 06 – SLOT ENTRY GATES
//-----------------------------
// 06.10 Entry Gate Slot A
// 06.20 Entry Gate Slot B

// SEKCE 07 – SLOT ENGINE (AKCE)
//-------------------------------
// 07.10 Slot Entry Orchestrator
// 07.11 Sloty při XS události

// 07.20 TryOpen Slot A (dummy)
// 07.30 TryOpen Slot B (dummy)

// 07.13 ENTRY GATE – globální BUY / SELL povolení
// 07.14 ENTRY GATE – slotové povolení (UseSlot A / B)
// 07.15 ENTRY GATE – finální povolení OrderSend

//KCE 08 – SDL (RB LOGIKA)
//-----------------------------
// 08.10 SDL1 Indicator inputs
// 08.11 Čtení SDL1 hodnoty z indikátoru
// 08.12 SDL READ & MERGE

// 08.20 Určení směru SDL
// 08.21 Update SDL1 runtime stavu
// 08.22 Update Active SDL Direction

// 08.30 RB UPDATE – směr / XS / Pending Entry

// 08.40 SDL COLOR ADAPTER (stub)
// 08.41 SDL DIRECTION ADAPTER (disabled)
// 08.42 Active SDL direction adapter

// SEKCE 09 – XS / PENDING
//--------------------------
// 09.10 XS runtime stav
// 09.11 Detekce uzavřené RB svíčky
// 09.12 XS podmínka (MERGED SDL)
// 09.13 XS Event Orchestrátor
// 09.14 Update XS event

// 09.20 Start Pending Entry (RB only)

// SEKCE 10 – TRIGGER & MA
//--------------------------
// 10.10 Základní definice směru a triggerů
// 10.11 Zdroj triggeru (SDL / MA)
// 10.20 XS událost (trigger)
// 10.60 Draw Pending Entry Arrow

// SEKCE 11 – UI (RENDER / EVENTY / TIMER)
//-----------------------------------------
// 11.10 OnInit

// 11.11 SELL button
// 11.12 BUY button
// 11.13 SELL event helper
// 11.14 BUY event helper
// 11.15 SDL selector S1 (event)
// 11.16 SDL / MA selector
// 11.17 Globální layout & barvy
// 11.18 Uložení konfigurace do CSV
// 11.19 Načtení konfigurace z CSV

// 11.20 Render celého UI panelu
// 11.21 Panel BG
// 11.22 Panel Title
// 11.23 Status text

// 11.24 UI: Toggle UseSlotA / UseSlotB – CREATE
// 11.26 UI: Toggle UseSlotA / UseSlotB – INIT STATE
// 11.27 UI: Toggle UseSlotA / UseSlotB – EVENT
// 11.28 UI: Slot A – BASE STATE (UseSlot)
// 11.29 UI: Slot B – BASE STATE (UseSlot)

// 11.30 COND label
// 11.31 COND_DIR IndicatorBox
// 11.32 XS IndicatorBox
// 11.33 SDL selector S1
// 11.34 SDL selector S2
// 11.35 SDL selector S3
// 11.36 MA selector M1
// 11.37 MA selector M2
// 11.38 MA selector M3

// 11.40 Panel BG – VisualOrdering
// 11.41 Title – VisualOrdering Controls
// 11.42 Market SELL
// 11.43 Market BUY
// 11.44 Pending SELL
// 11.45 Pending BUY
// 11.46 Cancel All Pending
// 11.47 Close Positions by Market


// 11.50 Update COND_DIR
// 11.55 Update XS

// 11.60 Slot A – LOTS edit
// 11.61 Slot A – LOTS
// 11.62 Slot A – SL / TP
// 11.63 Slot A – TS / BE
// 11.64 Slot B – LOTS
// 11.65 Slot B – SL / TP
// 11.66 Slot B – TS / BE

// 11.98 Timer UI
// 11.99 OnDeinit

// SEKCE 12 – ENTRY ENGINE/ ORCHESTRACE / TICK
//----------------------------------------------
// 12.10 Obchodní orchestrace 
// 12.20 ProcessPendingEntry_Tick
// 12.21 ProcessTradingLogic
// 12.60 STOP ENTRY from PENDING (Slot A)
// 12.61 STOP ENTRY from PENDING (Slot B)
// 12.70 MARKET ENTRY from PENDING (Slot A)
// 12.71 MARKET ENTRY from PENDING (Slot B)

// ==================================================



#property strict


// --------------------------------------------------
// BLOK 01.20 – Názvy UI objektů
// --------------------------------------------------

// --- HIT TYPE – Pending Entry (STOP vs SKIP) ---
enum ENUM_HIT_TYPE
{
   HIT_NONE = 0,
   HIT_STOP,
   HIT_SKIP
};


// --------------------------------------------------
// FSM – Runtime stav EA (FINÁLNÍ FSM)
// --------------------------------------------------
enum EA_FSM_State_t
{
   FSM_IDLE = 0,
   FSM_WAIT_XS,
   FSM_PENDING_CREATED,
   FSM_STOP_ACTIVE,
   FSM_ENTRY_DECISION,
   FSM_ENTRY_EXECUTION,
   FSM_ENTRY_CONSUMED
};

EA_FSM_State_t EA_FSM_State = FSM_IDLE;



#define PANEL_TEXT   "XSDL_Panel_Text"
#define BTN_SELL     "XSDL_BTN_SELL"
#define BTN_BUY      "XSDL_BTN_BUY"
#define STATUS_TEXT  "XSDL_STATUS_TEXT"
#define PANEL_BG     "UI_Panel_BG"
#define PANEL_TITLE  "UI_Panel_Title"
#define BTN_S1       "UI_BTN_S1"
#define BTN_S2       "UI_BTN_S2"
#define BTN_S3       "UI_BTN_S3"
#define BTN_M1       "UI_BTN_M1"
#define BTN_M2       "UI_BTN_M2"
#define BTN_M3       "UI_BTN_M3"
#define PANEL_TOGGLE "PANEL_TOGGLE"
#define COND_LABEL   "COND_LABEL"
#define COND_DIR     "COND_DIR"
#define COND_XS      "COND_XS"


// =========================================================================================
// SEKCE 02 – KONFIGURACE & KONSTANTY
// Účel: vstupní parametry, magic numbers, konstanty
// Pozn.: hodnoty se nemění za běhu EA
// =========================================================================================

// --------------------------------------------------
// BLOK 02.20 – Konfigurace EA (INPUT + KONSTANTY)
// --------------------------------------------------


// GLOBÁLNÍ ŘÍZENÍ EA
input string __EA_CONTROL__ = "===== GLOBÁLNÍ ŘÍZENÍ EA =====";

input int    MagicNumber     = 123456;

input bool   Inp_EA_Enable   = true;
input bool   Inp_AllowBuy    = true;
input bool   Inp_AllowSell   = true;

// OCHRANA DENNÍHO P/L
input string  ___DAILY_PL_____ = "===== OCHRANA DENNÍHO P/L =====";

input bool   UseDailyPLProtection  = true;
input double DailyPL_LossLimit     = -2000.0;
input bool   DailyPL_IncludeManual = true;

// VÝCHOZÍ LOGICKÝ STAV
input string  ___DEFAULT_STATE_____ = "===== VÝCHOZÍ LOGICKÝ STAV =====";

input int    Default_ActiveSDL = 1;
input int    Default_ActiveMA  = 0;

// SLOT A
input string  ___SLOT_A_____ = "===== SLOT A =====";

input bool   SlotA_Enable           = true;

input double SlotA_Lot              = 0.01;
input bool   SlotA_UseSL            = true;
input int    SlotA_SL_Points        = 1200;
input bool   SlotA_UseTP            = true;
input int    SlotA_TP_Points        = 1200;
input bool   SlotA_UseTS            = false;
input int    SlotA_TS_Points        = 100;
input int    SlotA_TS_StartFromBE   = 0;
input bool   SlotA_FirstXSOnly      = false;
input bool   SlotA_Notify           = true;

// SLOT B
input string  ___SLOT_B_____ = "===== SLOT B =====";

input bool   SlotB_Enable           = true;

input double SlotB_Lot              = 0.01;
input bool   SlotB_UseSL            = true;
input int    SlotB_SL_Points        = 1500;
input bool   SlotB_UseTP            = true;
input int    SlotB_TP_Points        = 3000;
input bool   SlotB_UseTS            = false;
input int    SlotB_TS_Points        = 100;
input int    SlotB_TS_StartFromBE   = 0;
input bool   SlotB_FirstXSOnly      = true;
input bool   SlotB_Notify           = true;

// --------------------------------------------------
// BLOK 02.40 – Magic numbers slotů
// --------------------------------------------------
input int    Magic_SlotA = 10001;
input int    Magic_SlotB = 10002;

// --------------------------------------------------
// BLOK 02.30 – Bezpečnostní filtry & debug
// --------------------------------------------------
input string  ___SAFETY_____ = "===== TECHNICKÉ / BEZPEČNOST =====";

input int    MaxSpread_Points = 30;
input bool   CheckFreeMargin  = true;
input bool   DebugPrint       = false;

// SDL / XS
input string  ___SDL_____ = "===== SDL PARAMETRY =====";

input int    Inp_SDL_OffsetTicks = 0;

input string Inp_SDL1_IndicatorName = "Slope Direction Line";
input int    Inp_SDL1_Period        = 14;
input int    Inp_SDL1_Method        = 2;
input int    Inp_SDL1_Price         = PRICE_CLOSE;

// MARKET continuation
input string  ___MARKET_____ = "===== MARKET CONTINUATION =====";

input int    Inp_MaxMarketOffset = 50;


// --------------------------------------------------
// BLOK 02.50 FSM – log helper (READ-ONLY)
// --------------------------------------------------
void LogFSM(const string where)
{
   if(!DebugPrint)
      return;

   Print(
      "FSM=", EA_FSM_State,
      " | where=", where,
      " | RB=", TimeToString(Time[1], TIME_MINUTES)
   );
}


// --------------------------------------------------
// BLOK 02.10 – Runtime proměnné EA
// --------------------------------------------------

bool EA_Enable_RT;
bool AllowBuy_RT;
bool AllowSell_RT;

bool AllowBuy  = true;
bool AllowSell = true;

bool UseSlotA  = true;
bool UseSlotB  = true;

bool ToggleOn = false;

// --- Aktivní výběry (UI přepínače) ---
int  ActiveSDL_RT;
int  ActiveMA_RT;


// –-- RUNTIME STAV SIGNÁLŮ / INDIKÁTORŮ ---
int    SDL_Direction_RT = 0;
bool   SDL_Direction_Ready_RT = false;

int    SDL1_Direction_RT = 0;
double SDL1_Value_Current = 0.0;
double SDL1_Value_Prev    = 0.0;

datetime PendingArrow_RB_Time = 0;

// --------------------------------------------------
// BLOK 09.10 – XS runtime stav
// --------------------------------------------------

bool     XS_Event_RT = false;
datetime LastBarTime_RT = 0;

// --- Pending Entry – runtime stav (vizualizace) ---
bool   PendingEntry_Active_RT = false;
int    PendingEntry_Dir_RT    = 0;
double PendingEntry_Price_RT = 0.0;
bool   PendingEntry_Hit_RT   = false;

ENUM_HIT_TYPE PendingEntry_HitType_RT = HIT_NONE;

bool   XS_Consumed_RT = false;

// --------------------------------------------------
// BLOK 04.11 – Rozhodovací runtime stavy
// --------------------------------------------------

bool LastBuyState  = false;
bool LastSellState = false;

// -------------------------------------------------
// BLOK 04.40 – Logování změn stavů
// -------------------------------------------------

bool LastCanConsiderBuy  = false;
bool LastCanConsiderSell = false;


// --- Denní řízení (SEKCE 03)---
bool DailyPL_Locked_RT;
datetime TradingDayStart_RT;

string CONFIG_FILE = "EAXSDL_Learning_config.csv";


// ===========================================================================================
// SEKCE 05 – SLOTY (RUNTIME / PARAMETRY)
// ===========================================================================================

// --------------------------------------------------
// BLOK 05.10 – Slot A (PARAMETRY + RUNTIME)
// --------------------------------------------------

// --- EXISTUJÍCÍ RUNTIME PROMĚNNÉ (BEZE ZMĚNY) ---
bool SlotA_Open_RT;
bool SlotA_UsedInThisSDL_RT;

double SlotA_Lots;
double SlotA_SL;
double SlotA_TP;
double SlotA_TS;
double SlotA_BE;

bool SlotA_SL_Enable_RT;
bool SlotA_TP_Enable_RT;
bool SlotA_TSBE_Enable_RT;



// --------------------------------------------------
// BLOK 05.11 – Slot A : INIT / RESET RUNTIME STAVU
// --------------------------------------------------
void InitSlotA_Runtime()
{
   SlotA_Open_RT          = false;
   SlotA_UsedInThisSDL_RT = false;

   SlotA_State            = SLOT_IDLE;

   SlotA_SL_Enable_RT     = true;
   SlotA_TP_Enable_RT     = true;
   SlotA_TSBE_Enable_RT   = true;
}



// --------------------------------------------------
// BLOK 05.20 – Slot B (PARAMETRY + RUNTIME)
// --------------------------------------------------

// --- EXISTUJÍCÍ RUNTIME PROMĚNNÉ (BEZE ZMĚNY) ---
bool SlotB_Open_RT;
bool SlotB_UsedInThisSDL_RT;

double SlotB_Lots;
double SlotB_SL;
double SlotB_TP;
double SlotB_TS;
double SlotB_BE;

bool SlotB_SL_Enable_RT;
bool SlotB_TP_Enable_RT;
bool SlotB_TSBE_Enable_RT;




// --------------------------------------------------
// BLOK 05.21 – Slot B : INIT / RESET RUNTIME STAVU
// --------------------------------------------------
void InitSlotB_Runtime()
{
   SlotB_Open_RT          = false;
   SlotB_UsedInThisSDL_RT = false;

   SlotB_State            = SLOT_IDLE;

   SlotB_SL_Enable_RT     = true;
   SlotB_TP_Enable_RT     = true;
   SlotB_TSBE_Enable_RT   = true;
}


// === PROTOTYPY FUNKCÍ (nutné pro MQL4) ===

void LoadConfigFromCSV();
void SaveConfigToCSV();

// ------------------------------------------------
// BLOK 04.41 – Aktualizace stavového textu UI
// -----------------------------------------------

void UpdateStatusText()
{

   string sellState = AllowSell ? "  SELL POVOLEN  " : "  SELL ZAKÁZÁN  ";
   string buyState  = AllowBuy  ? "  BUY POVOLEN  "  : "  BUY ZAKÁZÁN  ";
   

   string text = "STAV EA\n"
               + sellState + "\n"
               + buyState;
               

   ObjectSetString(0, STATUS_TEXT, OBJPROP_TEXT, text);
}


// ==========================================================================================================
// SEKCE 03 – DENNÍ RUNTIME & OCHRANY
// Účel: řízení obchodního dne, denní P/L, denní lock
// ==========================================================================================================


// -------------------------------------------------
// BLOK 03.10 – Začátek obchodního dne
// --------------------------------------------------

datetime GetTradingDayStart()
{
   datetime now = TimeCurrent();
   return (datetime)(now - (now % 86400));
}


// -------------------------------------------------
// BLOK 03.11 – Init runtime stavu
// --------------------------------------------------

void InitRuntimeState()
{
   EA_Enable_RT   = Inp_EA_Enable;
   AllowBuy_RT   = Inp_AllowBuy;
   AllowSell_RT  = Inp_AllowSell;

   ActiveSDL_RT  = Default_ActiveSDL;
   ActiveMA_RT   = Default_ActiveMA;

   SlotA_Open_RT = false;
   SlotB_Open_RT = false;

   SlotA_UsedInThisSDL_RT = false;
   SlotB_UsedInThisSDL_RT = false;

   DailyPL_Locked_RT = false;
   TradingDayStart_RT = GetTradingDayStart();
}


// --------------------------------------------------
// BLOK 03.20 – Výpočet denního P/L (kostra)
// --------------------------------------------------

double CalculateDailyPL()
{
   double pl = 0.0;

   // ZDE:
   // - projít historii orderů od TradingDayStart_RT
   // - zahrnout:
   //    - Magic_SlotA, Magic_SlotB
   //    - manuální obchody, pokud Inp_DailyPL_IncludeManual == true

   return pl;
}


// ---------------------------------------------------
// BLOK 03.21 – Denní P/L ochrana
// ---------------------------------------------------

void CheckDailyPLProtection()
{
   if(!UseDailyPLProtection)
      return;

   double dailyPL = CalculateDailyPL();

   if(dailyPL <= DailyPL_LossLimit)
   {
      DailyPL_Locked_RT = true;

      // ZDE POZDĚJI:
      // - zavřít Slot A a Slot B pozice
      // - uložit stav do CSV
   }
}


// -------------------------------------------------
// BLOK 03.12 – Nový obchodní den
// --------------------------------------------------

void CheckNewTradingDay()
{
   datetime dayStart = GetTradingDayStart();

   if(dayStart != TradingDayStart_RT)
   {
      TradingDayStart_RT = dayStart;

      DailyPL_Locked_RT = false;

      SlotA_UsedInThisSDL_RT = false;
      SlotB_UsedInThisSDL_RT = false;

      // ZDE:
      // SaveRuntimeToCSV();
   }
}


// =============================================================================================
// SEKCE 05 – SLOTY (RUNTIME / PARAMETRY)
// Účel: zjištění reálného stavu pozic v trhu
// ============================================================================================


// --------------------------------------------------
// BLOK 05.30 – Detekce otevřené pozice Slot A/B
// --------------------------------------------------

bool IsSlotAOpen()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() == Symbol() &&
         OrderMagicNumber() == Magic_SlotA)
      {
         return true;
      }
   }
   return false;
}

bool IsSlotBOpen()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() == Symbol() &&
         OrderMagicNumber() == Magic_SlotB)
      {
         return true;
      }
   }
   return false;
}


// --------------------------------------------------
// BLOK 05.31 – Synchronizace runtime stavu slotů
// --------------------------------------------------
void SyncSlotRuntimeState()
{
   bool aOpen = IsSlotAOpen();
   bool bOpen = IsSlotBOpen();

   // SLOT A
   SlotA_Open_RT = aOpen;
   if(aOpen)
      SlotA_State = SLOT_POSITION_OPEN;
   else if(SlotA_State == SLOT_POSITION_OPEN)
      SlotA_State = SLOT_IDLE;

   // SLOT B
   SlotB_Open_RT = bOpen;
   if(bOpen)
      SlotB_State = SLOT_POSITION_OPEN;
   else if(SlotB_State == SLOT_POSITION_OPEN)
      SlotB_State = SLOT_IDLE;
}


// --------------------------------------------------
// BLOK 05.33 – Cancel PENDING orders Slot A / Slot B
// Účel:
// - technické zrušení čekajících příkazů slotu
// - používá Magic number slotu
// - NEMĚNÍ FSM stav (řeší volající)
// --------------------------------------------------

// --------------------------------------------------
// Cancel pending Slot A
// --------------------------------------------------
void CancelSlotAPending()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() != Symbol())
         continue;

      if(OrderMagicNumber() != Magic_SlotA)
         continue;

      int type = OrderType();

      if(type == OP_BUYSTOP || type == OP_SELLSTOP ||
         type == OP_BUYLIMIT || type == OP_SELLLIMIT)
      {
         bool res = OrderDelete(OrderTicket());

         if(DebugPrint)
         {
            if(res)
               Print("SLOT A: PENDING CANCELED | ticket=", OrderTicket());
            else
               Print("SLOT A: PENDING CANCEL FAILED | ticket=", OrderTicket(),
                     " err=", GetLastError());
         }
      }
   }
}

// --------------------------------------------------
// Cancel pending Slot B
// --------------------------------------------------
void CancelSlotBPending()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() != Symbol())
         continue;

      if(OrderMagicNumber() != Magic_SlotB)
         continue;

      int type = OrderType();

      if(type == OP_BUYSTOP || type == OP_SELLSTOP ||
         type == OP_BUYLIMIT || type == OP_SELLLIMIT)
      {
         bool res = OrderDelete(OrderTicket());

         if(DebugPrint)
         {
            if(res)
               Print("SLOT B: PENDING CANCELED | ticket=", OrderTicket());
            else
               Print("SLOT B: PENDING CANCEL FAILED | ticket=", OrderTicket(),
                     " err=", GetLastError());
         }
      }
   }
}


// --------------------------------------------------
// BLOK 05.42 – Update SLOT FSM z runtime
// Účel:
// - převádí technickou realitu (Orders) do SLOT FSM
// - NEřeší strategii (SDL / XS / FirstXSOnly)
// --------------------------------------------------

void UpdateSlotFSM_FromRuntime()
{
   // -------- SLOT A --------
   if(SlotA_Open_RT)
   {
      // pozice skutečně otevřená
      SlotA_State = SLOT_POSITION_OPEN;
   }
   else
   {
      // pokud jsme poslali order, ale pozice není otevřená,
      // zůstáváme ve SLOT_ORDER_SENT (čekáme)
      if(SlotA_State == SLOT_POSITION_OPEN)
         SlotA_State = SLOT_IDLE;
   }

   // -------- SLOT B --------
   if(SlotB_Open_RT)
   {
      SlotB_State = SLOT_POSITION_OPEN;
   }
   else
   {
      if(SlotB_State == SLOT_POSITION_OPEN)
         SlotB_State = SLOT_IDLE;
   }
}


// --------------------------------------------------
// BLOK 05.40 – SLOT FSM (technický, jednoduchý)
// Účel:
// - hlídá technický stav slotu (max 1 pozice)
// - NEřeší strategii (SDL / XS / FirstXSOnly)
// --------------------------------------------------

enum ENUM_SLOT_STATE
{
   SLOT_IDLE = 0,          // slot je volný
   SLOT_ORDER_SENT,        // OrderSend proběhl (čekáme na pozici)
   SLOT_POSITION_OPEN      // pozice otevřená
};

// runtime stavy slotů
ENUM_SLOT_STATE SlotA_State;
ENUM_SLOT_STATE SlotB_State;


// --------------------------------------------------
// BLOK 05.41 – Reset SLOT FSM při změně SDL
// --------------------------------------------------

void ResetSlotFSM_OnNewSDL()
{
   SlotA_State = SLOT_IDLE;
   SlotB_State = SLOT_IDLE;

   SlotA_UsedInThisSDL_RT = false;
   SlotB_UsedInThisSDL_RT = false;
}




// ===========================================================================================
// SEKCE 06 – SLOT ENTRY GATES
// Účel: smí se slot vůbec pokusit o vstup?
// ============================================================================================


// --------------------------------------------------
// BLOK 06.10 – Entry Gate Slot A
// --------------------------------------------------

bool CanOpenSlotA()
{
   if(!EA_Enable_RT) return false;
   if(!SlotA_Enable) return false;
   if(DailyPL_Locked_RT) return false;

   if(SlotA_Open_RT) return false;

   if(SlotA_FirstXSOnly && SlotA_UsedInThisSDL_RT)
      return false;

   return true;
}


// --------------------------------------------------
// BLOK 06.20 – Entry Gate Slot B
// --------------------------------------------------

bool CanOpenSlotB()
{
   if(!EA_Enable_RT) return false;
   if(!SlotB_Enable) return false;
   if(DailyPL_Locked_RT) return false;

   if(SlotB_Open_RT) return false;

   if(SlotB_FirstXSOnly && SlotB_UsedInThisSDL_RT)
      return false;

   return true;
}


// ===========================================================================================
// SEKCE 07 – SLOT ENGINE (AKCE)
// Účel: provedení vstupu (nebo jeho simulace)
// ==========================================================================================


// --------------------------------------------------
// BLOK 07.10 – Slot Entry Orchestrator (FSM FINAL)
// Účel:
// - JEDINÉ místo spotřeby HIT
// - JEDINÝ přechod do FSM_ENTRY_EXECUTION
// - zachovává 100 % chování BASELINE
// --------------------------------------------------
void ProcessSlotEntry()
{
   // není HIT → není ENTRY
   if(PendingEntry_HitType_RT == HIT_NONE)
      return;

   // FSM přechod: Pending → Entry Execution
   EA_FSM_State = FSM_ENTRY_EXECUTION;

   // -------------------------------
   // ENTRY CONTEXT (beze změny)
   // -------------------------------
   int    entryDir   = PendingEntry_Dir_RT;
   double entryPrice = PendingEntry_Price_RT;
   bool   useMarket  = (PendingEntry_HitType_RT == HIT_SKIP);

   if(DebugPrint)
   {
      Print(
         "ENTRY CONTEXT | DIR=",
         (entryDir == 1 ? "BUY" : "SELL"),
         " MODE=",
         (useMarket ? "MARKET" : "STOP"),
         " PRICE=",
         DoubleToString(entryPrice, Digits)
      );
   }

   // -------------------------------
   // SLOT A
   // -------------------------------
   if(CanOpenSlotA())
      TryOpenSlotA();

   // -------------------------------
   // SLOT B
   // -------------------------------
   if(CanOpenSlotB())
      TryOpenSlotB();

   // -------------------------------
   // JEDINÁ SPOTŘEBA HIT
   // -------------------------------
   PendingEntry_HitType_RT = HIT_NONE;

   // FSM přechod: Entry Execution → Entry Consumed
   EA_FSM_State = FSM_ENTRY_CONSUMED;
}


// --------------------------------------------------
// BLOK 07.20 – TryOpen Slot A (SLOT FSM + STOP REPLACEMENT)
// --------------------------------------------------
void TryOpenSlotA()
{
   // --------------------------------------------------
   // 1) Slot má otevřenou pozici → konec
   // --------------------------------------------------
   if(SlotA_State == SLOT_POSITION_OPEN)
      return;

   // --------------------------------------------------
   // 2) Strategická ochrana (SDL / XS / FirstXSOnly)
   // --------------------------------------------------
   if(!CanOpenSlotA())
      return;

   // --------------------------------------------------
   // 3) Pokud už byl STOP odeslán → REPLACEMENT
   // --------------------------------------------------
   if(SlotA_State == SLOT_ORDER_SENT)
   {
      // zrušíme existující pending STOP Slotu A
      CancelSlotAPending();

      if(DebugPrint)
         Print("SLOT A: STOP REPLACED");
   }

   // --------------------------------------------------
   // 4) Požadavek na nový ENTRY (STOP / MARKET řeší 12.xx)
   // --------------------------------------------------
   SlotA_State            = SLOT_ORDER_SENT;
   SlotA_UsedInThisSDL_RT = true;

   if(DebugPrint)
      Print("SLOT A: ENTRY REQUESTED");
}


// --------------------------------------------------
// BLOK 07.30 – TryOpen Slot B (SLOT FSM + STOP REPLACEMENT)
// --------------------------------------------------
void TryOpenSlotB()
{
   if(SlotB_State == SLOT_POSITION_OPEN)
      return;

   if(!CanOpenSlotB())
      return;

   if(SlotB_State == SLOT_ORDER_SENT)
   {
      CancelSlotBPending();

      if(DebugPrint)
         Print("SLOT B: STOP REPLACED");
   }

   SlotB_State            = SLOT_ORDER_SENT;
   SlotB_UsedInThisSDL_RT = true;

   if(DebugPrint)
      Print("SLOT B: ENTRY REQUESTED");
}


// ================================================================================================
// SEKCE 11 – UI (RENDER / EVENTY / TIMER)
// Účel: UI panel, OnInit, OnDeinit, OnChartEvent
// ================================================================================================


//+------------------------------------------------------------------+
//| Funkce: OnInit                                                    |
//| Volá se při připojení EA ke grafu                                 |
//+------------------------------------------------------------------+


// --------------------------------------------------
// BLOK 11.17 – UI: Globální layout & barvy (MASTER)
// --------------------------------------------------

// === ZÁKLADNÍ POZICE PANELU ===
input string  ___zobrazeni_____ = "===== ZOBRAZENÍ =====";

input int UI_OffsetX = 20;   // vzdálenost od levého okraje grafu
input int UI_OffsetY = 50;   // vzdálenost od horního okraje grafu

// === OSTATNÍ ROZMĚRY ===
input int UI_SmallBtn_Height = 40;   // Výška ostatních tlačítek

// === TEXT & INPUT FIELDS ===
// velikost fontu – pouze vzhled (NEMĚNÍ layout)
input int UI_Font_Size = 10;    // Velikost fontu pro text


// === BARVY – HLAVNÍ TEXT ===
input color UI_Color_Main_Text = clrWhite;              // Barva textu pro hlavní tlačítka

// === BARVY – SELL ===
input color UI_Color_Sell_BG_Active   = clrFireBrick;   // Barva pozadí pro tlačítka SELL
input color UI_Color_Sell_BG_Inactive = clrGray;        // Barva pro neaktivní tlačítko SELL

// === BARVY – BUY ===
input color UI_Color_Buy_BG_Active    = clrGreen;  // Barva pozadí pro tlačítko BUY
input color UI_Color_Buy_BG_Inactive  = clrGray;        // Barva pro neaktivní tlačítko BUY

// === BARVY – OSTATNÍ TLAČÍTKA (S1–S3, MA atd.) ===
input color UI_Color_Secondary_BG_Active   = clrGoldenrod;   // Barva pozadí pro ostatní aktivní tlačítka
input color UI_Color_Secondary_BG_Inactive = clrDimGray;  // Barva pozadí pro ostatní neaktivní tlačítka
input color UI_Color_Secondary_Text        = clrWhite;    // Barva textu pro ostatní tlačítka

// === BARVY – OSTATNÍ TLAČÍTKA (AKTIVNÍ / NEAKTIVNÍ TEXT) ===
input color UI_Color_Secondary_Text_Active   = clrBlack;
input color UI_Color_Secondary_Text_Inactive = clrLightGray;


// --------------------------------------------------
// BLOK 11.10 – OnInit (FSM + RB synchronizace)
// --------------------------------------------------
int OnInit()
{
   InitRuntimeState();

   // 🔒 INIT SLOTŮ MUSÍ BĚŽET PŘED CSV
   InitSlotA_Runtime();
   InitSlotB_Runtime();

   LoadConfigFromCSV();   // ← CSV má POSLEDNÍ slovo

   // === FSM RESET ===
   EA_FSM_State           = FSM_IDLE;
   SDL_Direction_RT       = 0;
   SDL_Direction_Ready_RT = false;

   // === RB SYNCHRONIZACE (KLÍČOVÉ) ===
   LastBarTime_RT = Time[1];   // synchronizace uzavřené svíčky

   // === UI ===
   RenderUIPanel();
   UpdateSlotA_UI();
   UpdateSlotB_UI();
   UpdateCondDirUI();   // zobrazí --- okamžitě

   if(DebugPrint)
      Print("EAXSDL_Learning: EA inicializováno → FSM_IDLE.");

   EventSetTimer(1);

   return(INIT_SUCCEEDED);
}


// --------------------------------------------------
// BLOK 11.20 – Render celého UI panelu (FINÁLNÍ)
// --------------------------------------------------
void RenderUIPanel()
{
   RenderPanelBG();
   RenderPanelTitle();
   RenderPanelBG_VO();
   RenderPanelTitle_VO();

   RenderMarketSellButton();
   RenderMarketBuyButton();
   RenderPendingSellButton();
   RenderPendingBuyButton();
   RenderCancelAllPendingButton();
   RenderCloseAllMarketButton();

   UI_Create_Toggle_UseSlotA_B();
   UI_Init_Toggle_UseSlotA_B();

   // ===== SLOT A =====
   RenderSlotA_LotsRow();
   RenderSlotA_SLTPRow();
   RenderSlotA_TSBERow();

   // ===== SLOT B =====
   RenderSlotB_LotsRow();
   RenderSlotB_SLTPRow();
   RenderSlotB_TSBERow();

   // ===== OSTATNÍ UI =====
   RenderCondLabel();
   RenderCondDirBox();
   RenderXSBox();
   RenderS1Button();
   RenderS2Button();
   RenderS3Button();
   RenderM1Button();
   RenderM2Button();
   RenderM3Button();
   RenderSellButton();
   RenderBuyButton();
   RenderStatusText();

   // ===== BASE STATE AŽ PO RENDERU =====
 // UpdateSlotA_UI();
 // UpdateSlotB_UI();

   UpdateStatusText();
}


// --------------------------------------------------
// BLOK 11.21 – UI: PANEL_BG (RENDER – FIXNÍ)
// Účel:
//  - statické pozadí panelu
//  - BEZ layout engine
// --------------------------------------------------
void RenderPanelBG()
{
   const int PANEL_X = 20;
   const int PANEL_Y = 50;
   const int PANEL_W = 363;
   const int PANEL_H = 140;

   if(ObjectFind(0, PANEL_BG) < 0)
      ObjectCreate(0, PANEL_BG, OBJ_RECTANGLE_LABEL, 0, 0, 0);

   ObjectSetInteger(0, PANEL_BG, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_XDISTANCE, PANEL_X);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_YDISTANCE, PANEL_Y);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_XSIZE, PANEL_W);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_YSIZE, PANEL_H);

   ObjectSetInteger(0, PANEL_BG, OBJPROP_BGCOLOR, clrBlack);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_COLOR, clrDimGray);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_BORDER_TYPE, BORDER_FLAT);
   ObjectSetInteger(0, PANEL_BG, OBJPROP_BACK, false);
}


// --------------------------------------------------
// BLOK 11.40 – UI: PANEL_BG_VO (RENDER – FIXNÍ)
// Účel:
//  - pozadí panelu VisualOrdering Controls
// --------------------------------------------------
#define PANEL_BG_VO "UI_Panel_BG_VO"

void RenderPanelBG_VO()
{
   const int X = 20;     // zarovnání pod hlavní panel
   const int Y = 200;    // pod první panel
   const int W = 363;
   const int H = 485;    // rezerva pro Market/Pending/Lots/SL/TP/TS

   if(ObjectFind(0, PANEL_BG_VO) < 0)
      ObjectCreate(0, PANEL_BG_VO, OBJ_RECTANGLE_LABEL, 0, 0, 0);

   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_BGCOLOR, clrBlack);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_COLOR, clrDimGray);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_BORDER_TYPE, BORDER_FLAT);
   ObjectSetInteger(0, PANEL_BG_VO, OBJPROP_BACK, false);
}


// --------------------------------------------------
// BLOK 11.41 – UI: TITLE VisualOrdering Controls
// --------------------------------------------------
#define PANEL_TITLE_VO "UI_Panel_Title_VO"

void RenderPanelTitle_VO()
{
   const int X = 25;
   const int Y = 205;

   if(ObjectFind(0, PANEL_TITLE_VO) < 0)
      ObjectCreate(0, PANEL_TITLE_VO, OBJ_LABEL, 0, 0, 0);

   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_YDISTANCE, Y);

   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_COLOR, clrWhite);
   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, PANEL_TITLE_VO, OBJPROP_BACK, false);

   ObjectSetString(
      0,
      PANEL_TITLE_VO,
      OBJPROP_TEXT,
      "+ VisualOrdering Controls"
   );
}


// --------------------------------------------------
// BLOK 11.42 – UI: Market SELL (RENDER – FIXNÍ)
// --------------------------------------------------
#define BTN_MARKET_SELL "UI_BTN_MARKET_SELL"

void RenderMarketSellButton()
{
   const int X = 20;
   const int Y = 240;
   const int W = 177;
   const int H = 40;

   if(ObjectFind(0, BTN_MARKET_SELL) < 0)
      ObjectCreate(0, BTN_MARKET_SELL, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_MARKET_SELL, OBJPROP_BGCOLOR, UI_Color_Sell_BG_Active);

   ObjectSetString (0, BTN_MARKET_SELL, OBJPROP_TEXT, "Market SELL");
}


// --------------------------------------------------
// BLOK 11.43 – UI: Market BUY (RENDER – FIXNÍ)
// --------------------------------------------------
#define BTN_MARKET_BUY "UI_BTN_MARKET_BUY"

void RenderMarketBuyButton()
{
   const int X = 205;
   const int Y = 240;
   const int W = 177;
   const int H = 40;

   if(ObjectFind(0, BTN_MARKET_BUY) < 0)
      ObjectCreate(0, BTN_MARKET_BUY, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_MARKET_BUY, OBJPROP_BGCOLOR, UI_Color_Buy_BG_Active);

   ObjectSetString (0, BTN_MARKET_BUY, OBJPROP_TEXT, "Market BUY");
}


// --------------------------------------------------
// BLOK 11.44 – UI: Pending SELL (RENDER – FIXNÍ)
// --------------------------------------------------
#define BTN_PENDING_SELL "UI_BTN_PENDING_SELL"

void RenderPendingSellButton()
{
   const int X = 20;
   const int Y = 285;
   const int W = 177;
   const int H = 40;

   if(ObjectFind(0, BTN_PENDING_SELL) < 0)
      ObjectCreate(0, BTN_PENDING_SELL, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_PENDING_SELL, OBJPROP_BGCOLOR, UI_Color_Sell_BG_Active);

   ObjectSetString (0, BTN_PENDING_SELL, OBJPROP_TEXT, "Pending SELL");
}


// --------------------------------------------------
// BLOK 11.45 – UI: Pending BUY (RENDER – FIXNÍ)
// --------------------------------------------------
#define BTN_PENDING_BUY "UI_BTN_PENDING_BUY"

void RenderPendingBuyButton()
{
   const int X = 205;
   const int Y = 285;
   const int W = 177;
   const int H = 40;

   if(ObjectFind(0, BTN_PENDING_BUY) < 0)
      ObjectCreate(0, BTN_PENDING_BUY, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_PENDING_BUY, OBJPROP_BGCOLOR, UI_Color_Buy_BG_Active);

   ObjectSetString (0, BTN_PENDING_BUY, OBJPROP_TEXT, "Pending BUY");
}


// --------------------------------------------------
// BLOK 11.46 – UI: Cancel All Pending (RENDER – FIXNÍ)
// Účel:
//  - zrušení všech pending příkazů (UI)
//  - barvy řízené centrálně z BLOKU 11.04
//  - BEZ logiky (stav zatím nevyhodnocujeme)
// --------------------------------------------------
#define BTN_CANCEL_ALL_PENDING "UI_BTN_CANCEL_ALL_PENDING"

void RenderCancelAllPendingButton()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 20;
   const int Y = 330;   // pod Pending řadou
   const int W = 362;   // plná šířka VO panelu
   const int H = 40;

   if(ObjectFind(0, BTN_CANCEL_ALL_PENDING) < 0)
      ObjectCreate(0, BTN_CANCEL_ALL_PENDING, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING, OBJPROP_FONTSIZE, UI_Font_Size);

   // === VÝCHOZÍ STAV: NEAKTIVNÍ (žádný pending) ===
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING,
                    OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, BTN_CANCEL_ALL_PENDING,
                    OBJPROP_COLOR, UI_Color_Secondary_Text_Inactive);

   ObjectSetString(0, BTN_CANCEL_ALL_PENDING,
                   OBJPROP_TEXT, "Cancel All Pending");
}


// --------------------------------------------------
// BLOK 11.47 – UI: Close Positions by Market (RENDER – FIXNÍ)
// Účel:
//  - zavření všech otevřených pozic (UI)
//  - barvy + text řízené centrálně z BLOKU 11.04
//  - BEZ logiky (stav zatím nevyhodnocujeme)
// --------------------------------------------------
#define BTN_CLOSE_ALL_MARKET "UI_BTN_CLOSE_ALL_MARKET"

void RenderCloseAllMarketButton()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 20;
   const int Y = 375;   // pod Cancel All Pending
   const int W = 362;   // plná šířka VO panelu
   const int H = 40;

   if(ObjectFind(0, BTN_CLOSE_ALL_MARKET) < 0)
      ObjectCreate(0, BTN_CLOSE_ALL_MARKET, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_YSIZE, H);

   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET, OBJPROP_FONTSIZE, UI_Font_Size);

   // === VÝCHOZÍ STAV: NEAKTIVNÍ (žádné otevřené pozice) ===
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET,
                    OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, BTN_CLOSE_ALL_MARKET,
                    OBJPROP_COLOR, UI_Color_Secondary_Text_Inactive);

   ObjectSetString(0, BTN_CLOSE_ALL_MARKET,
                   OBJPROP_TEXT, "Close Positions by Market");
}


// --------------------------------------------------
// BLOK 11.61 – UI: Slot A / Řádek 1 – LOTS
// FIXNÍ SOUŘADNICE (bez vzorečků)
// --------------------------------------------------

#define UI_LBL_LOTS_A     "UI_LBL_LOTS_A"
#define UI_EDT_LOTS_A     "UI_EDT_LOTS_A"
#define UI_BTN_LOTS_X2_A  "UI_BTN_LOTS_X2_A"
#define UI_BTN_LOTS_D2_A  "UI_BTN_LOTS_D2_A"

void RenderSlotA_LotsRow()
{
   // ===== SPOLEČNÉ =====
   const int Y  = 420;
   const int H  = 40;

   // ===== LEVÁ POLOVINA =====
   const int X_LBL = 80;
   const int X_EDT = 120;
   const int W_EDT = 77;

   // ===== PRAVÁ POLOVINA =====
   const int X_X2  = 205;
   const int W_BTN = 85;
   const int X_D2  = 296;

   // --- Label Lots ---
   ObjectCreate(0, UI_LBL_LOTS_A, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_LOTS_A, OBJPROP_XDISTANCE, X_LBL);
   ObjectSetInteger(0, UI_LBL_LOTS_A, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_LOTS_A, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_LOTS_A, OBJPROP_TEXT, "Lot:");

   // --- Input Lots ---
   ObjectCreate(0, UI_EDT_LOTS_A, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_XDISTANCE, X_EDT);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_XSIZE, W_EDT);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_BGCOLOR, clrLightGray);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_COLOR, clrBlack);
   ObjectSetString(0, UI_EDT_LOTS_A, OBJPROP_TEXT, DoubleToString(SlotA_Lots, 2));


   // --- Button x2 ---
   ObjectCreate(0, UI_BTN_LOTS_X2_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_XDISTANCE, X_X2);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_XSIZE, W_BTN);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Active);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_COLOR, UI_Color_Secondary_Text_Active);
   ObjectSetString (0, UI_BTN_LOTS_X2_A, OBJPROP_TEXT, "x2");

   // --- Button /2 ---
   ObjectCreate(0, UI_BTN_LOTS_D2_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_XDISTANCE, X_D2);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_XSIZE, W_BTN);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Active);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_COLOR, UI_Color_Secondary_Text_Active);
   ObjectSetString (0, UI_BTN_LOTS_D2_A, OBJPROP_TEXT, "/2");
}


// --------------------------------------------------
// BLOK 11.62 – UI: Slot A / Řádek 2 – SL / TP (FINÁLNÍ)
// --------------------------------------------------

#define UI_TGL_EQ_A   "UI_TGL_EQ_A"
#define UI_CHK_SL_A   "UI_CHK_SL_A"
#define UI_LBL_SL_A   "UI_LBL_SL_A"
#define UI_EDT_SL_A   "UI_EDT_SL_A"
#define UI_CHK_TP_A   "UI_CHK_TP_A"
#define UI_LBL_TP_A   "UI_LBL_TP_A"
#define UI_EDT_TP_A   "UI_EDT_TP_A"

// ==================================================
// RENDER
// ==================================================
void RenderSlotA_SLTPRow()
{
   const int Y  = 466;
   const int H  = 40;

   const int X_EQ      = 20;
   const int W_EQ      = 32;

   const int X_SL_CHK  = 58;
   const int W_CHK     = 28;

   const int X_SL_LBL  = 92;
   const int X_SL_EDT  = 120;
   const int W_SL_EDT  = 77;

   const int X_TP_CHK  = 205;
   const int X_TP_LBL  = 239;
   const int X_TP_EDT  = 295;
   const int W_TP_EDT  = 88;

   // "="
   ObjectCreate(0, UI_TGL_EQ_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_XDISTANCE, X_EQ);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_XSIZE, W_EQ);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_COLOR,   UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_TGL_EQ_A, OBJPROP_TEXT, "/");

   // SL toggle
   ObjectCreate(0, UI_CHK_SL_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_XDISTANCE, X_SL_CHK);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_BGCOLOR,
      SlotA_SL_Enable_RT ? UI_Color_Secondary_BG_Active
                         : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_COLOR,
      SlotA_SL_Enable_RT ? UI_Color_Secondary_Text_Active
                         : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_SL_A, OBJPROP_TEXT,
      SlotA_SL_Enable_RT ? "+" : "-");

   ObjectCreate(0, UI_LBL_SL_A, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_SL_A, OBJPROP_XDISTANCE, X_SL_LBL);
   ObjectSetInteger(0, UI_LBL_SL_A, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_SL_A, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_SL_A, OBJPROP_TEXT, "SL");

   ObjectCreate(0, UI_EDT_SL_A, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_XDISTANCE, X_SL_EDT);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_XSIZE, W_SL_EDT);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_SL_A, OBJPROP_TEXT, DoubleToString(SlotA_SL, 0));

   // TP toggle
   ObjectCreate(0, UI_CHK_TP_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_XDISTANCE, X_TP_CHK);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_BGCOLOR,
      SlotA_TP_Enable_RT ? UI_Color_Secondary_BG_Active
                         : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_COLOR,
      SlotA_TP_Enable_RT ? UI_Color_Secondary_Text_Active
                         : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_TP_A, OBJPROP_TEXT,
      SlotA_TP_Enable_RT ? "+" : "-");

   ObjectCreate(0, UI_LBL_TP_A, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_TP_A, OBJPROP_XDISTANCE, X_TP_LBL);
   ObjectSetInteger(0, UI_LBL_TP_A, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_TP_A, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_TP_A, OBJPROP_TEXT, "TP");

   ObjectCreate(0, UI_EDT_TP_A, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_XDISTANCE, X_TP_EDT);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_XSIZE, W_TP_EDT);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_TP_A, OBJPROP_TEXT, DoubleToString(SlotA_TP, 0));
}

// ==================================================
// EVENT
// ==================================================
void HandleSlotA_SLTP_Event(const string objName)
{
   if(objName == UI_CHK_SL_A)
   {
      SlotA_SL_Enable_RT = !SlotA_SL_Enable_RT;
      UpdateSlotA_UI();
      SaveConfigToCSV();
      return;
   }

   if(objName == UI_CHK_TP_A)
   {
      SlotA_TP_Enable_RT = !SlotA_TP_Enable_RT;
      UpdateSlotA_UI();
      SaveConfigToCSV();
      return;
   }
}


// --------------------------------------------------
// BLOK 11.63 – UI: Slot A / Řádek 3 – TS / BE (FINÁLNÍ)
// --------------------------------------------------

#define UI_CHK_TS_A   "UI_CHK_TS_A"
#define UI_LBL_TS_A   "UI_LBL_TS_A"
#define UI_EDT_TS_A   "UI_EDT_TS_A"
#define UI_LBL_BE_A   "UI_LBL_BE_A"
#define UI_EDT_BE_A   "UI_EDT_BE_A"

// ==================================================
// RENDER
// ==================================================
void RenderSlotA_TSBERow()
{
   const int Y  = 510;
   const int H  = 40;

   const int X_TS_CHK  = 20;
   const int W_CHK     = 28;

   const int X_TS_LBL  = 54;
   const int X_TS_EDT  = 120;
   const int W_TS_EDT  = 77;

   const int X_BE_LBL  = 205;
   const int X_BE_EDT  = 295;
   const int W_BE_EDT  = 88;

   // === TS / BE toggle ===
   ObjectCreate(0, UI_CHK_TS_A, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_XDISTANCE, X_TS_CHK);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_BGCOLOR,
      SlotA_TSBE_Enable_RT ? UI_Color_Secondary_BG_Active
                           : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_COLOR,
      SlotA_TSBE_Enable_RT ? UI_Color_Secondary_Text_Active
                           : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_TS_A, OBJPROP_TEXT,
      SlotA_TSBE_Enable_RT ? "+" : "-");

   // === Label TS ===
   ObjectCreate(0, UI_LBL_TS_A, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_TS_A, OBJPROP_XDISTANCE, X_TS_LBL);
   ObjectSetInteger(0, UI_LBL_TS_A, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_TS_A, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_TS_A, OBJPROP_TEXT, "TS");

   // === Input TS (bez barev – řídí 11.28) ===
   ObjectCreate(0, UI_EDT_TS_A, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_XDISTANCE, X_TS_EDT);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_XSIZE, W_TS_EDT);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_TS_A, OBJPROP_TEXT, DoubleToString(SlotA_TS, 0));

   // === Label BE ===
   ObjectCreate(0, UI_LBL_BE_A, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_BE_A, OBJPROP_XDISTANCE, X_BE_LBL);
   ObjectSetInteger(0, UI_LBL_BE_A, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_BE_A, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_BE_A, OBJPROP_TEXT, "@BE");

   // === Input BE (bez barev – řídí 11.28) ===
   ObjectCreate(0, UI_EDT_BE_A, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_XDISTANCE, X_BE_EDT);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_XSIZE, W_BE_EDT);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_BE_A, OBJPROP_TEXT, DoubleToString(SlotA_BE, 0));
}

// ==================================================
// EVENT
// ==================================================
void HandleSlotA_TSBE_Event(const string objName)
{
   if(objName == UI_CHK_TS_A)
   {
      SlotA_TSBE_Enable_RT = !SlotA_TSBE_Enable_RT;
      UpdateSlotA_UI();
      SaveConfigToCSV();
      return;
   }
}


// --------------------------------------------------
// BLOK 11.64 – UI: Slot B / Řádek 1 – LOTS
// 1:1 Slot A + Y offset (+140 px)
// --------------------------------------------------

#define UI_LBL_LOTS_B     "UI_LBL_LOTS_B"
#define UI_EDT_LOTS_B     "UI_EDT_LOTS_B"
#define UI_BTN_LOTS_X2_B  "UI_BTN_LOTS_X2_B"
#define UI_BTN_LOTS_D2_B  "UI_BTN_LOTS_D2_B"

void RenderSlotB_LotsRow()
{
   // ===== SPOLEČNÉ =====
   const int Y  = 555;   // Slot A (420) + 140
   const int H  = 40;

   // ===== LEVÁ POLOVINA =====
   const int X_LBL = 80;
   const int X_EDT = 120;   // odsazené od labelu (finální z A)
   const int W_EDT = 77;

   // ===== PRAVÁ POLOVINA =====
   const int X_X2  = 205;
   const int W_BTN = 85;   // x2
   const int X_D2  = 296;  // /2 (mezera zachována)

   // --- Label Lots ---
   ObjectCreate(0, UI_LBL_LOTS_B, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_LOTS_B, OBJPROP_XDISTANCE, X_LBL);
   ObjectSetInteger(0, UI_LBL_LOTS_B, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_LOTS_B, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_LOTS_B, OBJPROP_TEXT, "Lot:");

   // --- Input Lots ---
   ObjectCreate(0, UI_EDT_LOTS_B, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_XDISTANCE, X_EDT);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_XSIZE, W_EDT);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_BGCOLOR, clrLightGray);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_COLOR, clrBlack);
   ObjectSetString(0, UI_EDT_LOTS_B, OBJPROP_TEXT,
                DoubleToString(SlotB_Lots, 2));


   // --- Button x2 ---
   ObjectCreate(0, UI_BTN_LOTS_X2_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_XDISTANCE, X_X2);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_XSIZE, W_BTN);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Active);
   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_COLOR, UI_Color_Secondary_Text_Active);
   ObjectSetString (0, UI_BTN_LOTS_X2_B, OBJPROP_TEXT, "x2");

   // --- Button /2 ---
   ObjectCreate(0, UI_BTN_LOTS_D2_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_XDISTANCE, X_D2);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_XSIZE, W_BTN);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Active);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_COLOR, UI_Color_Secondary_Text_Active);
   ObjectSetString (0, UI_BTN_LOTS_D2_B, OBJPROP_TEXT, "/2");
}


// --------------------------------------------------
// BLOK 11.65 – UI: Slot B / Řádek 2 – SL / TP
// 1:1 Slot A + Y offset (+135 px)
// --------------------------------------------------

#define UI_TGL_EQ_B   "UI_TGL_EQ_B"
#define UI_CHK_SL_B   "UI_CHK_SL_B"
#define UI_LBL_SL_B   "UI_LBL_SL_B"
#define UI_EDT_SL_B   "UI_EDT_SL_B"
#define UI_CHK_TP_B   "UI_CHK_TP_B"
#define UI_LBL_TP_B   "UI_LBL_TP_B"
#define UI_EDT_TP_B   "UI_EDT_TP_B"

// ================= RENDER =================
void RenderSlotB_SLTPRow()
{
   const int Y = 601;   // 466 + 135
   const int H = 40;

   const int X_EQ = 20, W_EQ = 32;
   const int X_SL_CHK = 58, W_CHK = 28;
   const int X_SL_LBL = 92;
   const int X_SL_EDT = 120, W_SL_EDT = 77;

   const int X_TP_CHK = 205;
   const int X_TP_LBL = 239;
   const int X_TP_EDT = 295, W_TP_EDT = 88;

   // "="
   ObjectCreate(0, UI_TGL_EQ_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_XDISTANCE, X_EQ);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_XSIZE, W_EQ);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_BGCOLOR, UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_COLOR, UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_TGL_EQ_B, OBJPROP_TEXT, "/");

   // SL toggle
   ObjectCreate(0, UI_CHK_SL_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_XDISTANCE, X_SL_CHK);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_BGCOLOR,
      SlotB_SL_Enable_RT ? UI_Color_Secondary_BG_Active : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_COLOR,
      SlotB_SL_Enable_RT ? UI_Color_Secondary_Text_Active : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_SL_B, OBJPROP_TEXT, SlotB_SL_Enable_RT ? "+" : "-");

   ObjectCreate(0, UI_LBL_SL_B, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_SL_B, OBJPROP_XDISTANCE, X_SL_LBL);
   ObjectSetInteger(0, UI_LBL_SL_B, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_SL_B, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_SL_B, OBJPROP_TEXT, "SL");

   ObjectCreate(0, UI_EDT_SL_B, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_XDISTANCE, X_SL_EDT);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_XSIZE, W_SL_EDT);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_SL_B, OBJPROP_TEXT, DoubleToString(SlotB_SL, 0));

   // TP toggle
   ObjectCreate(0, UI_CHK_TP_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_XDISTANCE, X_TP_CHK);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_BGCOLOR,
      SlotB_TP_Enable_RT ? UI_Color_Secondary_BG_Active : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_COLOR,
      SlotB_TP_Enable_RT ? UI_Color_Secondary_Text_Active : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_TP_B, OBJPROP_TEXT, SlotB_TP_Enable_RT ? "+" : "-");

   ObjectCreate(0, UI_LBL_TP_B, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_TP_B, OBJPROP_XDISTANCE, X_TP_LBL);
   ObjectSetInteger(0, UI_LBL_TP_B, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_TP_B, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_TP_B, OBJPROP_TEXT, "TP");

   ObjectCreate(0, UI_EDT_TP_B, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_XDISTANCE, X_TP_EDT);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_XSIZE, W_TP_EDT);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_TP_B, OBJPROP_TEXT, DoubleToString(SlotB_TP, 0));
}

// ================= EVENT =================
void HandleSlotB_SLTP_Event(const string objName)
{
   if(objName == UI_CHK_SL_B)
   {
      SlotB_SL_Enable_RT = !SlotB_SL_Enable_RT;
      SaveConfigToCSV();
      UpdateSlotB_UI();
      return;
   }

   if(objName == UI_CHK_TP_B)
   {
      SlotB_TP_Enable_RT = !SlotB_TP_Enable_RT;
      SaveConfigToCSV();
      UpdateSlotB_UI();
      return;
   }
}


// --------------------------------------------------
// BLOK 11.66 – UI: Slot B / Řádek 3 – TS / BE
// 1:1 Slot A + Y offset (+135 px)
// --------------------------------------------------

#define UI_CHK_TS_B   "UI_CHK_TS_B"
#define UI_LBL_TS_B   "UI_LBL_TS_B"
#define UI_EDT_TS_B   "UI_EDT_TS_B"
#define UI_LBL_BE_B   "UI_LBL_BE_B"
#define UI_EDT_BE_B   "UI_EDT_BE_B"

// ================= RENDER =================
void RenderSlotB_TSBERow()
{
   const int Y = 645;   // 506 + 135
   const int H = 40;

   const int X_TS_CHK = 20, W_CHK = 28;
   const int X_TS_LBL = 54;
   const int X_TS_EDT = 120, W_TS_EDT = 77;

   const int X_BE_LBL = 205;
   const int X_BE_EDT = 295, W_BE_EDT = 88;

   // TS toggle
   ObjectCreate(0, UI_CHK_TS_B, OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_XDISTANCE, X_TS_CHK);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_XSIZE, W_CHK);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_BGCOLOR,
      SlotB_TSBE_Enable_RT ? UI_Color_Secondary_BG_Active : UI_Color_Secondary_BG_Inactive);
   ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_COLOR,
      SlotB_TSBE_Enable_RT ? UI_Color_Secondary_Text_Active : UI_Color_Secondary_Text_Inactive);
   ObjectSetString (0, UI_CHK_TS_B, OBJPROP_TEXT, SlotB_TSBE_Enable_RT ? "+" : "-");

   ObjectCreate(0, UI_LBL_TS_B, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_TS_B, OBJPROP_XDISTANCE, X_TS_LBL);
   ObjectSetInteger(0, UI_LBL_TS_B, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_TS_B, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_TS_B, OBJPROP_TEXT, "TS");

   ObjectCreate(0, UI_EDT_TS_B, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_XDISTANCE, X_TS_EDT);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_XSIZE, W_TS_EDT);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_TS_B, OBJPROP_TEXT, DoubleToString(SlotB_TS, 0));

   ObjectCreate(0, UI_LBL_BE_B, OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, UI_LBL_BE_B, OBJPROP_XDISTANCE, X_BE_LBL);
   ObjectSetInteger(0, UI_LBL_BE_B, OBJPROP_YDISTANCE, Y + 10);
   ObjectSetInteger(0, UI_LBL_BE_B, OBJPROP_COLOR, UI_Color_Main_Text);
   ObjectSetString (0, UI_LBL_BE_B, OBJPROP_TEXT, "@BE");

   ObjectCreate(0, UI_EDT_BE_B, OBJ_EDIT, 0, 0, 0);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_XDISTANCE, X_BE_EDT);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_XSIZE, W_BE_EDT);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_YSIZE, H);
   ObjectSetString (0, UI_EDT_BE_B, OBJPROP_TEXT, DoubleToString(SlotB_BE, 0));
}

// ================= EVENT =================
void HandleSlotB_TSBE_Event(const string objName)
{
   if(objName == UI_CHK_TS_B)
   {
      SlotB_TSBE_Enable_RT = !SlotB_TSBE_Enable_RT;
      SaveConfigToCSV();
      UpdateSlotB_UI();
      return;
   }
}


// --------------------------------------------------
// BLOK 11.11 – UI: SELL button (RENDER – FIXNÍ)
// --------------------------------------------------
void RenderSellButton()
{
   // === FIXNÍ SOUŘADNICE A ROZMĚRY ===
   const int SELL_X = 20;
   const int SELL_Y = 145;
   const int SELL_W = 177;
   const int SELL_H = 40;

   if(ObjectFind(0, BTN_SELL) < 0)
      ObjectCreate(0, BTN_SELL, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_SELL, OBJPROP_XDISTANCE, SELL_X);
   ObjectSetInteger(0, BTN_SELL, OBJPROP_YDISTANCE, SELL_Y);
   ObjectSetInteger(0, BTN_SELL, OBJPROP_XSIZE,     SELL_W);
   ObjectSetInteger(0, BTN_SELL, OBJPROP_YSIZE,     SELL_H);

   ObjectSetInteger(0, BTN_SELL, OBJPROP_COLOR,    UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_SELL, OBJPROP_FONTSIZE, UI_Font_Size);

   if(AllowSell)
   {
      ObjectSetInteger(0, BTN_SELL, OBJPROP_BGCOLOR, UI_Color_Sell_BG_Active);
      ObjectSetString (0, BTN_SELL, OBJPROP_TEXT,    "SELLing");
   }
   else
   {
      ObjectSetInteger(0, BTN_SELL, OBJPROP_BGCOLOR, UI_Color_Sell_BG_Inactive);
      ObjectSetString (0, BTN_SELL, OBJPROP_TEXT,    "no SELLing");
   }
}


// --------------------------------------------------
// BLOK 11.12 – UI: BUY button (RENDER – FIXNÍ)
// --------------------------------------------------
void RenderBuyButton()
{
   // === FIXNÍ SOUŘADNICE A ROZMĚRY ===
   const int BUY_X = 205;   // SELL_X + SELL_W + mezera
   const int BUY_Y = 145;
   const int BUY_W = 177;
   const int BUY_H = 40;

   if(ObjectFind(0, BTN_BUY) < 0)
      ObjectCreate(0, BTN_BUY, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_BUY, OBJPROP_XDISTANCE, BUY_X);
   ObjectSetInteger(0, BTN_BUY, OBJPROP_YDISTANCE, BUY_Y);
   ObjectSetInteger(0, BTN_BUY, OBJPROP_XSIZE,     BUY_W);
   ObjectSetInteger(0, BTN_BUY, OBJPROP_YSIZE,     BUY_H);

   ObjectSetInteger(0, BTN_BUY, OBJPROP_COLOR,    UI_Color_Main_Text);
   ObjectSetInteger(0, BTN_BUY, OBJPROP_FONTSIZE, UI_Font_Size);

   if(AllowBuy)
   {
      ObjectSetInteger(0, BTN_BUY, OBJPROP_BGCOLOR, UI_Color_Buy_BG_Active);
      ObjectSetString (0, BTN_BUY, OBJPROP_TEXT,    "BUYing");
   }
   else
   {
      ObjectSetInteger(0, BTN_BUY, OBJPROP_BGCOLOR, UI_Color_Buy_BG_Inactive);
      ObjectSetString (0, BTN_BUY, OBJPROP_TEXT,    "no BUYing");
   }
}


// --------------------------------------------------
// BLOK 11.23 – UI: STATUS_TEXT (RENDER)
// --------------------------------------------------

void RenderStatusText()
{
   if(ObjectFind(0, STATUS_TEXT) < 0)
      ObjectCreate(0, STATUS_TEXT, OBJ_LABEL, 0, 0, 0);

   // FIXNÍ POZICE – HUD
   ObjectSetInteger(0, STATUS_TEXT, OBJPROP_XDISTANCE, 10);
   ObjectSetInteger(0, STATUS_TEXT, OBJPROP_YDISTANCE, 20);

   ObjectSetInteger(0, STATUS_TEXT, OBJPROP_COLOR,    clrGold);
   ObjectSetInteger(0, STATUS_TEXT, OBJPROP_FONTSIZE, 7);

   ObjectSetString(0, STATUS_TEXT, OBJPROP_TEXT,
      "    SELL POVOLEN       BUY POVOLEN");
}


// --------------------------------------------------
// BLOK 11.24 – UI: Toggle UseSlotA / UseSlotB – CREATE
// Účel: Vytvoření toggle buttonů pro zapnutí/vypnutí Slot A a Slot B
// Poznámka: Tento blok pouze vytváří UI objekty (bez logiky a bez stavu)
// --------------------------------------------------

void UI_Create_Toggle_UseSlotA_B()
{
   // --- Toggle UseSlotA ---
   ObjectCreate(0, "UI_Toggle_UseSlotA", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_XDISTANCE, 20);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_YDISTANCE, 420);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_XSIZE,     55);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_YSIZE,     40);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_CORNER,    0);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_SELECTABLE, false);
   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_HIDDEN,     false);

   // --- Toggle UseSlotB ---
   ObjectCreate(0, "UI_Toggle_UseSlotB", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_XDISTANCE, 20);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_YDISTANCE, 555);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_XSIZE,     55);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_YSIZE,     40);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_CORNER,    0);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_SELECTABLE, false);
   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_HIDDEN,     false);
}


// --------------------------------------------------
// BLOK 11.26 – UI: Toggle UseSlotA / UseSlotB – INIT STATE
// Účel: Nastavení počátečního ON/OFF stavu toggle buttonů
// Poznámka: Toggle má vlastní barvy (ON = zelená, OFF = červená),
//           ostatní prvky slotu se řídí Secondary barvami (řešeno jinde)
// --------------------------------------------------

void UI_Init_Toggle_UseSlotA_B()
{
   // --- UseSlotA toggle ---
   ObjectSetString(0, "UI_Toggle_UseSlotA", OBJPROP_TEXT,
                   UseSlotA ? "ON" : "OFF");

   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_BGCOLOR,
                    UseSlotA ? clrGreen : clrFireBrick);

   ObjectSetInteger(0, "UI_Toggle_UseSlotA", OBJPROP_COLOR, clrWhite);

   // --- UseSlotB toggle ---
   ObjectSetString(0, "UI_Toggle_UseSlotB", OBJPROP_TEXT,
                   UseSlotB ? "ON" : "OFF");

   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_BGCOLOR,
                    UseSlotB ? clrGreen : clrFireBrick);

   ObjectSetInteger(0, "UI_Toggle_UseSlotB", OBJPROP_COLOR, clrWhite);
}


// --------------------------------------------------
// BLOK 11.28 – UI: Update Slot A – BASE STATE (v7)
// --------------------------------------------------
void UpdateSlotA_UI()
{
   bool slotOn = UseSlotA;

   bool slOn   = slotOn && SlotA_SL_Enable_RT;
   bool tpOn   = slotOn && SlotA_TP_Enable_RT;
   bool tsOn   = slotOn && SlotA_TSBE_Enable_RT;

   color bg_on  = clrLightGray;
   color bg_off = UI_Color_Secondary_BG_Inactive;

   color txt_on  = clrBlack;
   color txt_off = UI_Color_Secondary_Text_Inactive;

   color ctrl_on  = UI_Color_Secondary_BG_Active;
   color ctrl_off = UI_Color_Secondary_BG_Inactive;

   color lbl_txt = slotOn ? UI_Color_Main_Text
                          : UI_Color_Secondary_Text_Inactive;

   // ===== ŘÁDEK 1 – LOTS =====
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_READONLY, !slotOn);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_BGCOLOR, slotOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_LOTS_A, OBJPROP_COLOR,   slotOn ? txt_on : txt_off);

   ObjectSetInteger(0, UI_BTN_LOTS_X2_A, OBJPROP_BGCOLOR, slotOn ? ctrl_on : ctrl_off);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_A, OBJPROP_BGCOLOR, slotOn ? ctrl_on : ctrl_off);
   ObjectSetInteger(0, UI_LBL_LOTS_A,    OBJPROP_COLOR,   lbl_txt);

   // ===== ŘÁDEK 2 – SL =====
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_READONLY, !slOn);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_BGCOLOR, slOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_COLOR,   slOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_SL_A, OBJPROP_SELECTED, false);

   // ===== ŘÁDEK 2 – TP =====
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_READONLY, !tpOn);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_BGCOLOR, tpOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_COLOR,   tpOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_TP_A, OBJPROP_SELECTED, false);

   ObjectSetInteger(0, UI_LBL_SL_A, OBJPROP_COLOR, lbl_txt);
   ObjectSetInteger(0, UI_LBL_TP_A, OBJPROP_COLOR, lbl_txt);

   // ===== ŘÁDEK 3 – TS =====
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_READONLY, !tsOn);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_BGCOLOR, tsOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_COLOR,   tsOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_TS_A, OBJPROP_SELECTED, false);

   // ===== ŘÁDEK 3 – BE =====
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_READONLY, !tsOn);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_BGCOLOR, tsOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_COLOR,   tsOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_BE_A, OBJPROP_SELECTED, false);

   ObjectSetInteger(0, UI_LBL_TS_A, OBJPROP_COLOR, lbl_txt);
   ObjectSetInteger(0, UI_LBL_BE_A, OBJPROP_COLOR, lbl_txt);

   // ===== TOGGLE BARVY =====
   if(!slotOn)
   {
      ObjectSetInteger(0, UI_CHK_SL_A, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_CHK_TP_A, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_TGL_EQ_A, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_CHK_TS_A, OBJPROP_BGCOLOR, ctrl_off);
   }
   else
   {
      RenderSlotA_SLTPRow();
      RenderSlotA_TSBERow();
   }
}


// --------------------------------------------------
// BLOK 11.29 – UI: Update Slot B – BASE STATE (FINÁLNÍ)
// --------------------------------------------------
void UpdateSlotB_UI()
{
   bool slotOn = UseSlotB;

   bool slOn = slotOn && SlotB_SL_Enable_RT;
   bool tpOn = slotOn && SlotB_TP_Enable_RT;
   bool tsOn = slotOn && SlotB_TSBE_Enable_RT;

   color bg_on  = clrLightGray;
   color bg_off = UI_Color_Secondary_BG_Inactive;

   color txt_on  = clrBlack;
   color txt_off = UI_Color_Secondary_Text_Inactive;

   color ctrl_on  = UI_Color_Secondary_BG_Active;
   color ctrl_off = UI_Color_Secondary_BG_Inactive;

   color lbl_txt = slotOn ? UI_Color_Main_Text
                          : UI_Color_Secondary_Text_Inactive;

   // ===== ŘÁDEK 1 – LOTS =====
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_READONLY, !slotOn);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_BGCOLOR, slotOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_LOTS_B, OBJPROP_COLOR,   slotOn ? txt_on : txt_off);

   ObjectSetInteger(0, UI_BTN_LOTS_X2_B, OBJPROP_BGCOLOR, slotOn ? ctrl_on : ctrl_off);
   ObjectSetInteger(0, UI_BTN_LOTS_D2_B, OBJPROP_BGCOLOR, slotOn ? ctrl_on : ctrl_off);
   ObjectSetInteger(0, UI_LBL_LOTS_B,    OBJPROP_COLOR,   lbl_txt);

   // ===== ŘÁDEK 2 – SL =====
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_READONLY, !slOn);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_BGCOLOR, slOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_COLOR,   slOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_SL_B, OBJPROP_SELECTED, false);

   // ===== ŘÁDEK 2 – TP =====
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_READONLY, !tpOn);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_BGCOLOR, tpOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_COLOR,   tpOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_TP_B, OBJPROP_SELECTED, false);

   ObjectSetInteger(0, UI_LBL_SL_B, OBJPROP_COLOR, lbl_txt);
   ObjectSetInteger(0, UI_LBL_TP_B, OBJPROP_COLOR, lbl_txt);

   // ===== ŘÁDEK 3 – TS =====
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_READONLY, !tsOn);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_BGCOLOR, tsOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_COLOR,   tsOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_TS_B, OBJPROP_SELECTED, false);

   // ===== ŘÁDEK 3 – BE =====
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_READONLY, !tsOn);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_BGCOLOR, tsOn ? bg_on : bg_off);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_COLOR,   tsOn ? txt_on : txt_off);
   ObjectSetInteger(0, UI_EDT_BE_B, OBJPROP_SELECTED, false);

   ObjectSetInteger(0, UI_LBL_TS_B, OBJPROP_COLOR, lbl_txt);
   ObjectSetInteger(0, UI_LBL_BE_B, OBJPROP_COLOR, lbl_txt);

   // ===== TOGGLE BARVY =====
   if(!slotOn)
   {
      ObjectSetInteger(0, UI_CHK_SL_B, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_CHK_TP_B, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_TGL_EQ_B, OBJPROP_BGCOLOR, ctrl_off);
      ObjectSetInteger(0, UI_CHK_TS_B, OBJPROP_BGCOLOR, ctrl_off);
   }
   else
   {
      RenderSlotB_SLTPRow();
      RenderSlotB_TSBERow();
   }
}


// --------------------------------------------------
// BLOK 11.22 – UI: PANEL_TITLE (RENDER – FIXNÍ)
// Účel:
//  - vykreslí statický titulek panelu
//  - BEZ collapse / expand
// --------------------------------------------------
void RenderPanelTitle()
{
   if(ObjectFind(0, PANEL_TITLE) < 0)
      ObjectCreate(0, PANEL_TITLE, OBJ_LABEL, 0, 0, 0);

   ObjectSetInteger(0, PANEL_TITLE, OBJPROP_CORNER, CORNER_LEFT_UPPER);

   ObjectSetInteger(
      0,
      PANEL_TITLE,
      OBJPROP_XDISTANCE,
      UI_OffsetX + 5
   );

   ObjectSetInteger(
      0,
      PANEL_TITLE,
      OBJPROP_YDISTANCE,
      UI_OffsetY + 5
   );

   ObjectSetInteger(0, PANEL_TITLE, OBJPROP_COLOR, clrWhite);
   ObjectSetInteger(0, PANEL_TITLE, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, PANEL_TITLE, OBJPROP_BACK, false);

   ObjectSetString(
      0,
      PANEL_TITLE,
      OBJPROP_TEXT,
      "EAXSDL_Learning"
   );
}


// --------------------------------------------------
// BLOK 11.30 – UI: COND_LABEL (FIXNÍ)
// --------------------------------------------------
void RenderCondLabel()
{
   const int X = 25;    // uvnitř panelu
   const int Y = 90;   // stejná řada jako COND_DIR
   const int BASELINE_FIX_Y = 13;

   if(ObjectFind(0, COND_LABEL) < 0)
      ObjectCreate(0, COND_LABEL, OBJ_LABEL, 0, 0, 0);
      
   ObjectSetInteger(0, COND_LABEL, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, COND_LABEL, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, COND_LABEL, OBJPROP_YDISTANCE, Y + BASELINE_FIX_Y);
   ObjectSetInteger(0, COND_LABEL, OBJPROP_COLOR, clrWhite);
   ObjectSetInteger(0, COND_LABEL, OBJPROP_FONTSIZE, 8);
   ObjectSetInteger(0, COND_LABEL, OBJPROP_BACK, false);

   ObjectSetString(0, COND_LABEL, OBJPROP_TEXT, "Cond:");
}


// --------------------------------------------------
// BLOK 11.31 – UI: COND_DIR IndicatorBox (FIXNÍ)
// --------------------------------------------------
void RenderCondDirBox()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 110;    // POSUNUTO VLEVO
   const int Y = 100;   // STEJNÁ ŘADA JAKO COND

   const int W = 85;    // šířka boxu
   const int H = 40;    // výška boxu

   const int BASELINE_FIX_Y = 6;

   string bgName  = "COND_DIR_BG";
   string txtName = "COND_DIR_TXT";

  // ===== BARVA PODLE SMĚRU SDL =====
color bgColor;
string txt;

if(!SDL_Direction_Ready_RT)
{
   bgColor = UI_Color_Secondary_BG_Inactive;
   txt = "---";
}
else if(SDL_Direction_RT == 1)
{
   bgColor = UI_Color_Buy_BG_Active;
   txt = "Long";
}
else // SDL_Direction_RT == -1
{
   bgColor = UI_Color_Sell_BG_Active;
   txt = "Short";
}

   // ===== POZADÍ =====
   if(ObjectFind(0, bgName) < 0)
      ObjectCreate(0, bgName, OBJ_RECTANGLE_LABEL, 0, 0, 0);

   ObjectSetInteger(0, bgName, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, bgName, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, bgName, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, bgName, OBJPROP_XSIZE, W);
   ObjectSetInteger(0, bgName, OBJPROP_YSIZE, H);
   ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR, bgColor);
   ObjectSetInteger(0, bgName, OBJPROP_COLOR, clrDimGray);
   ObjectSetInteger(0, bgName, OBJPROP_BORDER_TYPE, BORDER_FLAT);
   ObjectSetInteger(0, bgName, OBJPROP_BACK, false);

   // ===== TEXT =====
   if(ObjectFind(0, txtName) < 0)
      ObjectCreate(0, txtName, OBJ_LABEL, 0, 0, 0);

   ObjectSetInteger(0, txtName, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, txtName, OBJPROP_XDISTANCE, X + 8);
   ObjectSetInteger(0, txtName, OBJPROP_YDISTANCE, Y + BASELINE_FIX_Y);
   ObjectSetInteger(0, txtName, OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetInteger(0, txtName, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetString (0, txtName, OBJPROP_TEXT, txt);
}


// --------------------------------------------------
// BLOK 11.50 – UI: UPDATE COND_DIR (runtime)
// --------------------------------------------------
void UpdateCondDirUI()
{
   string bgName  = "COND_DIR_BG";
   string txtName = "COND_DIR_TXT";

   if(ObjectFind(0, bgName) < 0 || ObjectFind(0, txtName) < 0)
      return;

   color bgColor;
   string txt;

   if(!SDL_Direction_Ready_RT)
   {
      bgColor = UI_Color_Secondary_BG_Inactive;
      txt = "---";
   }
   else if(SDL_Direction_RT == 1)
   {
      bgColor = UI_Color_Buy_BG_Active;
      txt = "LONG";
   }
   else // SDL_Direction_RT == -1
   {
      bgColor = UI_Color_Sell_BG_Active;
      txt = "SHORT";
   }

   ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR, bgColor);
   ObjectSetString (0, txtName, OBJPROP_TEXT, txt);
}


// --------------------------------------------------
// BLOK 11.55 – UI: UPDATE XS (runtime)
// --------------------------------------------------
void UpdateXSUI()
{
   string bgName = "XS_BG";

   if(ObjectFind(0, bgName) < 0)
      return;

   // Bez XS → šedá
   if(!XS_Event_RT)
   {
      ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR,
                       UI_Color_Secondary_BG_Inactive);
      return;
   }

   // XS → barva podle směru (COND_DIR)
   if(SDL_Direction_RT == 1)
   {
      ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR,
                       UI_Color_Buy_BG_Active);
   }
   else if(SDL_Direction_RT == -1)
   {
      ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR,
                       UI_Color_Sell_BG_Active);
   }
}


// --------------------------------------------------
// BLOK 11.32 – UI: XS IndicatorBox (FIXNÍ)
// --------------------------------------------------
void RenderXSBox()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 205;   // těsně za COND_DIR
   const int Y = 100;
   const int S = 40;    // velikost čtverce
   const int BASELINE_FIX_Y = 6;

   string bgName  = "XS_BG";
   string txtName = "XS_TXT";

   // ===== VÝCHOZÍ STAV =====
   color  bgColor = UI_Color_Secondary_BG_Inactive;
   string txt     = "XS";

   // ===== POZADÍ =====
   if(ObjectFind(0, bgName) < 0)
      ObjectCreate(0, bgName, OBJ_RECTANGLE_LABEL, 0, 0, 0);

   ObjectSetInteger(0, bgName, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, bgName, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, bgName, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, bgName, OBJPROP_XSIZE, S);
   ObjectSetInteger(0, bgName, OBJPROP_YSIZE, S);
   ObjectSetInteger(0, bgName, OBJPROP_BGCOLOR, bgColor);
   ObjectSetInteger(0, bgName, OBJPROP_COLOR, clrDimGray);
   ObjectSetInteger(0, bgName, OBJPROP_BORDER_TYPE, BORDER_FLAT);
   ObjectSetInteger(0, bgName, OBJPROP_BACK, false);

   // ===== TEXT =====
   if(ObjectFind(0, txtName) < 0)
      ObjectCreate(0, txtName, OBJ_LABEL, 0, 0, 0);

   ObjectSetInteger(0, txtName, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, txtName, OBJPROP_XDISTANCE, X + 10);
   ObjectSetInteger(0, txtName, OBJPROP_YDISTANCE, Y + BASELINE_FIX_Y);
   ObjectSetInteger(0, txtName, OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetInteger(0, txtName, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetString (0, txtName, OBJPROP_TEXT, txt);
}


// --------------------------------------------------
// BLOK 11.33 – UI: SDL selector S1 (RENDER – FIXNÍ)
// Účel:
//  - vizuální indikace SDL1
//  - barva podle směru SDL1
//  - bez logiky (jen render)
// --------------------------------------------------
void RenderS1Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 250;   // XS_X (205) + XS_SIZE (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, BTN_S1) < 0)
      ObjectCreate(0, BTN_S1, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_S1, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_S1, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_S1, OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, BTN_S1, OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, BTN_S1, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_S1, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_S1, OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, BTN_S1, OBJPROP_TEXT, "S1");

   // ===== BARVA PODLE SDL1 SMĚRU =====
   color bgColor = UI_Color_Secondary_BG_Inactive;

   if(SDL1_Direction_RT == 1)
      bgColor = UI_Color_Buy_BG_Active;
   else if(SDL1_Direction_RT == -1)
      bgColor = UI_Color_Sell_BG_Active;

   ObjectSetInteger(0, BTN_S1, OBJPROP_BGCOLOR, bgColor);
}


// --------------------------------------------------
// BLOK 11.34 – UI: SDL selector S2 (RENDER – FIXNÍ)
// Účel:
//  - vizuální placeholder pro SDL2
//  - BEZ návaznosti na runtime (zatím)
// --------------------------------------------------
void RenderS2Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 295;   // S1_X (250) + S (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, BTN_S2) < 0)
      ObjectCreate(0, BTN_S2, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_S2, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_S2, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_S2, OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, BTN_S2, OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, BTN_S2, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_S2, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_S2, OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, BTN_S2, OBJPROP_TEXT, "S2");

   // ZATÍM NEUTRÁLNÍ BARVA (SDL2 runtime neexistuje)
   ObjectSetInteger(0, BTN_S2, OBJPROP_BGCOLOR,
                    UI_Color_Secondary_BG_Inactive);
}


// --------------------------------------------------
// BLOK 11.35 – UI: SDL selector S3 (RENDER – FIXNÍ)
// Účel:
//  - vizuální placeholder pro SDL3
//  - BEZ návaznosti na runtime (zatím)
// --------------------------------------------------
void RenderS3Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 340;   // S2_X (295) + S (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, BTN_S3) < 0)
      ObjectCreate(0, BTN_S3, OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, BTN_S3, OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, BTN_S3, OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, BTN_S3, OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, BTN_S3, OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, BTN_S3, OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, BTN_S3, OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, BTN_S3, OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, BTN_S3, OBJPROP_TEXT, "S3");

   // ZATÍM NEUTRÁLNÍ BARVA (SDL3 runtime neexistuje)
   ObjectSetInteger(0, BTN_S3, OBJPROP_BGCOLOR,
                    UI_Color_Secondary_BG_Inactive);
}


// --------------------------------------------------
// BLOK 11.36 – UI: MA selector M1 (RENDER – FIXNÍ)
// Účel:
//  - vizuální placeholder pro MA1
//  - BEZ návaznosti na runtime (zatím)
// --------------------------------------------------
void RenderM1Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 385;   // S3_X (340) + S (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, "UI_BTN_M1") < 0)
      ObjectCreate(0, "UI_BTN_M1", OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, "UI_BTN_M1", OBJPROP_TEXT, "M1");

   // ZATÍM NEUTRÁLNÍ BARVA (MA runtime neexistuje)
   ObjectSetInteger(0, "UI_BTN_M1", OBJPROP_BGCOLOR,
                    UI_Color_Secondary_BG_Inactive);
}


// --------------------------------------------------
// BLOK 11.37 – UI: MA selector M2 (RENDER – FIXNÍ)
// Účel:
//  - vizuální placeholder pro MA2
//  - BEZ návaznosti na runtime (zatím)
// --------------------------------------------------
void RenderM2Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 430;   // M1_X (385) + S (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, "UI_BTN_M2") < 0)
      ObjectCreate(0, "UI_BTN_M2", OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, "UI_BTN_M2", OBJPROP_TEXT, "M2");

   // ZATÍM NEUTRÁLNÍ BARVA (MA runtime neexistuje)
   ObjectSetInteger(0, "UI_BTN_M2", OBJPROP_BGCOLOR,
                    UI_Color_Secondary_BG_Inactive);
}


// --------------------------------------------------
// BLOK 11.38 – UI: MA selector M3 (RENDER – FIXNÍ)
// Účel:
//  - vizuální placeholder pro MA3
//  - BEZ návaznosti na runtime (zatím)
// --------------------------------------------------
void RenderM3Button()
{
   // ===== FIXNÍ POZICE A ROZMĚRY =====
   const int X = 475;   // M2_X (430) + S (40) + mezera
   const int Y = 100;
   const int S = 40;

   if(ObjectFind(0, "UI_BTN_M3") < 0)
      ObjectCreate(0, "UI_BTN_M3", OBJ_BUTTON, 0, 0, 0);

   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_XDISTANCE, X);
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_YDISTANCE, Y);
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_XSIZE,     S);
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_YSIZE,     S);

   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_CORNER, CORNER_LEFT_UPPER);
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_FONTSIZE, UI_Font_Size);
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_COLOR, UI_Color_Secondary_Text);
   ObjectSetString (0, "UI_BTN_M3", OBJPROP_TEXT, "M3");

   // ZATÍM NEUTRÁLNÍ BARVA (MA runtime neexistuje)
   ObjectSetInteger(0, "UI_BTN_M3", OBJPROP_BGCOLOR,
                    UI_Color_Secondary_BG_Inactive);
}


// --------------------------------------------------
// BLOK 11.15 – UI: SDL selector S1
// Umístění: řádek COND, vpravo od XS
// --------------------------------------------------

//ObjectCreate(0, BTN_S1, OBJ_BUTTON, 0, 0, 0);

// === pozice ===
//ObjectSetInteger(0, BTN_S1, OBJPROP_XDISTANCE,
//                 UI_Axis_X + UI_Spacing_H + UI_SmallBtn_Height);

//ObjectSetInteger(0, BTN_S1, OBJPROP_YDISTANCE, UI_Row_Cond_Y);

// === rozměry (proporční, řízené MASTER) ===
//ObjectSetInteger(0, BTN_S1, OBJPROP_XSIZE, UI_SmallBtn_Height);
//ObjectSetInteger(0, BTN_S1, OBJPROP_YSIZE, UI_SmallBtn_Height);

// === text ===
//ObjectSetString (0, BTN_S1, OBJPROP_TEXT, "S1");
//ObjectSetInteger(0, BTN_S1, OBJPROP_COLOR, UI_Color_Secondary_Text);

// === barva podle SDL1 ===
//color sdl1Bg;

//if(ActiveSDL_RT == 1)
//   sdl1Bg = GetSDLColorBase(1, SDL1_Direction_RT);
//else
//   sdl1Bg = GetSDLColorDim (1, SDL1_Direction_RT);

//ObjectSetInteger(0, BTN_S1, OBJPROP_BGCOLOR, sdl1Bg);


// --------------------------------------------------
// BLOK 11.98 – Timer hlídač UI (MT4 fallback)
// --------------------------------------------------
void OnTimer()
{
   if(ObjectFind(0, "UI_Panel_Title") < 0)
   {
      Print("UI missing (timer) → restoring panel");
      RenderUIPanel();
   }
}


//+------------------------------------------------------------------+
//| Funkce: OnDeinit                                                  |
//| Volá se při odpojení EA z grafu                                   |
//+------------------------------------------------------------------+

// --------------------------------------------------
// BLOK 11.99 – OnDeinit
// Účel:
//  - korektní úklid všech UI objektů EA
// --------------------------------------------------
void OnDeinit(const int reason)
{

   EventKillTimer();

   if(DebugPrint)
      Print("EAXSDL_Learning: EA bylo odebráno z grafu.");

   // === HLAVNÍ PANEL ===
   ObjectDelete(0, PANEL_BG);
   ObjectDelete(0, PANEL_TITLE);
   ObjectDelete(0, STATUS_TEXT);

   // === HLAVNÍ TLAČÍTKA ===
   ObjectDelete(0, BTN_SELL);
   ObjectDelete(0, BTN_BUY);

   // === COND / XS ===
   ObjectDelete(0, COND_LABEL);
   ObjectDelete(0, "COND_DIR_BG");
   ObjectDelete(0, "COND_DIR_TXT");
   ObjectDelete(0, "XS_BG");
   ObjectDelete(0, "XS_TXT");

   // === SDL SELECTORY ===
   ObjectDelete(0, BTN_S1);
   ObjectDelete(0, BTN_S2);
   ObjectDelete(0, BTN_S3);

   // === MA SELECTORY ===
   ObjectDelete(0, "UI_BTN_M1");
   ObjectDelete(0, "UI_BTN_M2");
   ObjectDelete(0, "UI_BTN_M3");

   // === ZBYTKY STARÝCH VERZÍ (OCHRANA) ===
   ObjectDelete(0, "COND_DIR");
   ObjectDelete(0, "COND_XS");
   ObjectDelete(0, "COND_XS_BG");
   ObjectDelete(0, "COND_XS_TXT");
   ObjectDelete(0, "COND_DIR_TXT_OLD");
   ObjectDelete(0, PANEL_BG_VO);
   ObjectDelete(0, PANEL_TITLE_VO);
   ObjectDelete(0, BTN_MARKET_SELL);
   ObjectDelete(0, BTN_MARKET_BUY);
   ObjectDelete(0, BTN_PENDING_SELL);
   ObjectDelete(0, BTN_PENDING_BUY);
   ObjectDelete(0, BTN_CANCEL_ALL_PENDING);
   ObjectDelete(0, BTN_CLOSE_ALL_MARKET);
   ObjectDelete(0, UI_LBL_LOTS_A);
   ObjectDelete(0, UI_EDT_LOTS_A);
   ObjectDelete(0, UI_BTN_LOTS_X2_A);
   ObjectDelete(0, UI_BTN_LOTS_D2_A);
   ObjectDelete(0, UI_TGL_EQ_A);
   ObjectDelete(0, UI_CHK_SL_A);
   ObjectDelete(0, UI_LBL_SL_A);
   ObjectDelete(0, UI_EDT_SL_A);
   ObjectDelete(0, UI_CHK_TP_A);
   ObjectDelete(0, UI_LBL_TP_A);
   ObjectDelete(0, UI_EDT_TP_A);
// --- Slot A / Row 3 – TS / BE ---
   ObjectDelete(0, UI_CHK_TS_A);
   ObjectDelete(0, UI_LBL_TS_A);
   ObjectDelete(0, UI_EDT_TS_A);
   ObjectDelete(0, UI_LBL_BE_A);
   ObjectDelete(0, UI_EDT_BE_A);

// ==================================================
// SLOT B – UI CLEANUP
// ==================================================

// --- Slot B / Row 1 – LOTS ---
ObjectDelete(0, UI_LBL_LOTS_B);
ObjectDelete(0, UI_EDT_LOTS_B);
ObjectDelete(0, UI_BTN_LOTS_X2_B);
ObjectDelete(0, UI_BTN_LOTS_D2_B);

// --- Slot B / Row 2 – SL / TP ---
ObjectDelete(0, UI_TGL_EQ_B);
ObjectDelete(0, UI_CHK_SL_B);
ObjectDelete(0, UI_LBL_SL_B);
ObjectDelete(0, UI_EDT_SL_B);
ObjectDelete(0, UI_CHK_TP_B);
ObjectDelete(0, UI_LBL_TP_B);
ObjectDelete(0, UI_EDT_TP_B);

// --- Slot B / Row 3 – TS / BE ---
ObjectDelete(0, UI_CHK_TS_B);
ObjectDelete(0, UI_LBL_TS_B);
ObjectDelete(0, UI_EDT_TS_B);
ObjectDelete(0, UI_LBL_BE_B);
ObjectDelete(0, UI_EDT_BE_B);

// --– UI: Toggle UseSlotA / UseSlotB –--
ObjectDelete(0, "UI_Toggle_UseSlotA");
ObjectDelete(0, "UI_Toggle_UseSlotB");  
   
}


//+------------------------------------------------------------------+
//| Funkce: OnTick                                                    |
//| Volá se při každém novém ticku (pohybu ceny)                      |
//+------------------------------------------------------------------+

// --------------------------------------------------
// BLOK 12.10 – Obchodní orchestrace
// --------------------------------------------------

void OnTick()
{
   CheckNewTradingDay();
   CheckDailyPLProtection();

   if(DailyPL_Locked_RT)
      return;

   // --- RB logika / XS / Pending ---
   ProcessTradingLogic();

   // --- Pending → HIT (tick) ---
   ProcessPendingEntry_Tick();

   // --- Slot FSM: sync z reálných pozic ---
   SyncSlotRuntimeState();        // 05.31
   UpdateSlotFSM_FromRuntime();   // 05.42

   // --- ENTRY orchestrátor ---
   ProcessSlotEntry();            // 07.10
}


// -------------------------------------------------
// BLOK 11.18 – Uložení konfigurace do CSV
// -------------------------------------------------

void SaveConfigToCSV()
{
   int handle = FileOpen(CONFIG_FILE, FILE_WRITE | FILE_CSV);
   if(handle == INVALID_HANDLE)
   {
      Print("CHYBA: Nelze otevrit config CSV pro zapis!");
      return;
   }

   FileWrite(handle, "AllowSell", AllowSell ? 1 : 0);
   FileWrite(handle, "AllowBuy",  AllowBuy  ? 1 : 0);
   
   FileWrite(handle, "UseSlotA", UseSlotA ? 1 : 0);
   FileWrite(handle, "UseSlotB", UseSlotB ? 1 : 0);


   // --- SLOT A PARAMETRY ---
   FileWrite(handle, "SlotA_Lots", SlotA_Lots);
   FileWrite(handle, "SlotA_SL",   SlotA_SL);
   FileWrite(handle, "SlotA_TP",   SlotA_TP);
   FileWrite(handle, "SlotA_TS",   SlotA_TS);
   FileWrite(handle, "SlotA_BE",   SlotA_BE);

   // --- SLOT A TOGGLES ---
   FileWrite(handle, "SlotA_SL_Enable",   SlotA_SL_Enable_RT   ? 1 : 0);
   FileWrite(handle, "SlotA_TP_Enable",   SlotA_TP_Enable_RT   ? 1 : 0);
   FileWrite(handle, "SlotA_TSBE_Enable", SlotA_TSBE_Enable_RT ? 1 : 0);

   // --- SLOT B PARAMETRY ---
   FileWrite(handle, "SlotB_Lots", SlotB_Lots);
   FileWrite(handle, "SlotB_SL",   SlotB_SL);
   FileWrite(handle, "SlotB_TP",   SlotB_TP);
   FileWrite(handle, "SlotB_TS",   SlotB_TS);
   FileWrite(handle, "SlotB_BE",   SlotB_BE);

   // --- SLOT B TOGGLES ---
   FileWrite(handle, "SlotB_SL_Enable",   SlotB_SL_Enable_RT   ? 1 : 0);
   FileWrite(handle, "SlotB_TP_Enable",   SlotB_TP_Enable_RT   ? 1 : 0);
   FileWrite(handle, "SlotB_TSBE_Enable", SlotB_TSBE_Enable_RT ? 1 : 0);

   FileClose(handle);
}


// --------------------------------------------------
// BLOK 11.19 – Načtení konfigurace z CSV
// --------------------------------------------------

void LoadConfigFromCSV()
{
   if(!FileIsExist(CONFIG_FILE))
      return;

   int handle = FileOpen(CONFIG_FILE, FILE_READ | FILE_CSV);
   if(handle == INVALID_HANDLE)
      return;

   while(!FileIsEnding(handle))
   {
      string key   = FileReadString(handle);
      string value = FileReadString(handle);

      if(key == "AllowSell")
         AllowSell = (StringToInteger(value) == 1);

      if(key == "AllowBuy")
         AllowBuy = (StringToInteger(value) == 1);
         
      if(key == "UseSlotA")
         UseSlotA = (StringToInteger(value) == 1);

      if(key == "UseSlotB")
         UseSlotB = (StringToInteger(value) == 1);

         

      // --- SLOT A PARAMETRY ---
      if(key == "SlotA_Lots")
         SlotA_Lots = StringToDouble(value);

      if(key == "SlotA_SL")
         SlotA_SL = StringToDouble(value);

      if(key == "SlotA_TP")
         SlotA_TP = StringToDouble(value);

      if(key == "SlotA_TS")
         SlotA_TS = StringToDouble(value);

      if(key == "SlotA_BE")
         SlotA_BE = StringToDouble(value);

      // --- SLOT A TOGGLES ---
      if(key == "SlotA_SL_Enable")
         SlotA_SL_Enable_RT = (StringToInteger(value) == 1);

      if(key == "SlotA_TP_Enable")
         SlotA_TP_Enable_RT = (StringToInteger(value) == 1);

      if(key == "SlotA_TSBE_Enable")
         SlotA_TSBE_Enable_RT = (StringToInteger(value) == 1);

      // --- SLOT B PARAMETRY ---
      if(key == "SlotB_Lots")
         SlotB_Lots = StringToDouble(value);

      if(key == "SlotB_SL")
         SlotB_SL = StringToDouble(value);

      if(key == "SlotB_TP")
         SlotB_TP = StringToDouble(value);

      if(key == "SlotB_TS")
         SlotB_TS = StringToDouble(value);

      if(key == "SlotB_BE")
         SlotB_BE = StringToDouble(value);

      // --- SLOT B TOGGLES ---
      if(key == "SlotB_SL_Enable")
         SlotB_SL_Enable_RT = (StringToInteger(value) == 1);

      if(key == "SlotB_TP_Enable")
         SlotB_TP_Enable_RT = (StringToInteger(value) == 1);

      if(key == "SlotB_TSBE_Enable")
         SlotB_TSBE_Enable_RT = (StringToInteger(value) == 1);
   }

   FileClose(handle);
}



// --------------------------------------------------
// BLOK 09.11 – Detekce uzavřené RB svíčky
// --------------------------------------------------

bool IsNewBarClosed()
{
   datetime barTime = Time[1];   // čas PRÁVĚ uzavřené svíčky

   if(barTime != LastBarTime_RT)
   {
      LastBarTime_RT = barTime;
      return true;
   }
   return false;
}


// --------------------------------------------------
// BLOK 09.12 – XS podmínka (MERGED SDL, AUTORITATIVNÍ)
// --------------------------------------------------
bool CheckXSCondition()
{
   if(!SDL_Direction_Ready_RT)
      return false;

   double sdl    = SDL_Value_RT;                 // JEDINÁ PLATNÁ SDL
   double offset = Inp_SDL_OffsetTicks * Point;

   // BUY – SDL roste
   if(SDL_Direction_RT == 1)
   {
      if(Low[1] < (sdl - offset))
         return true;
   }

   // SELL – SDL klesá
   if(SDL_Direction_RT == -1)
   {
      if(High[1] > (sdl + offset))
         return true;
   }

   return false;
}




// --------------------------------------------------
// BLOK 09.13 – XS Event Orchestrátor
// --------------------------------------------------
void UpdateXSEvent()
{
   XS_Event_RT = false;

   if(CheckXSCondition())
   {
      XS_Event_RT = true;

   

     // --------------------------------------------------
     // BLOK 09.20 – START PENDING ENTRY (RB ONLY)
     // --------------------------------------------------
if(!PendingEntry_Active_RT && !XS_Consumed_RT)
{
   PendingEntry_Active_RT = true;
   PendingEntry_Dir_RT    = SDL_Direction_RT;
   PendingEntry_Hit_RT    = false;

   if(PendingEntry_Dir_RT == 1)      // BUY
      PendingEntry_Price_RT = High[1];

   if(PendingEntry_Dir_RT == -1)     // SELL
      PendingEntry_Price_RT = Low[1];

   XS_Consumed_RT = true;

   if(DebugPrint)
      Print("PENDING START @ ", PendingEntry_Price_RT);
}

   }
}


// --------------------------------------------------
// BLOK 08.11 – Čtení SDL1 hodnoty z indikátoru
// --------------------------------------------------

double GetSDL1Value(int shift)
{
   return iCustom(
      NULL,
      0,
      Inp_SDL1_IndicatorName,
      Inp_SDL1_Period,
      Inp_SDL1_Method,
      Inp_SDL1_Price,
      shift
   );
}


// --------------------------------------------------
// BLOK 08.20 – Určení směru SDL (z MERGED hodnot)
// --------------------------------------------------
int CalculateSDL1Direction()
{
   // bezpečnost: pokud ještě nemáme platná data
   if(SDL_Value_RT == EMPTY_VALUE || SDL_Value_Prev_RT == EMPTY_VALUE)
      return SDL_Direction_RT;   // drž poslední směr

   if(SDL_Value_RT > SDL_Value_Prev_RT)
      return 1;    // LONG

   if(SDL_Value_RT < SDL_Value_Prev_RT)
      return -1;   // SHORT

   // BEZ FLATU – držíme poslední směr
   return SDL_Direction_RT;
}


// --------------------------------------------------
// BLOK 08.21 – Update SDL1 runtime stavu
// --------------------------------------------------

void UpdateSDL1State()
{
   SDL1_Value_Current = GetSDL1Value(1);
   SDL1_Value_Prev    = GetSDL1Value(2);
   SDL1_Direction_RT  = CalculateSDL1Direction();
}


// --------------------------------------------------
// BLOK 08.42 – Active SDL direction adapter
// --------------------------------------------------
int GetActiveSDLDirection()
{
   switch(ActiveSDL_RT)
   {
      case 1: return SDL1_Direction_RT;
      // case 2: return SDL2_Direction_RT; // později
      // case 3: return SDL3_Direction_RT; // později
   }
   return 0;
}









// --------------------------------------------------
// BLOK 08.40 – SDL COLOR ADAPTER (STUB)
// --------------------------------------------------

color GetSDLColorBase(int sdlIndex, int sdlDirection)
{
   if(sdlDirection == 0)
      return clrDimGray;

   switch(sdlIndex)
   {
      case 1: return (sdlDirection > 0 ? clrDodgerBlue : clrGold);
      case 2: return (sdlDirection > 0 ? clrLimeGreen  : clrRed);
      case 3: return (sdlDirection > 0 ? clrAqua       : clrOrange);
   }

   return clrDimGray;
}

color GetSDLColorDim(int sdlIndex, int sdlDirection)
{
   color base = GetSDLColorBase(sdlIndex, sdlDirection);

   // jednoduché tlumení (stub)
   return (color)ColorToARGB(base, 120);
}


// --------------------------------------------------
// BLOK 08.41 – SDL DIRECTION ADAPTER (DISABLED – SDL1 používá vlastní runtime)
// --------------------------------------------------

//int GetSDLDirections(int sdlIndex)
//{
   // STUB – zatím všichni používají stejné SDL hodnoty
   // později se rozdělí podle sdlIndex (1/2/3)

  // double sdl_curr = GetSDLValue(1);
  // double sdl_prev = GetSDLValue(2);

   //if(sdl_curr > sdl_prev) return 1;   // LONG
   //if(sdl_curr < sdl_prev) return -1;  // SHORT
   //return 0;                            // NONE
//}


// --------------------------------------------------
// BLOK 08.12 – SDL READ & MERGE (autoritatívní)
// Účel:
//  - načíst SDL z obou bufferů (UP / DOWN)
//  - sloučit do jedné hodnoty SDL_Value_RT
//  - zajistit funkčnost LONG i SHORT
// --------------------------------------------------

// runtime SDL hodnoty (autorita)
double SDL_Value_RT      = EMPTY_VALUE;
double SDL_Value_Prev_RT = EMPTY_VALUE;

void UpdateSDL_Merged()
{
   // buffer 0 = SDL UP
   double up_1 = iCustom(
      NULL, 0,
      Inp_SDL1_IndicatorName,
      Inp_SDL1_Period,
      Inp_SDL1_Method,
      Inp_SDL1_Price,
      0, 1
   );

   double up_2 = iCustom(
      NULL, 0,
      Inp_SDL1_IndicatorName,
      Inp_SDL1_Period,
      Inp_SDL1_Method,
      Inp_SDL1_Price,
      0, 2
   );

   // buffer 1 = SDL DOWN
   double dn_1 = iCustom(
      NULL, 0,
      Inp_SDL1_IndicatorName,
      Inp_SDL1_Period,
      Inp_SDL1_Method,
      Inp_SDL1_Price,
      1, 1
   );

   double dn_2 = iCustom(
      NULL, 0,
      Inp_SDL1_IndicatorName,
      Inp_SDL1_Period,
      Inp_SDL1_Method,
      Inp_SDL1_Price,
      1, 2
   );

   // --- MERGE AKTUÁLNÍ SDL ---
   if(up_1 != EMPTY_VALUE)
      SDL_Value_RT = up_1;
   else if(dn_1 != EMPTY_VALUE)
      SDL_Value_RT = dn_1;
   else
      SDL_Value_RT = EMPTY_VALUE;

   // --- MERGE PŘEDCHOZÍ SDL ---
   if(up_2 != EMPTY_VALUE)
      SDL_Value_Prev_RT = up_2;
   else if(dn_2 != EMPTY_VALUE)
      SDL_Value_Prev_RT = dn_2;
   else
      SDL_Value_Prev_RT = EMPTY_VALUE;
}


// --------------------------------------------------
// BLOK 08.22 – UPDATE ACTIVE SDL DIRECTION
// Účel:
//  - přepočítá směr podle ActiveSDL_RT
//  - JEDINÉ místo zápisu do SDL_Direction_RT
// Trigger:
//  - nový RB bar
//  - změna ActiveSDL_RT
// --------------------------------------------------
void UpdateActiveSDLDirection()
{
   if(ActiveSDL_RT == 1)
   {
      // SDL1_Direction_RT je VŽDY +1 nebo -1
      SDL_Direction_RT = SDL1_Direction_RT;
   }
}




// --------------------------------------------------
// BLOK 12.21 – ProcessTradingLogic
// --------------------------------------------------

void ProcessTradingLogic()
{

    // STUB: dočasná SDL data – BLOK 11 je nahradí
  
   // SDL1_Value[1] = 0.0;
 
    
// =================================================================================================
// SEKCE 08 – SDL (RB LOGIKA)
// Účel: čtení hodnot SDL, směr, runtime stav
// =================================================================================================


// --------------------------------------------------
// BLOK 08.30 – RB UPDATE – směr / XS / Pending Entry
// (FSM řízená inicializace cond_dir)
// --------------------------------------------------
if(IsNewBarClosed())
{
   XS_Consumed_RT = false;

   // -------------------------------------------
   // 1) SDL READ & DIRECTION (DATA VRSTVA)
   // -------------------------------------------
   UpdateSDL_Merged();
   SDL1_Direction_RT = CalculateSDL1Direction();
   UpdateActiveSDLDirection();

   // -------------------------------------------
   // 2) FSM_IDLE → FSM_WAIT_XS (PRVNÍ RB PO STARTU)
   // -------------------------------------------
   if(EA_FSM_State == FSM_IDLE)
   {
      SDL_Direction_Ready_RT = true;   // cond_dir se stává ready
      EA_FSM_State           = FSM_WAIT_XS;
   }

   // -------------------------------------------
   // 3) FSM návrat po ENTRY_CONSUMED
   // -------------------------------------------
   if(EA_FSM_State == FSM_ENTRY_CONSUMED)
      EA_FSM_State = FSM_WAIT_XS;

   // -------------------------------------------
   // 4) XS event
   // -------------------------------------------
   UpdateXSEvent();
   UpdateXSUI();

   // -------------------------------------------
   // 5) PENDING CANCEL – SDL CHANGE
   // -------------------------------------------
   if(PendingEntry_Active_RT && PendingEntry_Dir_RT != SDL_Direction_RT)
   {
      PendingEntry_Active_RT = false;
      PendingEntry_Dir_RT    = 0;
      PendingArrow_RB_Time   = 0;

      EA_FSM_State           = FSM_IDLE;
      SDL_Direction_Ready_RT = false;
   }

   // -------------------------------------------
   // 6) PENDING CANCEL – RUNAWAY
   // -------------------------------------------
   if(PendingEntry_Active_RT)
   {
      double sdl = SDL_Value_RT;

      if(PendingEntry_Dir_RT == 1 && Low[1] > sdl)
      {
         PendingEntry_Active_RT = false;
         PendingEntry_Dir_RT    = 0;
         PendingArrow_RB_Time   = 0;

         EA_FSM_State           = FSM_IDLE;
         SDL_Direction_Ready_RT = false;
      }

      if(PendingEntry_Dir_RT == -1 && High[1] < sdl)
      {
         PendingEntry_Active_RT = false;
         PendingEntry_Dir_RT    = 0;
         PendingArrow_RB_Time   = 0;

         EA_FSM_State           = FSM_IDLE;
         SDL_Direction_Ready_RT = false;
      }
   }

   // -------------------------------------------
   // 7) PENDING START  <<< KLÍČOVÉ MÍSTO
   // -------------------------------------------
   if(XS_Event_RT && !PendingEntry_Active_RT && !XS_Consumed_RT)
   {
      PendingEntry_Active_RT = true;
      PendingEntry_Dir_RT    = SDL_Direction_RT;
      PendingArrow_RB_Time   = Time[1];   // IDENTITA ŠIPKY
      XS_Consumed_RT         = true;

      EA_FSM_State           = FSM_PENDING_CREATED;
   }

   // -------------------------------------------
   // 8) VISUAL
   // -------------------------------------------
   DrawPendingEntryArrow();

   // -------------------------------------------
   // 9) STOP LIFECYCLE (JEDINÉ MÍSTO)
   // -------------------------------------------
   ProcessStopLifecycle_RB();

   // -------------------------------------------
   // 10) MARKET ENTRY
   // -------------------------------------------
   ProcessMarketEntryFromPending_RB_SlotA();
   ProcessMarketEntryFromPending_RB_SlotB();

   // -------------------------------------------
   // 11) UI
   // -------------------------------------------
   UpdateCondDirUI();
}




// ------------------------------------------------
// BLOK 09.14 – Update XS event (volání v obchodní logice)    
   // umístěno v BLOK 12.11 – ProcessTradingLogic
// ------------------------------------------------
   
   UpdateXSEvent();

   // --- základní povolení ---
   bool buyNow  = CanTradeBuy();
   bool sellNow = CanTradeSell();

   if(buyNow != LastBuyState)
   {
      Print("LOGIC: BUY povolení změněno na ", buyNow ? "POVOLENO" : "ZAKÁZÁNO");
      LastBuyState = buyNow;
   }

   if(sellNow != LastSellState)
   {
      Print("LOGIC: SELL povolení změněno na ", sellNow ? "POVOLENO" : "ZAKÁZÁNO");
      LastSellState = sellNow;
   }

   // --- rozhodovací logika ---
bool canBuy  = CanAttemptBuy();
bool canSell = CanAttemptSell();


   if(canBuy != LastCanConsiderBuy)
   {
      Print("LOGIC: BUY lze ",
            canBuy ? "ZVAŽOVAT vstup" : "NEZVAŽOVAT vstup");
      LastCanConsiderBuy = canBuy;
   }

   if(canSell != LastCanConsiderSell)
   {
      Print("LOGIC: SELL lze ",
            canSell ? "ZVAŽOVAT vstup" : "NEZVAŽOVAT vstup");
      LastCanConsiderSell = canSell;
   }


// ----------------------------------------------------      
// BLOK 07.11 – Sloty při XS události (Entry reakce)
// ----------------------------------------------------

   // 1) Synchronizace reality (otevřené obchody)
   SyncSlotRuntimeState();

   
   // Sloty při XS události a zároveň BUY/SELL povolen)

   if(XS_Event_RT && (canBuy || canSell))
   {
      TryOpenSlotA();
      TryOpenSlotB();
   }
   

}


// --------------------------------------------------
// BLOK 08.31 – STOP LIFECYCLE (RB AUTORITA)
// Účel:
// - jediná autorita pro STOP invalidation
// - jediná autorita pro STOP replacement
// - STOP fyzicky „cestuje“ po každé RB
// --------------------------------------------------
void ProcessStopLifecycle_RB()
{
   // ==================================================
   // 1) INVALIDATION – okamžité zrušení STOP
   // ==================================================
   // - XS lifecycle skončil
   // - změna směru SDL
   // ==================================================
   if(!PendingEntry_Active_RT ||
      SDL_Direction_RT != PendingEntry_Dir_RT)
   {
      CancelSlotAPending();
      CancelSlotBPending();
      return;
   }

   // ==================================================
   // 2) REPLACEMENT – STOP na KAŽDOU RB
   // ==================================================
   // POŘADÍ JE KLÍČOVÉ:
   // 1) DELETE
   // 2) CREATE (nový STOP)
   // ==================================================

   // ---------- SLOT A ----------
   if(!SlotA_Open_RT)
   {
      CancelSlotAPending();
      ProcessStopEntryFromPending_RB_SlotA();
   }

   // ---------- SLOT B ----------
   if(!SlotB_Open_RT)
   {
      CancelSlotBPending();
      ProcessStopEntryFromPending_RB_SlotB();
   }
}


// --------------------------------------------------
// BLOK 07.13 – ENTRY GATE: globální BUY / SELL
// --------------------------------------------------
bool EntryGate_Direction(bool isBuy)
{
   if(isBuy)  return AllowBuy;
   else       return AllowSell;
}


// --------------------------------------------------
// BLOK 07.14 – ENTRY GATE: slotové povolení (A/B)
// --------------------------------------------------
bool EntryGate_Slot(bool isSlotA)
{
   if(isSlotA) return UseSlotA;
   else        return UseSlotB;
}


// --------------------------------------------------
// BLOK 07.15 – ENTRY GATE: finální povolení OrderSend
// --------------------------------------------------
bool EntryGate_Final(bool isBuy, bool isSlotA)
{
   if(!EntryGate_Direction(isBuy)) return false;
   if(!EntryGate_Slot(isSlotA))    return false;

   return true;
}




// ======================================================================================
// SEKCE 04 – OBCHODNÍ LOGIKA (ROZHODOVÁNÍ)
// Účel: má EA vůbec uvažovat o vstupu do trhu?
// =====================================================================================


// --------------------------------------------------
// BLOK 04.10 – Základní obchodní povolení
// --------------------------------------------------

bool CanTradeBuy()
{
   if(!AllowBuy)
      return false;

   return true;
}

bool CanTradeSell()
{
   if(!AllowSell)
      return false;

   return true;
}

// --------------------------------------------------
// BLOK 04.20 – Rozhodovací logika (Conditions OK)
// --------------------------------------------------

bool BuyConditionsOK()
{
   // ZATÍM ŽÁDNÉ TRŽNÍ PODMÍNKY
   return true;
}

bool SellConditionsOK()
{
   // ZATÍM ŽÁDNÉ TRŽNÍ PODMÍNKY
   return true;
}

// --------------------------------------------------
// BLOK 04.30 – CanAttemptBuy – MÁ SMYSL SE POKUSIT O BUY?
// --------------------------------------------------

bool CanAttemptBuy()
{
  
    // 1) globální povolení (UI, locky, čas, P&L atd.)
    if(!MayConsiderBuy())
    return false;


   // 2) SDL nedovoluje LONG
   if(SDL1_Direction_RT != 1)
   return false;


   // 3) nenastala XS událost
   if(!IsXSEvent())
      return false;

   return true;
}

// --------------------------------------------------
// BLOK 04.31 – CanAttemptSell – MÁ SMYSL SE POKUSIT O SELL?
// --------------------------------------------------

bool CanAttemptSell()
{
   // 1) globální povolení (UI, locky, čas, P&L atd.)
   if(!MayConsiderSell())
   return false;



   if(SDL1_Direction_RT != -1)
   return false;
   
   //enum SDLDirections - DEPRECATED

   if(!IsXSEvent())
      return false;

   return true;
}




// --------------------------------------------------
// BLOK 05.32 – Detekce otevřených BUY / SELL pozic
// --------------------------------------------------

bool HasOpenBuy()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() != Symbol())
         continue;

      if(OrderMagicNumber() != MagicNumber)
         continue;

      if(OrderType() == OP_BUY)
         return true;
   }
   return false;
}

bool HasOpenSell()
{
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
         continue;

      if(OrderSymbol() != Symbol())
         continue;

      if(OrderMagicNumber() != MagicNumber)
         continue;

      if(OrderType() == OP_SELL)
         return true;
   }
   return false;
}

// --------------------------------------------------
// BLOK 04.21 – MayConsider Buy / Sell - SMÍ EA VŮBEC ZVAŽOVAT VSTUP?
// --------------------------------------------------

bool MayConsiderBuy()
{
   // UI / povolení
   if(!AllowBuy)
      return false;

   // sem později přidáme:
   // - locky
   // - denní P&L
   // - časové bloky
   // - "už máme pending"
   // - "jsme v pozici"

   return true;
}

bool MayConsiderSell()
{
   if(!AllowSell)
      return false;

   return true;
}


// ============================================================================================
// SEKCE 10 – TRIGGER & MA
// Účel: abstrakce zdroje signálu (SDL / MA)
// ===========================================================================================


// --------------------------------------------------
// BLOK 10.10 – Základní definice směru a triggerů (stub)
// --------------------------------------------------

// --- SDL směr ---
//enum SDLDirections - DEPRECATED
//{
//   SDL_NONE,
//   SDL_LONG,
//   SDL_SHORT
//};

// --- MA identifikace ---
enum MAType
{
   MA_NONE,
   MA_1,
   MA_2,
   MA_3
};

// --- aktivní MA (zatím žádná) ---
MAType ActiveMA = MA_NONE;

// --- DOČASNÁ funkce: vrací směr SDL ---
//SDLDirections GetSDLDirections() - DEPRECATED
//{
   // TODO: napojit na skutečný SDL indikátor
 //  return SDL_LONG; // zatím napevno
//}


// --------------------------------------------------
// BLOK 10.11 – Zdroj triggeru (SDL / MA)
// --------------------------------------------------

enum TriggerSourceType
{
   TRIGGER_SDL,
   TRIGGER_MA
};

// --------------------------------------------------
// (dříve: BLOK 8.2)
// --------------------------------------------------

TriggerSourceType GetTriggerSource()
{
   if(ActiveMA != MA_NONE)
      return TRIGGER_MA;

   return TRIGGER_SDL;
}

// --------------------------------------------------
// BLOK 10.20 – XS událost (trigger stub)
// --------------------------------------------------

bool IsXSEvent()
{
   TriggerSourceType source = GetTriggerSource();

   if(source == TRIGGER_MA)
   {
      // TODO: cross RB x MA
      return false;
   }
   else
   {
      // TODO: cross RB x SDL
      return false;
   }
}


// --------------------------------------------------
// BLOK 10.60 – Draw Pending Entry Arrow (vizualizace)
// --------------------------------------------------
void DrawPendingEntryArrow()
{
     LogFSM("10.60_DRAW");
   
   if(!PendingEntry_Active_RT)
      return;

   datetime t = Time[1];   // uzavřená RB svíčka
   double   price;

   string name = "PENDING_ARROW_" + IntegerToString((int)t);

   // ochrana proti duplicitě
   if(ObjectFind(0, name) >= 0)
      return;

   bool isSlotA = true; // zatím – ENTRY běží přes Slot A

   // BUY pending
   if(PendingEntry_Dir_RT == 1)
   {
      price = High[1] + (100 * Point);

      bool  gateOK = EntryGate_Final(true, isSlotA);
      color clr    = gateOK ? UI_Color_Buy_BG_Active
                            : UI_Color_Secondary_Text_Inactive;

      ObjectCreate(0, name, OBJ_ARROW, 0, t, price);
      ObjectSetInteger(0, name, OBJPROP_ARROWCODE, SYMBOL_ARROWDOWN);
      ObjectSetInteger(0, name, OBJPROP_COLOR, clr);
      ObjectSetInteger(0, name, OBJPROP_WIDTH, 3);
   }
   // SELL pending
   else if(PendingEntry_Dir_RT == -1)
   {
      price = Low[1] - (100 * Point);

      bool  gateOK = EntryGate_Final(false, isSlotA);
      color clr    = gateOK ? UI_Color_Sell_BG_Active
                            : UI_Color_Secondary_Text_Inactive;

      ObjectCreate(0, name, OBJ_ARROW, 0, t, price);
      ObjectSetInteger(0, name, OBJPROP_ARROWCODE, SYMBOL_ARROWUP);
      ObjectSetInteger(0, name, OBJPROP_COLOR, clr);
      ObjectSetInteger(0, name, OBJPROP_WIDTH, 3);
   }
}


//+------------------------------------------------------------------+
//| Funkce: OnChartEvent                                             |
//| Volá se při událostech myši / kláves                             |
//+------------------------------------------------------------------+

void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
{

   // === SLOT A: SL / TP / TS+BE TOGGLES ===
   if(id == CHARTEVENT_OBJECT_CLICK)
   {
      HandleSlotA_SLTP_Event(sparam);
      HandleSlotA_TSBE_Event(sparam);
   }

    // === SLOT B: SL / TP / TS+BE TOGGLES ===
   if(id == CHARTEVENT_OBJECT_CLICK)
   {
      HandleSlotB_SLTP_Event(sparam);
      HandleSlotB_TSBE_Event(sparam);
   }
    
   // ------------------------------------------------
   // BLOK 11.13 – SELL
   // ------------------------------------------------
   if(sparam == BTN_SELL)
   {
      AllowSell = !AllowSell;

      ObjectSetInteger(0, BTN_SELL, OBJPROP_BGCOLOR,
         AllowSell ? clrFireBrick : clrGray);

      ObjectSetString(0, BTN_SELL, OBJPROP_TEXT,
         AllowSell ? "SELLing" : "no SELLing");

      SaveConfigToCSV();
      UpdateStatusText();
      return;
   }

   // ------------------------------------------------
   // BLOK 11.14 – BUY
   // ------------------------------------------------
   if(sparam == BTN_BUY)
   {
      AllowBuy = !AllowBuy;

      ObjectSetInteger(0, BTN_BUY, OBJPROP_BGCOLOR,
         AllowBuy ? clrGreen : clrGray);

      ObjectSetString(0, BTN_BUY, OBJPROP_TEXT,
         AllowBuy ? "BUYing" : "no BUYing");

      SaveConfigToCSV();
      UpdateStatusText();
      return;
   }

   // ------------------------------------------------
   // BLOK 11.16 – SDL / MA SELECTOR (S1–S3 / M1–M3)
   // ------------------------------------------------
   if(sparam == BTN_S1)
   {
      ActiveSDL_RT = 1;
      UpdateCondDirUI();
      SaveConfigToCSV();
      return;
   }

   if(sparam == BTN_S2)
   {
      ActiveSDL_RT = 2;
      UpdateCondDirUI();
      SaveConfigToCSV();
      return;
   }

   if(sparam == BTN_S3)
   {
      ActiveSDL_RT = 3;
      UpdateCondDirUI();
      SaveConfigToCSV();
      return;
   }

   // --------------------------------------------------
   // BLOK 11.27 – UI: Toggle UseSlotA / UseSlotB – EVENT
   // --------------------------------------------------
   if(id == CHARTEVENT_OBJECT_CLICK)
   {
      // --- Toggle UseSlotA ---
      if(sparam == "UI_Toggle_UseSlotA")
      {
         UseSlotA = !UseSlotA;

         // aktualizace vizuálu toggle
         UI_Init_Toggle_UseSlotA_B();

         // aktualizace UI Slot A (base state)
         UpdateSlotA_UI();

         SaveConfigToCSV();
         return;
      }

      // --- Toggle UseSlotB ---
      if(sparam == "UI_Toggle_UseSlotB")
      {
         UseSlotB = !UseSlotB;

         // aktualizace vizuálu toggle
         UI_Init_Toggle_UseSlotA_B();

         // aktualizace UI Slot B (base state)
         UpdateSlotB_UI();

         SaveConfigToCSV();
         return;
      }
   }

   // --------------------------------------------------
   // BLOK 11.60 – Slot A LOTS: potvrzení editace
   // --------------------------------------------------
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_LOTS_A)
   {
      string txt = ObjectGetString(0, UI_EDT_LOTS_A, OBJPROP_TEXT);
      SlotA_Lots = StringToDouble(txt);

      SaveConfigToCSV();
      Print("SlotA_Lots potvrzeno:", SlotA_Lots);
      return;
   }

   // --- Slot A SL ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_SL_A)
   {
      SlotA_SL = StringToDouble(
         ObjectGetString(0, UI_EDT_SL_A, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot A TP ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_TP_A)
   {
      SlotA_TP = StringToDouble(
         ObjectGetString(0, UI_EDT_TP_A, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot A TS ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_TS_A)
   {
      SlotA_TS = StringToDouble(
         ObjectGetString(0, UI_EDT_TS_A, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot A BE ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_BE_A)
   {
      SlotA_BE = StringToDouble(
         ObjectGetString(0, UI_EDT_BE_A, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot B SL ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_SL_B)
   {
      SlotB_SL = StringToDouble(
         ObjectGetString(0, UI_EDT_SL_B, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot B TP ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_TP_B)
   {
      SlotB_TP = StringToDouble(
         ObjectGetString(0, UI_EDT_TP_B, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot B TS ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_TS_B)
   {
      SlotB_TS = StringToDouble(
         ObjectGetString(0, UI_EDT_TS_B, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   // --- Slot B BE ---
   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_BE_B)
   {
      SlotB_BE = StringToDouble(
         ObjectGetString(0, UI_EDT_BE_B, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }

   if(id == CHARTEVENT_OBJECT_ENDEDIT && sparam == UI_EDT_LOTS_B)
   {
      SlotB_Lots = StringToDouble(
         ObjectGetString(0, UI_EDT_LOTS_B, OBJPROP_TEXT));

      SaveConfigToCSV();
      return;
   }
}


// ======================================================================
// SEKCE 12 – ENTRY ENGINE/ ORCHESTRACE / TICK
// ======================================================================

// --------------------------------------------------
// BLOK 12.20 – ProcessPendingEntry_Tick()
// --------------------------------------------------
void ProcessPendingEntry_Tick()
{
   if(!PendingEntry_Active_RT)
      return;

   // =========================
   // BUY
   // =========================
   if(PendingEntry_Dir_RT == 1 && Ask <= PendingEntry_Price_RT)
   {
      // STOP-HIT vs SKIP-HIT
      if(Low[1] > PendingEntry_Price_RT)
         PendingEntry_HitType_RT = HIT_STOP;
      else
         PendingEntry_HitType_RT = HIT_SKIP;

      PendingEntry_Active_RT = false;

      if(PendingEntry_HitType_RT == HIT_STOP)
         Print("PENDING BUY STOP-HIT @ ", PendingEntry_Price_RT);

      if(PendingEntry_HitType_RT == HIT_SKIP)
         Print("PENDING BUY SKIP-HIT @ ", PendingEntry_Price_RT);
   }

   // =========================
   // SELL
   // =========================
   if(PendingEntry_Dir_RT == -1 && Bid >= PendingEntry_Price_RT)
   {
      if(High[1] < PendingEntry_Price_RT)
         PendingEntry_HitType_RT = HIT_STOP;
      else
         PendingEntry_HitType_RT = HIT_SKIP;

      PendingEntry_Active_RT = false;

      if(PendingEntry_HitType_RT == HIT_STOP)
         Print("PENDING SELL STOP-HIT @ ", PendingEntry_Price_RT);

      if(PendingEntry_HitType_RT == HIT_SKIP)
         Print("PENDING SELL SKIP-HIT @ ", PendingEntry_Price_RT);
   }
}


// --------------------------------------------------
// BLOK 12.60 – STOP ENTRY from XS (Slot A)
// --------------------------------------------------

void ProcessStopEntryFromPending_RB_SlotA()
{
   if(SlotA_Open_RT)
      return;

      // STOP lifecycle = dokud existuje směr
   if(PendingEntry_Dir_RT == 0)
      return;
      
   int    dir   = PendingEntry_Dir_RT;
   bool   isBuy = (dir == 1);
   double price = PendingEntry_Price_RT;

   if(isBuy && price <= Ask) return;
   if(!isBuy && price >= Bid) return;

   if(!EntryGate_Final(isBuy, true))
      return;

   // vždy zrušit starý STOP
   CancelSlotAPending();

   double sl = 0;
   double tp = 0;

   if(SlotA_UseSL)
      sl = isBuy ? price - SlotA_SL_Points * Point
                 : price + SlotA_SL_Points * Point;

   if(SlotA_UseTP)
      tp = isBuy ? price + SlotA_TP_Points * Point
                 : price - SlotA_TP_Points * Point;

int ticket = OrderSend(
      Symbol(),
      isBuy ? OP_BUYSTOP : OP_SELLSTOP,
      SlotA_Lot,
      price,
      0,
      sl,
      tp,
      "STOP_FROM_XS_A",
      Magic_SlotA,
      0,
      clrYellow
   );
}


// --------------------------------------------------
// BLOK 12.70 – MARKET ENTRY from PENDING (Slot A)
// --------------------------------------------------

datetime LastMarketEntryRB_Time_A = 0;

void ProcessMarketEntryFromPending_RB_SlotA()
{
   if(Time[1] == LastMarketEntryRB_Time_A)
      return;

   if(SlotA_Open_RT)
      return;

   if(!PendingEntry_Active_RT)
      return;

   int  dir   = PendingEntry_Dir_RT;
   bool isBuy = (dir == 1);

   // --------------------------------------------------
   // STOP má absolutní prioritu
   // --------------------------------------------------
   if(isBuy && PendingEntry_Price_RT > Ask)
      return;
   if(!isBuy && PendingEntry_Price_RT < Bid)
      return;

   if(!EntryGate_Final(isBuy, true))
      return;

   double price = isBuy ? Ask : Bid;

   double sl = 0;
   double tp = 0;

   if(SlotA_UseSL)
      sl = isBuy
         ? price - SlotA_SL_Points * Point
         : price + SlotA_SL_Points * Point;

   if(SlotA_UseTP)
      tp = isBuy
         ? price + SlotA_TP_Points * Point
         : price - SlotA_TP_Points * Point;

   int ticket = OrderSend(
      Symbol(),
      isBuy ? OP_BUY : OP_SELL,
      SlotA_Lot,
      price,
      0,
      sl,
      tp,
      "MARKET_FROM_PENDING_A",
      Magic_SlotA,
      0,
      clrGreen
   );

   if(ticket > 0)
      LastMarketEntryRB_Time_A = Time[1];
}


// --------------------------------------------------
// BLOK 12.61 – STOP ENTRY from XS (Slot B)
// --------------------------------------------------

void ProcessStopEntryFromPending_RB_SlotB()
{
   if(SlotB_Open_RT)
      return;

      // STOP lifecycle = dokud existuje směr
   if(PendingEntry_Dir_RT == 0)
      return;

   int    dir   = PendingEntry_Dir_RT;
   bool   isBuy = (dir == 1);
   double price = PendingEntry_Price_RT;

   if(isBuy && price <= Ask) return;
   if(!isBuy && price >= Bid) return;

   if(!EntryGate_Final(isBuy, false))
      return;

   CancelSlotBPending();

   double sl = 0;
   double tp = 0;

   if(SlotB_UseSL)
      sl = isBuy ? price - SlotB_SL_Points * Point
                 : price + SlotB_SL_Points * Point;

   if(SlotB_UseTP)
      tp = isBuy ? price + SlotB_TP_Points * Point
                 : price - SlotB_TP_Points * Point;

int ticket = OrderSend(
      Symbol(),
      isBuy ? OP_BUYSTOP : OP_SELLSTOP,
      SlotB_Lot,
      price,
      0,
      sl,
      tp,
      "STOP_FROM_XS_B",
      Magic_SlotB,
      0,
      clrYellow
   );
}


// --------------------------------------------------
// BLOK 12.71 – MARKET ENTRY from PENDING (Slot B)
// --------------------------------------------------

datetime LastMarketEntryRB_Time_B = 0;

void ProcessMarketEntryFromPending_RB_SlotB()
{
   if(Time[1] == LastMarketEntryRB_Time_B)
      return;

   if(SlotB_Open_RT)
      return;

   if(!PendingEntry_Active_RT)
      return;

   int  dir   = PendingEntry_Dir_RT;
   bool isBuy = (dir == 1);

   // --------------------------------------------------
   // STOP má absolutní prioritu
   // --------------------------------------------------
   if(isBuy && PendingEntry_Price_RT > Ask)
      return;
   if(!isBuy && PendingEntry_Price_RT < Bid)
      return;

   if(!EntryGate_Final(isBuy, false))
      return;

   double price = isBuy ? Ask : Bid;

   double sl = 0;
   double tp = 0;

   if(SlotB_UseSL)
      sl = isBuy
         ? price - SlotB_SL_Points * Point
         : price + SlotB_SL_Points * Point;

   if(SlotB_UseTP)
      tp = isBuy
         ? price + SlotB_TP_Points * Point
         : price - SlotB_TP_Points * Point;

   int ticket = OrderSend(
      Symbol(),
      isBuy ? OP_BUY : OP_SELL,
      SlotB_Lot,
      price,
      0,
      sl,
      tp,
      "MARKET_FROM_PENDING_B",
      Magic_SlotB,
      0,
      clrRed
   );

   if(ticket > 0)
      LastMarketEntryRB_Time_B = Time[1];
}
