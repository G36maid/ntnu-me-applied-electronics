# Ch6 Bipolar Junction Transistors (BJTs)

---

## 🎯 BJT 直流分析解題流程（The Duel Rule）

### Step 1：算 $I_B$

$$I_B = \frac{V_{BB} - V_{BE}}{R_B}$$

- $V_{BE}$ 預設 $0.7V$
- 若 $V_{BB} < 0.7V$ → **截止區 (Cutoff)**，$I_B = 0,\; I_C = 0,\; V_{CE} = V_{CC}$，直接結束

### Step 2：算「理想需求」$I_{C(ideal)}$

$$I_{C(ideal)} = \beta_{DC} \times I_B$$

### Step 3：算「現實極限」$I_{C(sat)}$

$$I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C}$$

- $V_{CE(sat)} \approx 0.2V$

### Step 4：決鬥判斷（Duel）

| 比較結果 | 區域 | $V_{CE}$ |
| :--- | :--- | :--- |
| $I_{C(ideal)} > I_{C(sat)}$ | **飽和區 (Saturation)** ⚡ | $V_{CE} = 0.2V$ |
| $I_{C(ideal)} < I_{C(sat)}$ | **主動區 (Active)** 📈 | $V_{CE} = V_{CC} - I_C R_C$ |

> 💡 **記憶口訣**：「理想需求 vs 現實極限」。需求超過極限 → 飽和；需求未達極限 → 主動區。

### 變化題型：開關設計（反推 $R_B$）

當題目要求 BJT 飽和導通，反推最大基極電阻：

1. **算 $I_{C(sat)}$**：$\dfrac{V_{CC} - V_{CE(sat)}}{R_C}$
2. **算 $I_{B(min)}$**：$\dfrac{I_{C(sat)}}{\beta_{DC}}$
3. **算 $R_{B(max)}$**：$\dfrac{V_{IN} - 0.7V}{I_{B(min)}}$

---

**📄 Slide 01**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 01](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-01.png)

## CHAPTER 6 BIPOLAR JUNCTION TRANSISTOR (BJT)

**note：**
本章節介紹雙載子接面電晶體 (BJT)。

---

**📄 Slide 02**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 02](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-02.png)

## BIPOLAR JUNCTION TRANSISTOR (BJT) (電晶體)

* The invention of the transistor was the beginning of a technological revolution (科技革命). All of the complex electronic devices and systems today are an outgrowth of early developments in semiconductor transistors.
* Two basic types of transistors include:
  1. Bipolar Junction Transistors (BJTs、雙載子連接電晶體) – discussed in Ch. 6~7
  2. Field-Effect Transistors (FETs、場效電晶體) – discussed in Ch. 8

**note：**
* 電晶體的發明是科技革命的開端，現代複雜的電子設備均源自於半導體電晶體的早期發展。
* 電晶體主要分為兩大類：
  1. 雙載子接面電晶體 (BJTs，第 6~7 章討論)
  2. 場效電晶體 (FETs，第 8 章討論)

---

**📄 Slide 03**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 03](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-03.png)

## BJT STRUCTURE

* The BJT is constructed with three regions of doped semiconductor separated by two pn junctions. The three regions are called emitter (E、射極), base (B、基極), and collector (C、集極).
* There are two types of BJTs: (1) NPN and (2) PNP.
  * NPN-type
  * PNP-type

**note：**
* BJT 由三個摻雜半導體區域組成，並被兩個 PN 介面隔開。三個區域分別稱為射極 (Emitter, E)、基極 (Base, B) 和集極 (Collector, C)。
* BJT 分為兩種型態：
  * NPN 型
  * PNP 型

---

**📄 Slide 04**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 04](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-04.png)

## BJT STRUCTURE

* The pn junction joining the base (B、基極) region and the emitter (E、射極) region is called the base-emitter (BE) junction.
* The pn junction joining the base (B、基極) region and the collector (C、集極) region is called the base-collector (BC) junction.
  * NPN-type
  * PNP-type

**note：**
* 連接基極 (B) 與射極 (E) 的 PN 介面稱為「基射極介面 (BE junction)」。
* 連接基極 (B) 與集極 (C) 的 PN 介面稱為「基集極介面 (BC junction)」。

---

**📄 Slide 05**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 05](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-05.png)

## BIASING

