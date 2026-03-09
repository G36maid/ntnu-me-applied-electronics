# Ch2 半導體與電子學 (Semiconductors and Electronics)

---

**📄 Slide 01**

![Ch2_Semiconductors_and_Electronics Slide 01](assets/Ch2_Semiconductors_and_Electronics/slide-01.png)

## 第 2 章 半導體與電子學 (Chapter 2 Semiconductors and Electronics)

---

**📄 Slide 02**

![Ch2_Semiconductors_and_Electronics Slide 02](assets/Ch2_Semiconductors_and_Electronics/slide-02.png)

## 電路學 vs 應用電子學

*   電路學 (Circuit Theory) $\rightarrow$ 應用電子學 (Applied Electronics)

---

**📄 Slide 03**

![Ch2_Semiconductors_and_Electronics Slide 03](assets/Ch2_Semiconductors_and_Electronics/slide-03.png)

## 簡介 (Introduction)

*   大多數的**主動元件 (active electronic devices)**，例如二極體 (diodes)、電晶體 (transistors)、運算放大器 (Op-Amp) 以及積體電路 (integrated circuits, ICs)，都是由**半導體材料 (semiconductive materials)** 製成。
*   為了了解這些元件如何運作，您必須具備其**原子結構 (atomic structure)** 以及所謂的 **pn 接面 (pn junction)** 的基礎知識。

---

**📄 Slide 04**

![Ch2_Semiconductors_and_Electronics Slide 04](assets/Ch2_Semiconductors_and_Electronics/slide-04.png)

## 元素週期表 (Periodic Table of Elements)

*(請參考投影片中的元素週期表圖片)*

---

**📄 Slide 05**

![Ch2_Semiconductors_and_Electronics Slide 05](assets/Ch2_Semiconductors_and_Electronics/slide-05.png)

## 電子學中使用的材料 (Materials Used in Electronics)

*   就其**電路屬性 (electrical properties)** 而言，材料可分為三類：

1.  **電導體 (Conductors)**：容易傳導電流的材料。最好的導體是單元素金屬材料，例如：銅 (Cu)、銀 (Ag)、金 (Au) 和鋁 (Al)。
2.  **絕緣體 (Insulators)**：不傳導電流的材料。大多數良好的絕緣體是金屬與非金屬元素的化合物，例如：橡膠、玻璃、塑膠。
3.  **半導體 (Semiconductor)**：其傳導電流的能力介於導體和絕緣體之間的材料。最常見的單元素半導體是矽 (Si) 和鍺 (Ge)。

$\rightarrow$ **是什麼原因導致材料成為導體、絕緣體或半導體？**

---

**📄 Slide 06**

![Ch2_Semiconductors_and_Electronics Slide 06](assets/Ch2_Semiconductors_and_Electronics/slide-06.png)

## 導電性 (Conductivity)

*   導電性取決於**價層 (valence shell)**（最外層）上的電子。

1.  **低導電性 (Low conductivity)**：價層擠滿了電子（通常為 6~8 個電子）。堅固的**鍵結 (bond)** 不允許**電子 (electrons)** 自由移動。
2.  **高導電性 (High conductivity)**：價層只有少數幾個電子。**鍵結 (bond)** 非常弱；電子很容易獲得自由。

*   一旦電子可以自由流動，它就能在相反方向產生能量流（電流）。
    *   **電子流 (Electron current)**
    *   **電流 (Electric current)**

---

**📄 Slide 07**

![Ch2_Semiconductors_and_Electronics Slide 07](assets/Ch2_Semiconductors_and_Electronics/slide-07.png)

## 能隙 (Band Gap)

*   **帶隙 (Band gap)** 或 **能隙 (energy gap)** 是指將電子從價層釋放出來所需的額外能量。

*   **絕緣體 (Insulator)**：需要大量能量來釋放電子（或使此材料導電）。
*   **半導體 (Semiconductor)**：需要一些能量來釋放電子（或使此材料導電）。
*   **導體 (Conductor)**：不需額外能量即可導電。

---

**📄 Slide 08**

![Ch2_Semiconductors_and_Electronics Slide 08](assets/Ch2_Semiconductors_and_Electronics/slide-08.png)

## 矽與鍺 (Silicon and Germanium)

*   大多數的**半導體元件 (semiconductor devices)** 都是由矽 (Si) 或鍺 (Ge) 製成，兩者都擁有 4 個**價電子 (valence electrons)**。

*   鍺 (Ge) 釋放電子所需的額外能量較小，因此在高溫下過於敏感。

$\rightarrow$ 這就是為什麼矽 (Si) 是被更廣泛使用的半導體材料。
$\rightarrow$ **矽谷 (Silicon Valley)** 也是因此而得名。

---

**📄 Slide 09**

![Ch2_Semiconductors_and_Electronics Slide 09](assets/Ch2_Semiconductors_and_Electronics/slide-09.png)

