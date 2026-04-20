# Ch8 Field-Effect Transistors (FETs)

---

## FET 核心概念速覽 (FET Key Concepts Overview)

### FET vs BJT 核心差異

| 特性 | BJT | FET |
| :--- | :--- | :--- |
| 控制端 | 電流 ($I_B$) 控制電流 ($I_C$) | 電壓 ($V_{GS}$) 控制電流 ($I_D$) |
| 端子 | Base, Collector, Emitter | Gate, Drain, Source |
| 輸入阻抗 | 低 (Low) | 高 (High) |
| 類型 | NPN, PNP | n-channel, p-channel |
| 常見用途 | 基本開關與放大器 | 高頻、高壓開關 |

### 常見 FET 類型

1. **JFET** (Junction FET) - 接面場效電晶體
2. **MOSFET** (Metal Oxide Semiconductor FET) - 金屬氧化物半導體場效電晶體
3. **IGBT** (Insulated-Gate Bipolar Transistor) - 絕緣閘雙載子電晶體

### PWM 控制公式

$$ \% \text{Duty Cycle} = \frac{T_{on}}{T_{Period}} \times 100\% $$

---

**📄 Slide 01**

![Ch8_Field-effect_Transistors_(FETs) Slide 01](assets/Ch8_Field-effect_Transistors_(FETs)/slide-01.png)

## CHAPTER 8 FIELD-EFFECT TRANSISTORS (FETs)

**note：**
本章節介紹場效電晶體 (Field-Effect Transistors, FETs)。背景為藍色印刷電路板 (PCB) 上的表面黏著元件 (Surface-Mount Components)。

---

**📄 Slide 02**

![Ch8_Field-effect_Transistors_(FETs) Slide 02](assets/Ch8_Field-effect_Transistors_(FETs)/slide-02.png)

## FET INTRODUCTION - BJT vs FET COMPARISON

| Feature | BJT | FET |
| :--- | :--- | :--- |
| Pins | Base, Collector, Emitter | Gate, Drain, Source |
| Types | NPN, PNP | n-channel, p-channel |
| Control mechanism | Current ($I_B$) controls current ($I_C$) | Voltage ($V_{GS}$) controls current ($I_D$) |
| Applications | Basic switching and amplifier | High-frequency, high-voltage switching |

* Most popular FET types: **JFET** (Junction FET) and **MOSFET** (Metal Oxide Semiconductor FET).

**note：**
* FET 與 BJT 的主要差異：
  * BJT 利用「基極電流 ($I_B$)」控制「集極電流 ($I_C$)」，而 FET 利用「閘極電壓 ($V_{GS}$)」控制「汲極電流 ($I_D$)」。
  * FET 的端子名稱為閘極 (Gate, G)、汲極 (Drain, D)、源極 (Source, S)。
* FET 特別適用於高頻率與高電壓的開關應用。
* 最常見的兩種 FET 類型為 JFET（接面場效電晶體）與 MOSFET（金屬氧化物半導體場效電晶體）。

---

**📄 Slide 03**

![Ch8_Field-effect_Transistors_(FETs) Slide 03](assets/Ch8_Field-effect_Transistors_(FETs)/slide-03.png)

## JUNCTION FIELD-EFFECT TRANSISTOR (JFET) (接面場效電晶體)

* **n-channel JFET**: n-type channel with p-type regions acting as a "belt" around the channel. Gate arrow points **inward** (from p to n).
* **p-channel JFET**: p-type channel with n-type regions. Gate arrow points **outward**.
* Three terminals: **Drain (D)**, **Gate (G)**, **Source (S)**.

**note：**
* JFET 的基本結構：
  * n-channel JFET：n 型通道被 p 型區域包圍（如同「腰帶」），閘極箭頭指向內部（由 p 指向 n）。
  * p-channel JFET：p 型通道被 n 型區域包圍，閘極箭頭指向外部。
* 三個端子：汲極 (Drain, D)、閘極 (Gate, G)、源極 (Source, S)。

---

**📄 Slide 04**