* The examples use BJTs as an amplifier 放大器.
* Notice that in both cases the base-emitter (BE) junction is forward-biased 順向偏壓 and the base-collector (BC) junction is reverse-biased 逆向偏壓.
* This condition is called forward-reverse bias (順逆向偏壓).
  ➢ Note that most of examples discussed in this course are NPN-type BJTs.

**note：**
* 當 BJT 作為放大器使用時，其基射極介面 (BE junction) 必須處於「順向偏壓」，而基集極介面 (BC junction) 必須處於「逆向偏壓」，此狀態稱為順逆向偏壓 (Forward-Reverse Bias)。
* 本課程大部分範例將以 NPN 型 BJT 為主。

---

**📄 Slide 06**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 06](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-06.png)

## OPERATIONS

* The main purpose of BJTs is to use a small current 小電流 at the base 射極 to control much larger current 大電流 between the collector 集極 and emitter 射極.
* When a small positive voltage is applied to the BE junction (forward-biased), it allows electrons to flow from the emitter (E) into the base (B).
* Since the base is thin and lightly doped, most of these electrons (電子) diffuse into the collector, which is at a higher voltage, creating a larger collector current.
* Animation: [https://www.youtube.com/watch?v=7ukDKVHnac4](https://www.youtube.com/watch?v=7ukDKVHnac4)

**note：**
* BJT 的主要用途是利用基極的「小電流」來控制集極與射極之間的「大電流」。
* 當 BE 介面加順向小電壓時，電子會從射極流向基極；由於基極極薄且輕度摻雜，多數電子會穿越基極擴散至電壓較高的集極，從而產生較大的集極電流。

---

**📄 Slide 07**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 07](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-07.png)

## TRANSISTOR CURRENTS

* When both types of BJTs are operating, the current directions are shown as follows:
  * NPN-type
  * PNP-type

➢ Note that $I_B$ is very small compared to $I_C$ or $I_E$. ($I_B \ll I_C$ or $I_E$)

$$ I_E = I_B + I_C $$

**note：**
* BJT 運作時的電流方向：射極電流 ($I_E$) 必定等於基極電流 ($I_B$) 與集極電流 ($I_C$) 的總和 ($I_E = I_B + I_C$)。
* 基極電流 $I_B$ 相比於 $I_C$ 或 $I_E$ 是非常微小的。

---

**📄 Slide 08**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 08](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-08.png)

## BETA AND ALPHA GAINS

* In transistors, there are two DC current gains 電流增益:

1. Beta ($\beta_{DC}$) gain 增益 is the ratio 比值 of $I_C$ to $I_B$:

$$ \beta_{DC} = \frac{I_C}{I_B} $$

* Typical values of $\beta_{DC}$ (called $h_{FE}$ in datasheets) range from less than 20 to 200 or higher.

2. Alpha ($\alpha_{DC}$) gain 增益 is the ratio 比值 of $I_C$ to $I_E$:

$$ \alpha_{DC} = \frac{I_C}{I_E} $$

* Typically, values of $\alpha_{DC}$ range from 0.95 to 0.99 or greater, but $\alpha_{DC}$ is always less than 1.

**note：**
電晶體有兩種直流電流增益：
1. Beta ($\beta_{DC}$) 增益（在規格書常稱為 $h_{FE}$）為 $I_C$ 與 $I_B$ 的比值，範圍通常在 20 到 200 或更高。
2. Alpha ($\alpha_{DC}$) 增益為 $I_C$ 與 $I_E$ 的比值，典型值介於 0.95 到 0.99，恆小於 1。

---

**📄 Slide 09**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 09](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-09.png)

## 練習 (Exercise: Basic Currents & Gains)

*   **題目**: 已知 $I_B = 50 \mu A$，$I_C = 3.65 mA$，求 $\beta_{DC}$, $\alpha_{DC}$, $I_E$。
*   **解題 S.O.P**:
    1.  **單位換算 (Unit Sync)**: 將 $\mu A$ 換成 $mA$: $I_B = 50 \mu A = \mathbf{0.05 mA}$。
    2.  **求射極總電流 ($I_E$)**: $$I_E = I_B + I_C = 0.05 mA + 3.65 mA = \mathbf{3.70 mA}$$
    3.  **求電流增益 ($\beta_{DC}$)**: $$\beta_{DC} = \frac{I_C}{I_B} = \frac{3.65 mA}{0.05 mA} = \mathbf{73}$$
    4.  **求傳輸係數 ($\alpha_{DC}$)**: $$\alpha_{DC} = \frac{I_C}{I_E} = \frac{3.65 mA}{3.70 mA} \approx \mathbf{0.986}$$
    *   **驗算**: $\alpha = \frac{\beta}{\beta + 1} = \frac{73}{74} = 0.986$ (正確)。

