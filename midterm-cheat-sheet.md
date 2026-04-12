# Applied Electronics Midterm Cheat-Sheet (Ch1-Ch3)

## 📌 Ch1 & Ch2: Semiconductor Basics & P-N Junction
### 1. Atomic Structure & Materials
*   **Valence Electron (價電子)**: Electrons in the outermost shell; determine electrical properties.
*   **Silicon (Si, 矽)**: The most common semiconductor; 4 valence electrons.
*   **Energy Gap (能隙, $E_g$)**: Energy required to move an electron from valence band to conduction band.
*   **Intrinsic Semiconductor (本徵半導體)**: Pure semiconductor (e.g., pure Si).
*   **Doping (摻雜)**: Adding impurities to increase conductivity.
    *   **N-type**: Doped with **Pentavalent** (五價) atoms (e.g., P, As). **Electrons** are majority carriers.
    *   **P-type**: Doped with **Trivalent** (三價) atoms (e.g., B, Ga). **Holes** are majority carriers.

### 2. The P-N Junction
*   **Depletion Region (空乏區)**: Region near the junction void of free carriers, formed by recombination.
*   **Barrier Potential (障壁電位, $V_B$ or $V_\gamma$)**:
    *   $Si \approx 0.7V$
    *   $Ge \approx 0.3V$
*   **Biasing (偏壓)**:
    *   **Forward Bias (正向偏壓)**: P-side to (+), N-side to (-). Narrowing depletion region, allows current.
    *   **Reverse Bias (反向偏壓)**: P-side to (-), N-side to (+). Widening depletion region, blocks current.
*   **Reverse Breakdown (反向崩潰)**: Occurs when reverse voltage exceeds $V_{BR}$. Includes Zener and Avalanche effects.

---

## 📌 Ch3: Diode Characteristics & Models
### 1. Diode Approximation Models (分析電路必用)
| Model | Forward Condition | Reverse Condition | Use Case |
| :--- | :--- | :--- | :--- |
| **Ideal Model (理想模型)** | $V_D = 0V$ (Short circuit) | $I_R = 0A$ (Open circuit) | Quick troubleshooting |
| **Practical Model (實際模型)** | $V_D = 0.7V$ (Voltage source, **+ at Anode**) | $I_R = 0A$ (Open circuit) | Basic circuit analysis |
| **Complete Model (完整模型)** | $V_D = 0.7V + I_D r'_d$ | $I_R$ (Leakage current) | Precision design |

### 2. Key Formulas
*   **Forward Current (正向電流)**: 
    $$I_F = \frac{V_{bias} - V_D}{R_{limit}}$$
*   **Dynamic Resistance (動態電阻, $r_d$)**:
    $$r_d = \frac{\Delta V_D}{\Delta I_D} \approx \frac{26mV}{I_D} \text{ (at room temperature)}$$
*   **Power Dissipation (功率損耗)**:
    $$P_D = V_D \cdot I_F$$

---

## 📖 Professional Terms Dictionary (專業術語對照)
| English Term | 中文翻譯 | 備註 / 極性 |
| :--- | :--- | :--- |
| **Anode** | **陽極** | **(+) P-type** |
| **Cathode** | **陰極** | **(-) N-type** |
| **Majority / Minority Carrier** | 多數載子 / 少數載子 | |
| **Recombination** | 復合 (電子與電洞結合) | |
| **Leakage Current** | 漏電流 ($I_R$) | |
| **Peak Inverse Voltage (PIV)** | 峰值反向電壓 | 二極體承受最高逆向電壓 |
| **Static Resistance ($R_D$)** | 靜態電阻 (DC 電阻) | |
| **Junction Capacitance** | 接面電容 | |
| **Rectification** | 整流 | |
| **Ripple Factor ($r$)** | 漣波因數 | 越低越好 |

---

## 📌 Ch4: Diode Applications (整流與應用)

### 1. Transformer & AC Basics
*   **Turns Ratio ($n$)**: $n = \frac{N_{sec}}{N_{pri}}$.
*   **Secondary Voltage**: $V_{sec(p)} = n \times V_{pri(p)}$.
*   **RMS to Peak**: $V_p = \sqrt{2} \times V_{rms} \approx 1.414 \times V_{rms}$.