![Ch8_Field-effect_Transistors_(FETs) Slide 04](assets/Ch8_Field-effect_Transistors_(FETs)/slide-04.png)

## JFET BASIC OPERATIONS (JFET 基本操作)

* JFET is always operated with the **gate-source pn junction reverse-biased** (閘源極 PN 介面逆向偏壓).
* Reverse-biasing produces a **depletion region** (空乏區) along the pn junction.
* The depletion region blocks the channel width, which **increases resistance**.
* Relationship between $V_{GG}$ and channel width:
  * Less $V_{GG}$ $\rightarrow$ wider channel $\rightarrow$ smaller resistance
  * More $V_{GG}$ $\rightarrow$ narrower channel $\rightarrow$ greater resistance

**note：**
* JFET 操作時，閘極-源極的 PN 介面必須保持**逆向偏壓**。
* 逆向偏壓會在 PN 介面處產生**空乏區 (Depletion Region)**，空乏區會壓縮通道寬度，使通道電阻增加。
* 控制關係：
  * $V_{GG}$ 愈小 $\rightarrow$ 空乏區愈窄 $\rightarrow$ 通道愈寬 $\rightarrow$ 電阻愈小
  * $V_{GG}$ 愈大 $\rightarrow$ 空乏區愈寬 $\rightarrow$ 通道愈窄 $\rightarrow$ 電阻愈大

---

**📄 Slide 05**

![Ch8_Field-effect_Transistors_(FETs) Slide 05](assets/Ch8_Field-effect_Transistors_(FETs)/slide-05.png)

## MOSFET STRUCTURE (MOSFET 結構)

* **MOSFET** = **M**etal **O**xide **S**emiconductor **F**ield-**E**ffect **T**ransistor (金屬氧化物半導體場效電晶體).
* The **Gate** is insulated from the channel by a **SiO$_2$** (二氧化矽) layer.
* Physical structure (n-channel enhancement MOSFET):
  * p-type substrate (p 型基板)
  * Two n-type regions (drain and source)
  * SiO$_2$ insulating layer (絕緣層)
  * Metal gate on top (金屬閘極)
* SiO$_2$ is found in rock and sand, and is used to make glass.

**note：**
* MOSFET 的全名為「金屬氧化物半導體場效電晶體」。
* MOSFET 的最大特點是閘極 (Gate) 與通道之間有一層 **SiO$_2$（二氧化矽）絕緣層**隔開，因此閘極電流幾乎為零，輸入阻抗極高。
* n-channel enhancement MOSFET 的結構包含 p 型基板、兩個 n 型區域（汲極與源極）、SiO$_2$ 絕緣層，以及頂部的金屬閘極。
* 二氧化矽 (SiO$_2$) 存在於岩石和沙子中，也是製造玻璃的材料。

---

**📄 Slide 06**

![Ch8_Field-effect_Transistors_(FETs) Slide 06](assets/Ch8_Field-effect_Transistors_(FETs)/slide-06.png)

## MOSFET OPERATION - N-CHANNEL ENHANCEMENT MODE (MOSFET 操作 - N 通道增強型)

* **Threshold voltage** $V_{GS(th)}$: the minimum gate-to-source voltage required to create a conductive channel.
* When $V_{GS} \leq V_{GS(th)}$: no channel exists, transistor is **OFF**.
* When $V_{GS} > V_{GS(th)}$: the gate voltage induces a channel by attracting negative charges to the surface of the p-substrate.
* The relationship between $I_D$ and $V_{GS}$ is **nonlinear**.
* Higher $V_{GS}$ $\rightarrow$ more conductivity $\rightarrow$ more $I_D$.

> The enhancement-mode MOSFET has **no channel** at $V_{GS} = 0$. A channel is "enhanced" (created) only when $V_{GS}$ exceeds the threshold voltage $V_{GS(th)}$.