**note：**
隨堂練習：給定基極與集極電流，計算直流電流增益 $\beta_{DC}$、$\alpha_{DC}$ 與射極電流 $I_E$。($I_E = I_B + I_C$)

---

**📄 Slide 10**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 10](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-10.png)

## TRANSISTOR DC MODEL

* When the BJT is unsaturated (不飽和), it can be approximated as a diode (二極體) with a current input and a dependent current source 相依電流源 in the output circuit.
* When the diode is forward-biased (順向), the output current $I_C$ is proportional to $I_B$ with the gain $\beta_{DC}$.

**note：**
* 當 BJT 處於非飽和狀態（主動區）時，其輸入端 (BE) 可近似為一個順向偏壓的二極體，輸出端 (CE) 則可視為一個相依電流源。
* 其輸出電流 $I_C$ 與輸入電流 $I_B$ 成正比（比例常數為 $\beta_{DC}$）。

---

**📄 Slide 11**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 11](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-11.png)

## BJT CIRCUIT ANALYSIS

* When the BE junction is forward-biased, it is like a forward-biased diode and has a nominal forward voltage drop of
$$ V_{BE} \cong 0.7V $$

* By Kirchhoff’s law 克希荷夫電路定律, you can have:
$$ I_B = \frac{V_{BB} - V_{BE}}{R_B} $$
$$ V_{CE} = V_{CC} - I_C R_C $$
$$ V_{CE} = V_{CC} - (\beta_{DC} I_B) R_C $$
$$ V_{CB} = V_{CE} - V_{BE} $$

**note：**
* 當 BE 介面順向偏壓時，相當於一個二極體，其跨壓 $V_{BE} \cong 0.7V$。
* 可利用克希荷夫電壓定律 (KVL) 依序求出迴路中的 $I_B$、$V_{CE}$ 與 $V_{CB}$。

---

**📄 Slide 12**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 12](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-12.png)

## 練習 (Exercise: DC Circuit Analysis)

*   **題目**: 給定 $\beta_{DC} = 150$, $V_{BB} = 5V$, $R_B = 10k\Omega$, $V_{CC} = 10V$, $R_C = 100\Omega$，求各參數。
*   **解題 S.O.P (輸入 $\rightarrow$ 輸出)**:
    1.  **Step 1: 求 $I_B$ (輸入端)**: 
        $$I_B = \frac{V_{BB} - 0.7V}{R_B} = \frac{5V - 0.7V}{10k\Omega} = \mathbf{430 \mu A}$$
    2.  **Step 2: 求 $I_C$ (放大端)**: 
        $$I_C = \beta_{DC} \times I_B = 150 \times 430 \mu A = \mathbf{64.5 mA}$$
    3.  **Step 3: 求 $I_E$ (總電流)**: 
        $$I_E = I_B + I_C = 0.43 mA + 64.5 mA = \mathbf{64.93 mA}$$
    4.  **Step 4: 求 $V_{CE}$ (輸出端壓降)**: 
        $$V_{CE} = V_{CC} - I_C R_C = 10V - (64.5 mA \times 100\Omega) = 10 - 6.45 = \mathbf{3.55 V}$$
    5.  **Step 5: 求 $V_{CB}$ (接面壓降)**: 
        $$V_{CB} = V_{CE} - V_{BE} = 3.55V - 0.7V = \mathbf{2.85 V}$$

**note：**
電路分析練習：利用投影片上公式與 KVL，計算出給定偏壓與電阻下的所有電流 ($I_B$, $I_C$, $I_E$) 與電壓 ($V_{BE}$, $V_{CE}$, $V_{CB}$)。

---

**📄 Slide 13**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 13](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-13.png)

## 特性曲線 (Characteristic Curve)

*   **定義**: 繪製了集極電流 $I_C$ (Y軸) 與集極-射極電壓 $V_{CE}$ (X軸) 之間的關係。
*   **參數**: 透過固定不同的基極電流 $I_B$ 作為參數，可以畫出多條水平曲線。這些曲線反映出電晶體在不同 $I_B$ 驅動下的輸出能力。

---

**📄 Slide 14**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 14](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-14.png)

