# 應用電子學（一）筆記 (Applied Electronics I Notes)

## 課程資訊

- **課程名稱**：應用電子學（一）- MTU0075
- **授課教師**：辜漢文 (Woraphrut Kornmaneesang)
- **開課單位**：國立臺灣師範大學 機電系
- **學分數**：3.0 學分
- **上課時間**：星期一、09:10 ~ 12:10
- **教室**：綜 210
- **教師 Email**：woraphrut.korn@ntnu.edu.tw
- **Office Hours**：週三早上 10:00 ~ 12:00、週四上午 14:00 ~ 16:00

## 課程簡介

本課程全面介紹基於半導體的電子元件，包括：
- 二極體 (Diodes)
- 電晶體 (Transistors)
- 運算放大器 (Operational Amplifiers, Op-Amps)

這些電子元件是多種功能電路中的不可或缺要素，例如電壓調節器、H橋開關器、信號調節器、主動濾波器和振盪器，這些電路是現代電子設備的核心組成部分。課程進一步探討這些元件的原理與設計方法，以理解它們在複雜電子系統中的角色。

## 專案結構

```
me-applied-electronics/
├── README.md                           # 本文件
├── AGENTS.md                           # Agent 操作指南
├── Course_syllabus.pdf                 # 課程大綱
├── course-materials/                   # 原始課程材料
│   ├── Ch1_Introduction.pdf
│   ├── Ch2_Semiconductors_and_Electronics.pdf
│   ├── Ch3_Diodes.pdf
│   ├── Ch4_Diode_Applications.pdf
│   ├── Ch5_Special_purpose_Diodes.pdf
│   └── Ch6_Bipolar_Junction_Transistors_(BJTs).pdf
└── notes/                              # 組織化的筆記
    ├── 01-introduction.md
    ├── 02-semiconductors-and-electronics.md
    ├── 03-diodes.md
    ├── 04-diode-applications.md
    ├── 05-special-purpose-diodes.md
    ├── 06-bipolar-junction-transistors-(bjts).md
    └── assets/                         # 投影片圖片資源
```

## 筆記目錄

### 第一章：介紹
[📖 01-introduction.md](notes/01-introduction.md)
- 課程基本資料與概述
- 評分標準與課程進度
- 被動元件與主動元件的區別
- 應用示例（AC-DC轉換器、逆變器、振盪器等）
- 電路學基本定律回顧

### 第二章：半導體和電子學
[📖 02-semiconductors-and-electronics.md](notes/02-semiconductors-and-electronics.md)
- 元素週期表與材料分類
- 導體、絕緣體與半導體
- 帶隙 (Band Gap) 的概念
- 矽和鍺的特性
- 電子與電洞的機制
- N型與P型半導體
- PN接面的形成與原理

### 第三章：二極體
[📖 03-diodes.md](notes/03-diodes.md)
- 二極體的結構與封裝
- 順向偏壓與逆向偏壓
- V-I 特性曲線
- 二極體模型（理想模型、實用模型、完整模型）

### 第四章：二極體的應用
[📖 04-diode-applications.md](notes/04-diode-applications.md)
- 直流電源供應器的四個組成部分
- 變壓器的工作原理
- 半波整流器與全波整流器
- AC 訊號的參數（峰值、RMS、平均值）
- 電源濾波器與漣波因數
- 電壓穩壓器
- 特殊應用（限幅器、箝位器、倍壓器）

### 第五章：特殊用途二極體
[📖 05-special-purpose-diodes.md](notes/05-special-purpose-diodes.md)
- 穩壓二極體 (Zener Diodes)
- 穩壓二極體的應用
- 變容二極體 (Varactor Diodes)
- LED 與光電二極體
- 其他特殊用途二極體

### 第六章：雙極性接面電晶體
[📖 06-bipolar-junction-transistors-(bjts).md](notes/06-bipolar-junction-transistors-(bjts).md)
- BJT 的結構與操作原理
- BJT 的特性曲線
- BJT 的偏壓電路
- BJT 作為開關與放大器

