# Applied Electronics Mock Midterm Exam - FULL QUESTION & SOLUTION
**Course: Applied Electronics | Chapters: 3, 4, 5, 6**

---

## Part A: Short Answer Questions (簡答題)

### Q1. BJT Operation Modes (10 pts)
*   **Question**: Briefly describe the **Biasing Conditions** (正/逆偏條件) of the **BE junction** and **BC junction** for a BJT operating in the **Active Mode** (主動區). Mention its primary application.
*   **Solution**: 
    *   **BE junction**: Forward-biased (順向偏壓, $V_{BE} \approx 0.7V$).
    *   **BC junction**: Reverse-biased (逆向偏壓).
    *   **Application**: Linear Amplification (訊號線性放大).

### Q2. Special-Purpose Diodes (10 pts)
*   **Question**: (a) Which diode is specifically designed to operate in the **Reverse Breakdown** region for **Voltage Regulation**? (b) Briefly explain the difference between **Zener Breakdown** and **Avalanche Breakdown**.
*   **Solution**: 
    *   (a) **Zener Diode** (齊納二極體).
    *   (b) **Zener Breakdown**: Occurs at **low voltages** (< 5V) due to intense electric field. 
    *   (c) **Avalanche Breakdown**: Occurs at **high voltages** (> 5V) due to carrier multiplication (impact ionization).

### Q3. Rectifier & Filter (10 pts)
*   **Question**: In a **Bridge Rectifier** with a **Capacitor-Input Filter**: (a) How does the **Ripple Factor ($r$)** change when the **Load Resistance ($R_L$)** increases? (b) What is the output ripple frequency ($f_{out}$)?
*   **Solution**: 
    *   (a) **$R_L$ Increases**: The discharge time constant ($R_L C$) increases $\rightarrow$ Capacitor discharges slower $\rightarrow$ **Ripple Factor ($r$) decreases** (Better filtering).
    *   (b) **Frequency**: For full-wave rectifiers, **$f_{out} = 2 \times f_{in}$**.

---

## Part B: Circuit Analysis & Calculation (電路分析與計算)

### Q4. Rectifier Performance (15 pts)
*   **Question**: A **Full-Wave Center-Tapped Rectifier** has a transformer with $V_{pri} = 120V_{rms}$ and **Turns Ratio $n = 1:4$ (Step-down)**. Calculate $V_{p(sec)}$, $V_{p(out)}$, $V_{avg}$, and **PIV**.
*   **Solution**: 
    1.  **$V_{p(pri)}$**: $120V_{rms} \times 1.414 = 169.7V$.
    2.  **$V_{p(sec)}$**: $169.7V \div 4 = \mathbf{42.43V}$ (Step-down means divide).
    3.  **$V_{p(out)}$**: $(V_{p(sec)} / 2) - 0.7V = (42.43 / 2) - 0.7 = \mathbf{20.52V}$.
    4.  **$V_{avg}$**: $0.636 \times 20.52 = \mathbf{13.05V}$.
    5.  **PIV** (關鍵): $V_{p(sec)} - 0.7V = 42.43 - 0.7 = \mathbf{41.73V}$ (Center-tapped diodes must withstand the full secondary voltage).

### Q5. Diode Clipper Design (15 pts)
*   **Question**: **Positive Clipper** with $V_{in} = 24V_{p-p}$ ($\pm 12V$ sine). Diode points **UP (⬆️)** and is in series with a **$6V$ DC battery** (Negative terminal up). Find Clipping Level and waveform.
*   **Solution**: 
    *   **Clipping Level**: The branch conducts when $V_{in}$ is lower than the battery plus diode drop $\rightarrow$ $-6V - 0.7V = \mathbf{-6.7V}$.
    *   **Result**: Since the diode points UP, it allows signals **above** -6.7V and clips everything **below** -6.7V.
    *   **Waveform**: Input sine wave is "cut off" at -6.7V. It oscillates between **$+12V$** and **$-6.7V$**.

### Q6. Negative Clamper Analysis (20 pts)
*   **Question**: **Negative Clamper** shifts a $\pm 10V$ square wave. Diode points **DOWN (⬇️)**. Calculate $V_C$ and $V_{out}$ peaks.
*   **Solution**: 
    1.  **$V_C$**: $V_{p(in)} - 0.7V = 10V - 0.7V = \mathbf{9.3V}$.
    2.  **$V_{out(max)}$**: $10V - 9.3V = \mathbf{+0.7V}$ (Peak shifts down).
    3.  **$V_{out(min)}$**: $-10V - 9.3V = \mathbf{-19.3V}$.
    *   **Result**: The square wave now oscillates between $+0.7V$ and $-19.3V$.

### Q7. BJT Saturation Check (20 pts)
*   **Question**: $V_{CC} = 12V, R_C = 470\Omega, V_{BB} = 4V, R_B = 10k\Omega, \beta = 150$. Determine mode and $V_{CE}$.
*   **Solution**: 
    1.  **$I_B$**: $(4V - 0.7V) / 10k\Omega = \mathbf{0.33mA}$.
    2.  **$I_{C(ideal)}$**: $150 \times 0.33mA = \mathbf{49.5mA}$.
    3.  **$I_{C(sat)}$**: $(12V - 0.2V) / 470\Omega = 11.8 / 470 = \mathbf{25.1mA}$.
    4.  **Determination**: **$I_{C(ideal)} > I_{C(sat)}$** ($49.5mA > 25.1mA$) $\rightarrow$ **Saturation (飽和)**.
    5.  **Actual $V_{CE}$**: $V_{CE(sat)} = \mathbf{0.2V}$.

---

## 🚀 Final Exam Reminders
1.  **Step-down transformer**: Always DIVIDE the voltage by the turns ratio.
2.  **Center-Tapped PIV**: Always remember it is roughly **TWICE** the output peak ($V_{p(sec)}$).
3.  **Saturation Logic**: "Ideal demand" ($I_C$) vs "Reality limit" ($I_{C(sat)}$). If demand exceeds limit, it saturates.