## 工作模式 1：截止區 (Cutoff Mode)

*   **偏壓條件**: $BE$ 接面逆偏、$BC$ 接面逆偏。
*   **電路表現**: 如同 **「開路開關 (Open switch)」**，幾乎沒有電流流過。
*   **數值判定**: $V_{BE} < 0.7V$ (推不動二極體)，且 $I_B \cong 0, I_C \cong 0$。

---

**📄 Slide 15**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 15](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-15.png)

## 工作模式 2：主動區 (Active Mode)

*   **偏壓條件**: $BE$ 接面順偏、$BC$ 接面逆偏。
*   **電路表現**: 作為 **「放大器 (Amplifier)」**，用小電流控制大電流。
*   **數值判定**: $V_{BE} \cong 0.7V$。最關鍵的特徵是 **$I_C = \beta_{DC} \times I_B$** (線性放大)。

---

**📄 Slide 16**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 16](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-16.png)

## 工作模式 3：飽和區 (Saturation Mode)

*   **偏壓條件**: $BE$ 接面順偏、$BC$ 接面順偏。
*   **電路表現**: 如同 **「通路開關 (Closed switch)」**，電流達到電路能提供的極限。
*   **數值判定**: $V_{BE} \cong 0.7V$。此時 $I_C$ 不再受 $\beta$ 放大限制，而是 **$I_C < \beta_{DC} \times I_B$**，且 $V_{CE}$ 會降到非常低 (飽和電壓 $V_{CE(sat)}$)。

---

**📄 Slide 17**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 17](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-17.png)

## 直流負載線 (DC Load Line)

*   直流負載線幫助我們直觀地理解電晶體三個工作模式的轉換。圖中 X 軸是 $V_{CE}$，Y 軸是 $I_C$。這條直線由 $V_{CC}$ 和 $R_C$ 決定。
*   **三個關鍵點**:
    1.  **截止點 (Cutoff point, 右下角)**: 
        *   條件: $I_B = 0$ (沒有控制電流)。
        *   狀態: $I_C = 0$，如同開路，所以所有的電壓都掉在電晶體上，**$V_{CE} = V_{CC}$**。
    2.  **主動區 (Active region, 線段中間)**:
        *   條件: $I_B$ 逐漸增加。
        *   狀態: $I_C$ 成比例增加 ($I_C = \beta_{DC} I_B$)，$V_{CE}$ 隨之下降。
    3.  **飽和點 (Saturation point, 左上角)**:
        *   條件: $I_B$ 大到讓 $I_C$ 達到電路的極限。
        *   狀態: $I_C$ 達到最大值 **$I_{C(sat)}$**，此時 $V_{CE}$ 降到最低的 **$V_{CE(sat)}$** (通常極小，接近 0.2V)。即使再增加 $I_B$，$I_C$ 也不會再增加了。

---

---

## 🚀 BJT 工作狀態判定全能演算法 (Comprehensive Decision Algorithm)

當你拿到一個 BJT 直流電路圖，要求判定其工作狀態時，請依照下列三個層次進行：

### 🛑 第一層：截止判定 (Cutoff Check) —— 「有沒有推力？」
*   **檢查輸入端 $V_{IN}$**:
    *   若 **$V_{IN} < 0.7V$** (例如 $0V$) $\rightarrow$ 電晶體推不動，$BE$ 二極體沒通。
    *   **結論**: **截止區 (Cutoff)**。
    *   **特徵**: $I_B = 0, I_C = 0$。
    *   **輸出電壓**: **$V_{CE} = V_{CC}$** (因為 $R_C$ 上無壓降)。

### 🏃 第二層：理想對決 (The Duel) —— 「理想 vs 現實」
若 $V_{IN} > 0.7V$，則進入對決階段。

1.  **計算「理想需求」 ($I_{C(ideal)}$)**:
    假設它是主動區，能發揮最大增益 $\beta$。
    $$I_B = \frac{V_{IN} - 0.7V}{R_B}$$
    $$I_{C(ideal)} = \beta_{DC} \times I_B$$
    *(電晶體「想流過」的電流)*

2.  **計算「現實極限」 ($I_{C(sat)}$)**:
    外部電路能提供的最大電流限制。
    $$I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C}$$
    *(電路「能給出」的最大電流，通常 $V_{CE(sat)} = 0.2V$ 或 $0V$)*