**note：**
* 增強型 MOSFET 的操作原理：
  * **臨界電壓 $V_{GS(th)}$**：產生導電通道所需的最小閘源極電壓。
  * 當 $V_{GS} \leq V_{GS(th)}$ 時，沒有通道存在，電晶體處於**截止 (OFF)** 狀態。
  * 當 $V_{GS} > V_{GS(th)}$ 時，閘極電壓吸引負電荷至 p 型基板表面，感應出導電通道。
* $I_D$ 與 $V_{GS}$ 之間為**非線性**關係，$V_{GS}$ 愈高，導電度愈高，$I_D$ 愈大。
* 增強型 MOSFET 在 $V_{GS} = 0$ 時**沒有通道**，只有在 $V_{GS}$ 超過臨界電壓後才會「增強（產生）」通道。

---

**📄 Slide 07**

![Ch8_Field-effect_Transistors_(FETs) Slide 07](assets/Ch8_Field-effect_Transistors_(FETs)/slide-07.png)

## IGBT - INSULATED-GATE BIPOLAR TRANSISTOR (絕緣閘雙載子電晶體)

* **IGBT** combines features from both **MOSFET** and **BJT**.
* **Voltage-controlled** like a MOSFET (high input impedance).
* **Output conduction characteristic** of a BJT (capable of higher currents than MOSFETs).
* Applications: **high-voltage and high-current** switching (高壓大電流開關).
* Terminals: **Gate (G)**, **Collector (C)**, **Emitter (E)**.

**note：**
* IGBT（絕緣閘雙載子電晶體）結合了 MOSFET 與 BJT 的優點：
  * 如同 MOSFET，以**電壓控制**（輸入阻抗高）。
  * 如同 BJT，輸出端能承受**比 MOSFET 更大的電流**。
* IGBT 廣泛應用於高電壓、大電流的開關場景（如馬達驅動、逆變器等）。
* IGBT 的端子命名與 BJT 相同：閘極 (Gate, G)、集極 (Collector, C)、射極 (Emitter, E)。

---

**📄 Slide 08**

![Ch8_Field-effect_Transistors_(FETs) Slide 08](assets/Ch8_Field-effect_Transistors_(FETs)/slide-08.png)

## COMPARISON TABLE - IGBT vs MOSFET vs BJT (元件比較表)

| Feature | IGBT | MOSFET | BJT |
| :--- | :--- | :--- | :--- |
| Type of input drive | Voltage | Voltage | Current |
| Input resistance | High | High | Low |
| Operating frequency | Medium | High | Low |
| Switching speed | Medium | Fast (ns) | Slow ($\mu$s) |
| Saturation voltage | Low | High | Low |

* IGBT has largely replaced MOSFET and BJT in many high-power applications.

**note：**
* 三種電晶體的比較：
  * **輸入驅動方式**：IGBT 與 MOSFET 為電壓驅動（輸入阻抗高），BJT 為電流驅動（輸入阻抗低）。
  * **操作頻率**：MOSFET 最高（高頻應用），IGBT 中等，BJT 最低。
  * **切換速度**：MOSFET 最快（奈秒等級 ns），BJT 最慢（微秒等級 $\mu$s），IGBT 介於兩者之間。
  * **飽和電壓**：IGBT 與 BJT 的飽和電壓較低（導通損耗小），MOSFET 較高。
* 在許多高功率應用中，IGBT 已大量取代 MOSFET 與 BJT。

---

**📄 Slide 09**

![Ch8_Field-effect_Transistors_(FETs) Slide 09](assets/Ch8_Field-effect_Transistors_(FETs)/slide-09.png)

## APPLICATIONS - MOTOR DRIVER (應用 - 馬達驅動)

* **Controller/Computer** outputs: 0V (LOW) and 5V (HIGH).
* **DC motors**: wide voltage range (6V ~ 600V), require sufficient current/power.
* BJT, MOSFET, or IGBT can be used to control DC motors.
* **H-bridge topology** (H 橋拓撲): 4 switches arranged in an H-shape around the load.
* H-bridge using 4 MOSFETs (Q1, Q2, Q3, Q4) with **flyback diodes** (D1, D2, D3, D4):
  * **Forward** (正轉): Q1 and Q4 ON
  * **Reverse** (反轉): Q3 and Q2 ON

