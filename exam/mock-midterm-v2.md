# Applied Electronics Mock Midterm Exam v2 (Ch3-Ch6)
**Course: Applied Electronics | Weight: 25-35% Short Answer, 65-75% Analysis**

---

## Part A: Short Answer Questions (簡答題 - 30%)

### Q1. Diode Ratings (10 pts)
Compare the **Peak Inverse Voltage (PIV)** (峰值反向電壓) ratings between a **Half-Wave Rectifier** (半波整流器) and a **Bridge Full-Wave Rectifier** (橋式全波整流器). If both have the same secondary peak voltage $V_{p(sec)}$, which one requires a higher PIV rating for its diodes? 

ans:
半波濾掉所有負向電流，橋式全波保留了正負向的波，因此頻率是兩倍（不是精確定義上的頻率）

### Q2. Optoelectronic Diodes (10 pts)
(a) In a **Photodiode** (光二極體), does it operate in **Forward Bias** (順向) or **Reverse Bias** (逆向)? 
ans:
in Reverse Bias , 他像是電阻一樣運作 ，但是是發電機

(b) Briefly explain how the **Light Intensity** (光照強度) affects its **Reverse Current** ($I_{\lambda}$).

ans
光強與電流成正比

### Q3. BJT Gain Relationship (10 pts)
A BJT has a **DC Current Gain** ($\beta_{DC}$) of 199. 
(a) Calculate its **Alpha** ($\alpha_{DC}$).
(b) If the **Base Current** ($I_B$) is $10 \mu A$, what is the **Emitter Current** ($I_E$)?

ans:
Alpha_DC = (Beta_DC)/(Beta_DC+1)= 0.995

I_E = I_C + I_B = beta_DC * I_B + IB = 2000  


---



## Part B: Circuit Analysis & Calculation (電路分析與計算 - 70%)

### Q4. Full-Wave Bridge Rectifier (15 pts)
A **Bridge Rectifier** (橋式整流器) is connected to a power supply.
*   **Input**: $V_{rms(pri)} = 220V, 50Hz$.
*   **Transformer**: **Turns Ratio $n = 10:1$ (Step-down)**.
Calculate:
1.  The peak secondary voltage **$V_{p(sec)}$**.
2.  The peak output voltage **$V_{p(out)}$** (using practical model $V_D = 0.7V$).
3.  The average DC output voltage **$V_{avg}$**.
4.  The output **Ripple Frequency** ($f_{ripple}$).

V_P = 220 * sqrt(2) = 331.12
secondary = VP * 1/10 = 33.112
out = 33.11 - 1.4 = 29.71
F = 100 hz



### Q5. Biased Clipper Analysis (15 pts)
Consider a **Clipper circuit** with the following parameters:
*   **Input**: $V_{in}$ is a sine wave with **$15V$ peak** ($\pm 15V$).
*   **Circuit**: The diode points **DOWN** (⬇️) and is in series with a **$3V$ DC battery** (Negative terminal facing up).
1.  Determine the **Clipping Level** (限幅位準).
2.  Identify if this is a **Positive** or **Negative** clipper.
3.  **Draw** the input and output waveforms.

ans:
切上半
Clipping Level = -3 + 0.7 = -2.3
clippers 好像沒有正負定義(教材沒有)？
max -2.3 min 15

### Q6. Positive Clamper Calculation (20 pts)
A **Positive Clamper** (正箝位器) uses a diode pointing **UP** (⬆️). The input is a $\pm 5V$ square wave.
1.  Calculate the steady-state voltage across the **Capacitor** ($V_C$).
2.  Calculate the **Maximum** and **Minimum** output voltage ($V_{out(max)}, V_{out(min)}$).
3.  **Draw** the output waveform.

V_C = 5-0.7 = 4.3

max = 9.3 min - 0.7 
往上偏移的方波

### Q7. BJT Design for Saturation (20 pts)
You are designing a BJT switch to drive a relay.
*   **Parameters**: $V_{CC} = 5V, R_C = 100\Omega, \beta_{DC} = 100, V_{CE(sat)} = 0.2V$.
*   **Control**: The input signal $V_{IN}$ is $3.3V$.
1.  Calculate the **Saturation Current** ($I_{C(sat)}$).
2.  Calculate the **Minimum Base Current** ($I_{B(min)}$) required to reach saturation.
3.  Calculate the **Maximum value of $R_B$** (最大基極電阻) that ensures the transistor is fully saturated.

IB = 3.3-0.7 / R_B
I_{C(ideal) = Beta * IB
I_Csat = (CC - V_{CE(sat)}) / R_C = 0.048
set  $I_{C(ideal) = I_Csat
0.048 = 100 * 3.3-0.7 / R_B
R_B = 3333.33