### 🏆 第三層：最終判定 (Final Decision)
*   **情況 A: 理想 < 現實 ($I_{C(ideal)} < I_{C(sat)}$)**
    *   電路完全應付得來，電晶體正常發揮。
    *   **結論**: **主動區 (Active Region)**。
    *   **特徵**: $I_C = I_{C(ideal)} = \beta I_B$。
    *   **輸出電壓**: $V_{CE} = V_{CC} - I_C R_C$ (通常大於 $0.7V$)。

*   **情況 B: 理想 > 現實 ($I_{C(ideal)} > I_{C(sat)}$)**
    *   電晶體想要的比電路能給的多，撞到天花板。
    *   **結論**: **飽和區 (Saturation Region)**。
    *   **特徵**: 實際 $I_C = I_{C(sat)}$ (不等於 $\beta I_B$)。
    *   **輸出電壓**: **$V_{CE} = V_{CE(sat)}$** (通常約 $0.2V$)。

---

**📄 Slide 18**


![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 18](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-18.png)

## 練習 (Exercise: Saturation Check)

*   **題目**: 判斷電晶體是否飽和。已知 $V_{CE(sat)} = 0.2 V, \beta = 50, V_{BB}=3V, R_B=10k\Omega, V_{CC}=10V, R_C=1k\Omega$。
*   **解題 S.O.P (飽和判定黃金三步驟)**:
    1.  **Step 1: 假設處於主動區，計算「理論電流」 $I_C$**:
        $$I_B = \frac{V_{BB} - 0.7V}{R_B} = \frac{3V - 0.7V}{10k\Omega} = 0.23 mA$$
        $$I_{C(ideal)} = \beta \times I_B = 50 \times 0.23 mA = \mathbf{11.5 mA}$$
    2.  **Step 2: 計算電路限制的「最大飽和電流」 $I_{C(sat)}$**:
        $$I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C} = \frac{10V - 0.2V}{1k\Omega} = \mathbf{9.8 mA}$$
    3.  **Step 3: 比較與判定**:
        *   因為 **$I_{C(ideal)} > I_{C(sat)}$** (11.5 mA > 9.8 mA)，代表電路無法承擔這麼大的理論電流。
        *   **結論**: 電晶體處於 **「飽和狀態 (Saturation)」**。

**note：**
判斷電晶體是否飽和的步驟：先假設其處於主動區算出理論 $I_C$ (Step 1)，再算出電路能提供的最大飽和電流 $I_{C(sat)}$ (Step 2)。若理論 $I_C > I_{C(sat)}$，代表電晶體已進入飽和區 (Step 3)。

---

**📄 Slide 19**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 19](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-19.png)

## EXAMPLE

* Determine whether or not the transistor is in saturation.
Assume $V_{CE(sat)} = 0.2 V$.
* Given values from circuit:
  * $\beta_{DC} = 125$
  * $V_{BB} = 1.5 V$
  * $R_B = 6.8 k\Omega$
  * $V_{CC} = 12 V$
  * $R_C = 180 \Omega$

**Sol：**

**Step 1:**
$$ I_B = \frac{V_{BB} - V_{BE}}{R_B} = \frac{1.5 - 0.7}{6.8k\Omega} = 117.6 \mu A $$
$$ I_C = \beta_{DC} I_B = (125)(117.6\mu A) = 14.7 mA $$

**Step 2:**
$$ I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C} = \frac{12 - 0.2}{180\Omega} = 65.6 mA $$

**Step 3:**
$I_C < I_{C(sat)} \rightarrow$ The transistor is not in saturation. (It is in the active region)

**note：**
飽和狀態判斷練習：給定電路參數，藉由計算基極電流並推算集極電流，再與電路能提供的飽和電流做比較，以確認電晶體的工作狀態。

---

**📄 Slide 20**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 20](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-20.png)

**note：**
承上題的計算過程與解答。（若為計算練習頁，可自行演練上方的步驟）。

---

**📄 Slide 21**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 21](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-21.png)

**note：**
承上題的計算過程與解答。

---

**📄 Slide 22**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 22](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-22.png)

## BASIC APPLICATIONS OF BJTS

* As learned, BJTs have 3 modes: (1) cutoff 截止, (2) active 主動, and (3) saturation 飽和.
* Two basic applications of BJTs are (i) signal amplification 訊號放大 and (ii) signal switching 訊號開關.
  * (i) **Signal amplification 訊號放大** – BJTs operate in the active mode, where a small signal is amplified to a larger collector signal by gain $\beta_{DC}$.
  * (ii) **Signal switching 訊號開關** – BJTs operate between the cutoff (OFF) and saturation (ON) modes, where the small signal can control the switch.

