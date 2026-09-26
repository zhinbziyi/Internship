# HTML 報表轉換工具

實習期間開發的 HTML 報表轉換工具。

開發起因為需要將 HTML 表格轉換為 PDF，但既有工具在處理 `colspan`、`rowspan` 等表格結構時有所限制，因此嘗試自行實作轉換工具，後續再加入 Excel 匯出功能。

## 功能

- 貼入包含 `<table>` 的 HTML 內容
- 預覽解析後的表格
- 支援多個 HTML Table
- 支援 `colspan`、`rowspan` 等表格結構
- 匯出 PDF
- 匯出 Excel

## 使用技術

- HTML
- JavaScript
- html2canvas
- jsPDF
- SheetJS (xlsx)

## 版本說明

### index.html
初始版本，主要功能為 HTML Table 預覽與 PDF 匯出。

### index2.html
在原有功能上增加 Excel 匯出，可將多個 Table 分別建立為不同的 Excel 工作表。

## 使用方式

1. 開啟 `index2.html`
2. 將包含 `<table>` 的 HTML 內容貼入輸入區
3. 點擊「預覽 HTML」確認解析結果
4. 選擇「下載 PDF」或「下載 Excel」

## 測試檔案

專案內附測試用 HTML，用於測試不同表格結構及多表格的解析與轉換結果。

## 線上展示

🌐 [開啟線上 Demo](https://zhinbziyi.github.io/Internship/報表測試/public/index2.html)