**note：**
* 馬達驅動應用：
  * 控制器（如微控制器 MCU）輸出數位訊號（0V / 5V），但直流馬達需要較高的電壓（6V ~ 600V）與足夠的電流/功率。
  * 利用 BJT、MOSFET 或 IGBT 作為開關元件來驅動馬達。
* **H 橋 (H-bridge)** 電路由 4 個開關（MOSFET）組成 H 形排列，並搭配飛輪二極體 (Flyback Diodes) 保護開關元件。
  * 正轉：Q1 與 Q4 導通（電流由左到右流過馬達）。
  * 反轉：Q3 與 Q2 導通（電流由右到左流過馬達）。

---

**📄 Slide 10**

![Ch8_Field-effect_Transistors_(FETs) Slide 10](assets/Ch8_Field-effect_Transistors_(FETs)/slide-10.png)

## MOTOR DRIVER - ANALOG CONTROL (馬達驅動 - 類比控制)

* MCU provides **digital signals** (Low $\leftrightarrow$ High).
* Question: How to achieve **analog control** of motor speed?
* Solution: H-bridge with **FET drivers** interfacing MCU to FET gates.

**note：**
* 微控制器 (MCU) 只能輸出數位訊號（低電位與高電位之間切換）。
* 問題：如何實現馬達轉速的**類比控制**（連續調速）？
* 解決方案：在 MCU 與 FET 閘極之間加入 **FET 驅動器 (FET Driver)**，以 H 橋電路實現馬達的連續調速控制。

---

**📄 Slide 11**

![Ch8_Field-effect_Transistors_(FETs) Slide 11](assets/Ch8_Field-effect_Transistors_(FETs)/slide-11.png)

## PULSE-WIDTH MODULATION (PWM) (脈波寬度調變)

* **PWM** rapidly switches a signal **ON/OFF**.
* It varies the percentage of time the signal is "High" (**% Duty Cycle**, 工作週期) within a consistent frequency.
* PWM controls the **average power or voltage** delivered to the load.

$$ \% \text{Duty Cycle} = \frac{T_{on}}{T_{Period}} \times 100\% $$

> PWM (脈波寬度調變) 是一種以固定頻率快速切換訊號 ON/OFF 的技術，透過改變「高電位持續時間佔整個週期的百分比」來控制輸出至負載的平均功率或電壓。

**note：**
* PWM（脈波寬度調變）是控制馬達轉速的核心技術。
* 原理：在固定頻率下，快速切換訊號的 ON 與 OFF，透過調整「高電位時間 ($T_{on}$)」佔「整個週期 ($T_{Period}$)」的比例（即工作週期 %Duty Cycle）來控制輸出的平均功率或電壓。
* 公式：$\% \text{Duty Cycle} = \frac{T_{on}}{T_{Period}} \times 100\%$

---

**📄 Slide 12**

![Ch8_Field-effect_Transistors_(FETs) Slide 12](assets/Ch8_Field-effect_Transistors_(FETs)/slide-12.png)

## PWM MOTOR SPEED CONTROL (PWM 馬達轉速控制)

* **25% duty cycle** $\rightarrow$ 25% of rated motor speed
* **50% duty cycle** $\rightarrow$ 50% of rated motor speed
* **75% duty cycle** $\rightarrow$ 75% of rated motor speed

| Duty Cycle | Motor Speed (% rated) |
| :--- | :--- |
| 25% | 25% |
| 50% | 50% |
| 75% | 75% |

> The motor speed is approximately proportional to the duty cycle of the PWM signal.

**note：**
* PWM 控制馬達轉速的實例：
  * 25% 工作週期 $\rightarrow$ 馬達以額定轉速的 25% 運轉。
  * 50% 工作週期 $\rightarrow$ 馬達以額定轉速的 50% 運轉。
  * 75% 工作週期 $\rightarrow$ 馬達以額定轉速的 75% 運轉。