**note：**
BJT 的兩大基本應用：
1. 訊號放大：操作於「主動區」，將小訊號放大為大訊號 (增益為 $\beta_{DC}$)。
2. 訊號開關：操作於「截止區 (OFF)」與「飽和區 (ON)」之間，利用小訊號控制電路的導通與關閉。

---

**📄 Slide 23**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 23](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-23.png)

## SIGNAL AMPLIFICATION BY BJTS

* Let this example show the signal amplification 訊號放大 by a BJT.
* An AC voltage $V_s$ is superimposed on the DC bias voltage $V_{BB}$ by capacitive coupling 電容耦合. The forward-biased BE junction presents a very low resistance $r'_e$ to the AC signal.

$$ V_c = \frac{R_C}{r'_e} V_b = A_v V_b $$

($A_v$ is AC voltage gain, discussed next Chapter)

**note：**
* 訊號放大應用：在此電路中，交流小訊號 $V_s$ 透過電容耦合疊加至直流偏壓 $V_{BB}$ 上。
* 順向偏壓的 BE 介面對交流訊號呈現極小交流電阻 $r'_e$，進而透過電路將基極的交流小電壓 $V_b$ 放大至集極的 $V_c$ ($V_c = A_v V_b$)。

---

**📄 Slide 24**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 24](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-24.png)

## SIGNAL SWITCHING BY BJTS

* In the cutoff region 截止區, the BE junction is not forward-biased; thus, there is an open circuit 開路 between collector and emitter.
* In the saturation region 飽和區, the BE and BC junctions are forward-biased; thus, there is a close circuit 通路 between collector and emitter.
  ➢ Indeed, a small voltage drop across the transistor, which is the saturation voltage, $V_{CE(sat)}$.

**note：**
* 訊號開關應用——在截止區，BE 介面未順向偏壓，集極與射極之間等同「開路 (OFF)」。
* 在飽和區，BE 與 BC 介面皆順向偏壓，集極與射極之間等同「短路/通路 (ON)」，此時跨壓極小，稱為飽和電壓 $V_{CE(sat)}$。

---

**📄 Slide 25**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 25](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-25.png)

## SIGNAL SWITCHING BY BJTS

**Conditions in Cutoff**
$$ V_{CE} = V_{CC} $$
$$ I_C = 0 $$

**Conditions in Saturation**
$$ I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C} $$
$$ I_{B(min)} = \frac{I_{C(sat)}}{\beta_{DC}}; \quad V_{CE} = V_{CE(sat)} $$

**note：**
* 截止時 (OFF)：$I_C = 0$，$V_{CE} = V_{CC}$。
* 飽和時 (ON)：集極電流達到最大 $I_{C(sat)}$，此時所需的最少基極電流為 $I_{B(min)} = I_{C(sat)} / \beta_{DC}$。

---

**📄 Slide 26**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 26](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-26.png)

## EXAMPLE

1. When $V_{IN} = 0$, what is $V_{CE}$?
2. What minimum value of $I_B$ is required to saturate this transistor if $\beta_{DC} = 200$? (Assume $V_{CE(sat)} = 0 V$)
3. Calculate the maximum value of $R_B$ when $V_{IN} = 5 V$ with the saturated transistor.

**1)** $V_{CE} = V_{CC} = 10 V$

**2)** 
$$ I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C} = \frac{10 - 0}{1k\Omega} = 10 mA $$
$$ I_{B(min)} = \frac{I_{C(sat)}}{\beta_{DC}} = \frac{10 mA}{200} = 50 \mu A $$

**3)** 
$$ R_{B(max)} = \frac{V_{IN} - V_{BE}}{I_{B(min)}} = \frac{5 - 0.7}{50\mu A} = 86 k\Omega $$

**note：**
開關應用計算練習：當輸入電壓為 0 時處於截止狀態；計算使電晶體飽和所需的最小基極電流 $I_{B(min)}$；並據此求出能讓電晶體飽和的輸入電阻最大值 $R_{B(max)}$。

---

**📄 Slide 27**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 27](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-27.png)

## LED SWITCHING BY BJT

