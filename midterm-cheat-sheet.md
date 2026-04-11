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