## 電子與電洞 (Electrons and Holes)

*   無數個矽原子連結並共用電子，形成**晶體結構 (crystal structure)**。
*   在室溫下，一些自由電子會在材料中隨機漂移。
*   當電子跳躍時，會在結構內留下一個**空缺 (vacancy)**。
*   這個空缺被稱為「**電子孔 (hole)**」或「電洞」。

---

**📄 Slide 10**

![Ch2_Semiconductors_and_Electronics Slide 10](assets/Ch2_Semiconductors_and_Electronics/slide-10.png)

## 電子流與電洞流 (Electron Current and Hole Current)

*   當電壓施加在一塊矽上時，自由電子現在很容易向正極端移動。這被稱為「**電子流 (electron current)**」。
*   相反地，相同數量的電洞向負極端移動。這被稱為「**電洞流 (hole current)**」，也就是**電流 (electric current)**。

*   電洞 (空缺) [Holes (Vacancies)]
*   電子 (Electrons)
*   電子流 (Electron current)
*   電流/電洞流 (Electric (hole) current)

---

**📄 Slide 11**

![Ch2_Semiconductors_and_Electronics Slide 11](assets/Ch2_Semiconductors_and_Electronics/slide-11.png)

## p 型與 n 型半導體 (P-Type and N-Type Semiconductors)

*   純半導體材料通常是導電性不佳的導體。
*   為了改善其導電性，我們可以在材料中加入**雜質 (impurities)**，也就是加入其他類型的材料。這個過程稱為「**摻雜 (doping)**」，分為兩類：(1) **n 型** 及 (2) **p 型**。

*(圖示指出：摻雜會使能隙變小 Doping makes the band gap get smaller)*

---

**📄 Slide 12**

![Ch2_Semiconductors_and_Electronics Slide 12](assets/Ch2_Semiconductors_and_Electronics/slide-12.png)

## N 型半導體 (N-Type Semiconductors)

*   N 型半導體是透過將 5 個價電子的材料（例如：砷 As、磷 P、鉍 Bi 和銻 Sb）加入純矽或鍺中製成的。
*   N 型半導體具有：
    *   較多的電子（多數載子 majority）
    *   較少的電洞（少數載子 minority）
*   「N」代表電子上的**負電荷 (negative charge)**。

---

**📄 Slide 13**

![Ch2_Semiconductors_and_Electronics Slide 13](assets/Ch2_Semiconductors_and_Electronics/slide-13.png)

## P 型半導體 (P-Type Semiconductors)

*   P 型半導體是透過將 3 個價電子的材料（例如：硼 B、銦 In、鎵 Ga）加入純矽或鍺中製成的。
*   P 型半導體具有：
    *   較多的電洞（多數載子 majority）
    *   較少的電子（少數載子 minority）
*   「P」代表因電洞造成的**正電荷 (positive charge)**。

---

**📄 Slide 14**

![Ch2_Semiconductors_and_Electronics Slide 14](assets/Ch2_Semiconductors_and_Electronics/slide-14.png)

## PN 接面 (PN Junction)

*   如果一塊純矽被摻雜，使其一部分成為 n 型，另一部分成為 p 型，則在兩個區域之間的邊界會形成一個 **pn 接面 (pn junction)**，並且產生了一個**二極體 (diode)**。

---

**📄 Slide 15**

![Ch2_Semiconductors_and_Electronics Slide 15](assets/Ch2_Semiconductors_and_Electronics/slide-15.png)

## 障壁電位與空乏區 (Barrier Potential & Depletion Region)

*   當 pn 接面形成時，n 區失去自由電子，產生一層正電荷。同時，隨著電子與電洞結合，p 區失去電洞，產生另一層負電荷。
*   這兩層正負電荷形成了**空乏層 (depletion region)**，產生一個電場作為**位勢障礙 (barrier potential)**，如果沒有施加外部能量，它會阻擋電子流過 pn 接面。
*   換句話說，必須在 pn 接面兩端施加等於障壁電位的特定電壓，電子才會開始流過接面。
    *   失去電子產生的正電荷 (Positive charges from removed electrons)
    *   填滿電洞產生的負電荷 (Negative charges from filled holes)
*   **動畫連結**：[https://youtu.be/7ukDKVHnac4?t=45](https://youtu.be/7ukDKVHnac4?t=45)

---

**📄 Slide 16**

![Ch2_Semiconductors_and_Electronics Slide 16](assets/Ch2_Semiconductors_and_Electronics/slide-16.png)

## 總結 (Summary)

1.  半導體需要額外的能量才能導電。
2.  大多數的半導體材料是由矽 (Si) 或鍺 (Ge) 製成。
3.  為了改善導電性，純半導體材料會透過加入雜質來進行摻雜，產生 p 型和 n 型半導體。
4.  在 pn 接面處有一個位勢障礙（障壁電位），如果沒有施加額外能量，就會阻擋電流的流動。