* A square wave 方波 input voltage with a period of 2 s is applied to the input.
* When the square wave is at 0 V (cutoff 截止), $I_C = 0$, the LED does NOT emit light.
* When the square wave goes to its high level, the transistor saturates 飽和, resulting $I_C$ through the LED causes it to emit light.
* Thus, the LED is on for 1 second and off for 1 second.
* **Question:** Why do not directly connect the square wave to the load (LED)?

**note：**
* BJT 開關應用實例 (LED 驅動)：利用方波輸入控制 BJT。
* 當方波為 0V (截止)，LED 不亮；當方波為高電位 (飽和)，電流流過 LED 使其發光。
* 使用電晶體驅動 LED 的原因是，訊號源（如微控制器）通常無法直接提供足夠的電流推動負載。

---

**📄 Slide 28**

![Ch6_Bipolar_Junction_Transistors_(BJTs) Slide 28](assets/Ch6_Bipolar_Junction_Transistors_(BJTs)/slide-28.png)

## PHOTOTRANSISTOR

* A phototransistor 光電電晶體 is similar to a regular BJT except that the $I_B$ is produced and controlled by light instead of a voltage source.
* The phototransistor effectively converts light energy to an electrical signal.
  * Day-time: Turn OFF light
  * Night-time: Turn ON light
---

## 📝 章節重點總結 (Chapter Summary)

本章介紹雙載子接面電晶體 (BJT) 的基礎結構、直流模型、三大工作區間及其主要應用：

### 1. 基本結構與特性
* **結構**：由三個摻雜區（射極 Emitter、基極 Base、集極 Collector）與兩個 PN 界面（BE 界面、BC 界面）組成。
* **分類**：包含 NPN 型與 PNP 型（本節多以 NPN 為例）。
* **核心原理**：利用**微小的基極電流（$I_B$）來控制集極與射極間的大電流（$I_C$ 或 $I_E$）**。
* **電流關係**：$I_E = I_B + I_C$。

### 2. 電流增益 (Current Gains)
* **Beta（$\beta_{DC}$）**：集極電流與基極電流的比值，即 $\beta_{DC} = \frac{I_C}{I_B}$（一般介於 $20 \sim 200$ 間）。
* **Alpha（$\alpha_{DC}$）**：集極電流與射極電流的比值，即 $\alpha_{DC} = \frac{I_C}{I_E}$（恆小於 1，通常在 $0.95 \sim 0.99$ 之間）。

### 3. 工作模式 (Operation Modes)
BJT 主要分為三個工作區：
1. **截止區 (Cutoff Mode)**：BE 與 BC 界面皆為逆向偏壓。此時電晶體如同**開路開關 (Open switch)**，$I_C \cong 0$。
2. **主動區 (Active Mode)**：BE 順向偏壓、BC 逆向偏壓。電晶體作為**放大器 (Amplifier)**，此時 $I_C = \beta_{DC} I_B$。順向的 BE 壓降約為 $V_{BE} \cong 0.7V$。
3. **飽和區 (Saturation Mode)**：BE 與 BC 界面皆為順向偏壓。電晶體如同**通路開關 (Closed switch)**，此時 $I_C$ 受外部電路限制（$I_C < \beta_{DC} I_B$），並具有極小的飽和電壓降 $V_{CE(sat)}$。

### 4. 電路分析與直流負載線 (DC Load Line)
* **迴路分析**：利用克希荷夫定律，可以推導出 $I_B = \frac{V_{BB} - V_{BE}}{R_B}$ 以及 $V_{CE} = V_{CC} - I_C R_C$。
* **直流負載線**：當 $V_{CC}$ 固定並逐漸增加基極電流 $I_B$ 時，能藉由圖表直觀看出電晶體從「截止狀態」過渡到「主動放大」，最終達到「飽和狀態」的過程。

### 5. 主要應用
* **訊號放大 (Signal Amplification)**：操作於**主動區**，將輸入的微小訊號透過 $\beta_{DC}$ 增益放大。
* **訊號開關 (Signal Switching)**：操作於**截止區（OFF）與飽和區（ON）**之間，能利用微小的控制電壓來開啟或關閉負載（例如控制 LED 的亮滅）。

**note：**
* 光電晶體 (Phototransistor) 類似於一般 BJT，差別在於其基極電流 $I_B$ 是由「光照」產生並控制，而非電壓源。
* 它能有效地將光能轉換為電訊號，應用如白天關燈、夜晚開燈的自動照明系統。
