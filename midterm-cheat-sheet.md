# 應用電子學期中考重點筆記 (Applied Electronics Midterm Cheat-Sheet)
**範圍：Chapters 1 - 6**

---

## 1. 半導體物理基礎 (Semiconductor Physics Basics)
*   **本徵半導體 (Intrinsic)**: 純矽，載子來自熱激發。
*   **雜質半導體 (Extrinsic)**: 摻雜後的半導體。
    *   **N型 (N-type)**: 摻雜五價元素 (Pentavalent)，多數載子為 **電子 (Electrons)**。
    *   **P型 (P-type)**: 摻雜三價元素 (Trivalent)，多數載子為 **電洞 (Holes)**。
*   **PN 接面 (PN Junction)**: 
    *   **空乏區 (Depletion Region)**: 接面處無載子的區域。
    *   **障壁電位 (Barrier Potential)**: 矽 (Si) $\approx 0.7V$。
    *   **順偏 (Forward Bias)**: P接正、N接負 $\rightarrow$ 空乏區縮小。
    *   **逆偏 (Reverse Bias)**: P接負、N接正 $\rightarrow$ 空乏區擴大。

---

## 2. 二極體模型與整流 (Diode Models & Rectifiers)
### 二極體模型 (Diode Models)
1.  **理想模型 (Ideal Model)**: 順偏為短路 ($0V$)，逆偏為斷路。
2.  **實際模型 (Practical Model)**: 順偏考慮 **$0.7V$ 壓降**，逆偏為斷路。 (**考試最常用**)
3.  **完整模型 (Complete Model)**: 考慮順向電阻 ($r'_d$)、逆向電阻 ($I_R$) 與接面電容。

### 性能比較表 (Performance Comparison)
| 特性 (Property) | 半波 (Half-Wave) | 中心抽頭 (Center-Tapped) | 橋式 (Bridge) |
| :--- | :--- | :--- | :--- |
| **輸出峰值 ($V_{p(out)}$)** | $V_{p(sec)} - 0.7V$ | $(V_{p(sec)} / 2) - 0.7V$ | $V_{p(sec)} - 1.4V$ |
| **平均電壓 ($V_{avg}$)** | $V_{p(out)} / \pi$ | $2V_{p(out)} / \pi$ | $2V_{p(out)} / \pi$ |
| **PIV (逆向耐壓)** | $V_{p(sec)}$ | **$V_{p(sec)} - 0.7V$** | $V_{p(out)} + 0.7V$ |
| **輸出頻率 ($f_{out}$)** | $f_{in}$ | $2f_{in}$ | $2f_{in}$ |

*   **關鍵重點**: 
    *   **降壓變壓器 (Step-down)**: 匝數比 $n = 1:4$ 代表二次側電壓 = 一次側 $\div 4$。
    *   **漣波因子 (Ripple Factor $r$)**: 負載電阻 $R_L$ 或電容 $C$ 越大 $\rightarrow$ $r$ 越小 (濾波越好)。

---

## 3. 波形整形電路 (Waveshaping Circuits)
### 限幅器 (Clipper / Limiter) - 「切掉部分波形」
*   **判斷口訣**: 二極體與負載 **並聯**。看二極體箭頭指向。
    *   **二極體向下 (⬇️)**: 正限幅 (**Positive Clipper**)，切掉上方 (Top)。
    *   **二極體向上 (⬆️)**: 負限幅 (**Negative Clipper**)，切掉下方 (Bottom)。
*   **限幅位準 (Clipping Level)**: $V_{bias} \pm 0.7V$ (注意電池極性)。

### 箝位器 (Clamper) - 「平移整體波形」
*   **判斷口訣**: 二極體與負載 **串聯** (含電容)。看二極體箭頭指向。
    *   **二極體向上 (⬆️)**: 正箝位 (**Positive Clamper**)，波形往 **上** 移。
    *   **二極體向下 (⬇️)**: 負箝位 (**Negative Clamper**)，波形往 **下** 移。
*   **電容電壓 ($V_C$)**: $V_{p(in)} - 0.7V$。

---

## 4. 特殊用途二極體 (Special-Purpose Diodes)
*   **齊納二極體 (Zener Diode)**: 
    *   運作於 **逆向崩潰區 (Reverse Breakdown)**。
    *   用途：**電壓調整 (Voltage Regulation)**。
*   **變容二極體 (Varactor)**: 利用逆向偏壓改變 **電容 (Capacitance)**。
*   **發光二極體 (LED)**: 運作於 **順向偏壓**。
*   **光二極體 (Photodiode)**: 運作於 **逆向偏壓**。光強越強 $\rightarrow$ **逆向電流 ($I_{\lambda}$)** 越大。

---

## 5. BJT 電晶體直流分析 (BJT DC Analysis)
### 核心公式 (Core Equations)
*   $I_E = I_C + I_B$
*   $I_C = \beta_{DC} I_B$
*   $\alpha_{DC} = \frac{I_C}{I_E} = \frac{\beta}{\beta + 1}$

### 區域判定演算法 (The "Duel Rule")
1.  **截止區 (Cutoff)**: 
    *   條件：$V_{BE} < 0.7V$。
    *   狀態：$I_B=0, I_C=0, V_{CE} = V_{CC}$。
2.  **飽和區 (Saturation)**: 
    *   條件：計算出的「理想需求」$I_{C(ideal)} (\beta I_B) >$ 「現實極限」$I_{C(sat)}$。
    *   狀態：$I_C = I_{C(sat)} = \frac{V_{CC} - V_{CE(sat)}}{R_C}$，且 $V_{CE} \approx 0.2V$。
3.  **主動區 (Active)**: 
    *   條件：$V_{BE} \approx 0.7V$ 且未達飽和。
    *   狀態：$I_C = \beta I_B$，$V_{CE} = V_{CC} - I_C R_C$。可用於 **放大器 (Amplifier)**。

---

## 🚀 應考重點 (Final Reminders)
1.  **單位 (Units)**: $mA \times k\Omega = V$。千萬別算錯小數點！
2.  **有效值 (RMS)**: 看到 $V_{rms}$ 必先乘 $\sqrt{2} \approx 1.414$ 得到 **峰值 (Peak)**。
3.  **畫圖 (Sketching)**: 輸出波形一定要標出 **峰點 (Peak values)** 的電壓值。