## 課程進度表

| 週次 | 日期 | 主題 | 筆記 |
|------|------|------|------|
| 1 | 2/23 | 介紹 (Introduction) | [01-introduction.md](notes/01-introduction.md) |
| 2 | 3/2 | 半導體與電子學 (Semiconductors and electronics) | [02-semiconductors-and-electronics.md](notes/02-semiconductors-and-electronics.md) |
| 3 | 3/9 | 二極體及其應用 (Diodes and applications) | [03-diodes.md](notes/03-diodes.md) |
| 4 | 3/16 | 雙極性接面電晶體 (BJTs) | [06-bipolar-junction-transistors-(bjts).md](notes/06-bipolar-junction-transistors-(bjts).md) |
| 5 | 3/23 | BJT 放大器 (BJT amplifiers) | 待完成 |
| 6 | 3/30 | 場效電晶體與開關電路 (FETs and switching circuits) | 待完成 |
| 7 | 4/6 | 兒童節/清明節（停課） | - |
| 8 | 4/13 | 期中考 (Midterm exam) | - |
| 9 | 4/20 | 運算放大器 (Op-Amp) | 待完成 |
| 10 | 4/27 | 基本運算放大器電路 (Basic Op-Amp circuits) | 待完成 |
| 11 | 5/4 | 基本運算放大器電路 (Basic Op-Amp circuits) | 待完成 |
| 12 | 5/11 | 特殊用途運算放大器電路 (Special purpose Op-Amp circuits) | 待完成 |
| 13 | 5/18 | 頻率響應 (Frequency response) | 待完成 |
| 14 | 5/25 | 主動濾波器 (Active filters) | 待完成 |
| 15 | 6/1 | 振盪器 (Oscillators) | 待完成 |
| 16 | 6/8 | 期末考 (Final exam) | - |

## 評分標準

| 項目 | 比重 | 說明 |
|------|------|------|
| 出席 (Attendance) | 10% | 課堂參與與出席狀況 |
| 小考 (Quiz) | 20% | 課堂小考，共6次 |
| 期中考 (Midterm Exam) | 35% | 半導體、電子學、二極體、二極體應用、BJT |
| 期末考 (Final Exam) | 35% | Op-Amp電路、主動濾波器、振盪器 |

## 參考教材

### 英文版
1. Thomas L. Floyd, *Electronic Devices: Conventional Current Version*, 10th Edition, Pearson Education, 2018.
2. Adel S. Sedra, Kenneth C. Smith, *Microelectronic Circuits*, 7th Edition, Oxford University Press, 2015.

### 中文版
1. Thomas L. Floyd, *電子學（基礎理論、進階應用）*, 2019年
2. Adel A. Sedra et al., *微電子學（上下冊）*, 2022~2023年

## 學習資源

### 課程平台
- [NTNU Moodle](https://moodle.ntnu.edu.tw/) - 課程教材與資源下載

### 視覺化學習
- [PN Junction Animation](https://youtu.be/7ukDKVHnac4?t=45) - PN接面的動畫演示

## 點名政策

- **遲到 < 10 分鐘** → 正常出勤
- **遲到 > 10 分鐘** → 遲到
- **遲到 > 20 分鐘** → 蹺課

## 學習建議
1. **課前預習**：在課堂前閱讀相應章節的筆記與教材
2. **課堂參與**：積極發問，參與討論與實作活動
3. **課後複習**：定期複習筆記，完成作業並準備小考
4. **實驗驗證**：配合「應用電子學實驗」課程，透過模擬與實驗驗證理論

## 專案貢獻

這個專案包含從課程材料轉換而來的筆記，採用 Markdown 格式以便於閱讀和維護。所有的筆記都遵循 [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/) 規範。

## 聯繫資訊

如有問題或建議，請聯繫授課教師或通過 NTNU Moodle 平台留言。

---

**最後更新**：2025年4月

**學期**：113學年度 第二學期