* 馬達轉速大約與 PWM 訊號的工作週期成正比。

---

**📄 Slide 13**

![Ch8_Field-effect_Transistors_(FETs) Slide 13](assets/Ch8_Field-effect_Transistors_(FETs)/slide-13.png)

## APPLICATIONS - INVERTERS (應用 - 逆變器)

* **Inverters** (逆變器) convert **DC voltage** (直流電) to **AC voltage** (交流電).
* Uses an H-bridge circuit with switches Q1, Q2, Q3, Q4.
* **PWM output**: high-frequency pulses varying in width to synthesize a **sine wave** (正弦波).

**note：**
* 逆變器 (Inverter) 的功能是將**直流電 (DC)** 轉換為**交流電 (AC)**。
* 同樣使用 H 橋電路（Q1、Q2、Q3、Q4 四個開關），透過 PWM 技術產生高頻且寬度變化的脈波，將這些脈波合成為**正弦波 (Sine Wave)** 輸出。
* 逆變器廣泛應用於不斷電系統 (UPS)、太陽能逆變器、變頻器等場景。

---

---

## 章節重點總結 (Chapter Summary)

本章介紹場效電晶體 (FET) 的類型、結構、操作原理及其在馬達驅動與逆變器中的應用：

### 1. FET 基本概念
* **核心差異**：FET 以**閘極電壓 ($V_{GS}$)** 控制**汲極電流 ($I_D$)**，而 BJT 以基極電流 ($I_B$) 控制集極電流 ($I_C$)。
* **端子**：Gate (閘極, G)、Drain (汲極, D)、Source (源極, S)。
* **輸入阻抗**：FET 的輸入阻抗遠高於 BJT，幾乎不消耗輸入電流。

### 2. JFET (接面場效電晶體)
* **結構**：n-channel 或 p-channel，閘極與通道之間形成 PN 介面。
* **操作**：閘源極 PN 介面須保持**逆向偏壓**，逆向偏壓產生空乏區壓縮通道，進而控制通道電阻與電流。
* $V_{GG}$ 愈大 $\rightarrow$ 空乏區愈寬 $\rightarrow$ 通道愈窄 $\rightarrow$ 電阻愈大。

### 3. MOSFET (金屬氧化物半導體場效電晶體)
* **結構**：閘極與通道之間以 **SiO$_2$ 絕緣層**隔開，輸入阻抗極高。
* **增強型操作**：$V_{GS} = 0$ 時無通道；當 $V_{GS} > V_{GS(th)}$（臨界電壓）時才感應出導電通道。
* $I_D$ 與 $V_{GS}$ 為非線性關係。

### 4. IGBT (絕緣閘雙載子電晶體)
* 結合 MOSFET（電壓控制、高輸入阻抗）與 BJT（大電流輸出、低飽和電壓）的優點。
* 適用於高電壓、大電流的開關應用。

### 5. 元件比較
* **MOSFET**：切換速度最快（ns 等級），適合高頻應用，但飽和電壓較高。
* **BJT**：切換速度最慢（$\mu$s 等級），電流驅動，飽和電壓低。
* **IGBT**：介於兩者之間，在許多高功率應用中已取代 MOSFET 與 BJT。

### 6. 應用 - 馬達驅動與 PWM
* **H 橋 (H-bridge)**：4 個開關元件組成，可控制馬達正轉與反轉。
* **PWM (脈波寬度調變)**：以固定頻率快速切換 ON/OFF，透過調整工作週期控制輸出平均功率。
  $$ \% \text{Duty Cycle} = \frac{T_{on}}{T_{Period}} \times 100\% $$
* 馬達轉速大約與 PWM 工作週期成正比。

### 7. 應用 - 逆變器 (Inverters)
* 將直流電 (DC) 轉換為交流電 (AC)。
* 使用 H 橋搭配 PWM 技術合成正弦波輸出。

[Source: Ch8_Field-effect_Transistors_(FETs).pdf](../course-materials/Ch8_Field-effect_Transistors_(FETs).pdf)