### 2. Rectifier Comparison (⭐️ Core Calculation)
| Rectifier Type | $V_{p(out)}$ (Output Peak) | $V_{avg}$ (DC Value) | PIV (Min. Rating) |
| :--- | :--- | :--- | :--- |
| **Half-Wave** | $V_{p(in)} - 0.7V$ | $\frac{V_{p(out)}}{\pi} \approx 0.318 V_{p(out)}$ | $V_{p(in)}$ |
| **Full-Wave (C.T.)** | $\frac{V_{p(sec)}}{2} - 0.7V$ | $\frac{2V_{p(out)}}{\pi} \approx 0.636 V_{p(out)}$ | $2V_{p(out)} + 0.7V$ |
| **Full-Wave (Bridge)** | $V_{p(in)} - 1.4V$ | $\frac{2V_{p(out)}}{\pi} \approx 0.636 V_{p(out)}$ | $V_{p(out)} + 0.7V$ |

*   **Full-Wave frequency**: $f_{out} = 2 \times f_{in}$ (漣波頻率是輸入的兩倍).

### 3. Filter & Ripple
*   **Capacitor-Input Filter**: Smooths the rectified signal.
*   **Ripple Factor ($r$)**: $r = \frac{V_{r(pp)}}{V_{DC}}$ (漣波電壓 / 直流電壓).
*   **Effect**: Larger $C$ or larger $R_L$ $\rightarrow$ Smaller Ripple (Better filtering).

### 4. Clippers & Clampers (⭐️ Drawing Questions)
*   **Clipper (Limiters)**: "Clips" parts of waveform.
    *   **Diode points DOWN (⬇️)**: Positive Limiter (cuts top).
        *   Battery (+) up: $V_{limit} = V_{BIAS} + 0.7V$.
        *   Battery (-) up: $V_{limit} = -V_{BIAS} + 0.7V$.
    *   **Diode points UP (⬆️)**: Negative Limiter (cuts bottom).
        *   Battery (-) up: $V_{limit} = -V_{BIAS} - 0.7V$.
        *   Battery (+) up: $V_{limit} = V_{BIAS} - 0.7V$.
*   **Clamper**: "Shifts" the entire waveform up or down by a DC level ($V_{p-p}$ remains same).

### 5. Diode Multipliers
*   **Voltage Doubler (倍壓器)**: Outputs a DC voltage approximately twice the input peak.
    *   $V_{out} \approx 2 \times V_{p(in)}$
    *   **PIV Requirement**: Each diode must withstand **$2V_{p(in)}$**.

---

## 📌 Ch6: Bipolar Junction Transistors (BJTs)

### 1. Structure & Terminals
*   **Three Regions**: Emitter (射極, **E**), Base (基極, **B**), Collector (集極, **C**).
*   **NPN (⭐️ Main)**: Arrow points OUT (Not Pointing iN).
*   **PNP**: Arrow points IN (Pointing iN).

### 2. Current Relationships (⭐️ Always True)
*   **Sum of Currents**: $I_E = I_C + I_B$
*   **Beta (DC Current Gain)**: $\beta_{DC} = \frac{I_C}{I_B}$ (typically $20 \sim 200$)
*   **Alpha (Transmission Ratio)**: $\alpha_{DC} = \frac{I_C}{I_E}$ (always $< 1$, typically $0.95 \sim 0.99$)
*   **Conversion**: $\alpha = \frac{\beta}{\beta + 1}$ ; $\beta = \frac{\alpha}{1 - \alpha}$

### 3. DC Circuit Analysis (The "3-Step Analysis")
1.  **Input Loop (求 $I_B$)**: $I_B = \frac{V_{BB} - 0.7V}{R_B}$
2.  **Current Gain (求 $I_C$)**: $I_C = \beta_{DC} \times I_B$
3.  **Output Loop (求 $V_{CE}$)**: $V_{CE} = V_{CC} - I_C R_C$
*   **Note**: $V_{CB} = V_{CE} - 0.7V$

### 4. Operating Modes & Saturation Duel (⭐️ S.O.P)
*   **Cutoff (截止)**: $V_{IN} < 0.7V \rightarrow I_C = 0, V_{CE} = V_{CC}$ (OFF state).
*   **Active (主動)**: $I_C = \beta I_B$, acts as an **Amplifier**.
*   **Saturation (飽和)**: $V_{CE} \cong 0.2V$ (ON state).
    *   **Duel Rule**: 
        1. Calculate $I_{C(ideal)} = \beta I_B$.
        2. Calculate $I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C}$.
        3. If **$I_{C(ideal)} > I_{C(sat)}$** $\rightarrow$ **SATURATION**.
        4. If **$I_{C(ideal)} < I_{C(sat)}$** $\rightarrow$ **ACTIVE**.

### 5. Applications
*   **Switching**: Operates between **Cutoff** and **Saturation**.
*   **Amplification**: Operates in **Active** mode.
    *   **AC Voltage Gain ($A_v$)**: $A_v = \frac{R_C}{r'_e}$, where $r'_e \approx \frac{25mV}{I_E}$.
    *   $V_{out(ac)} = A_v \times V_{in(ac)}$.

