# n8n 自動化實作

實習期間使用 n8n 練習自動化流程，從基本 Webhook 測試開始，進一步實作天氣 API 串接與 AI Agent。

## 實作內容

### 1. Webhook 測試

建立基本 Webhook 流程，接收前端傳入的資料，經過處理後回傳結果，用於熟悉 n8n 的 Webhook 與資料傳遞流程。

📄 `webhook_test.json`

### 2. 天氣查詢系統

使用 n8n Webhook 接收前端傳入的城市資料，並串接 OpenWeather API 取得即時天氣資訊，再將整理後的資料回傳至前端。

另外製作簡單的前端查詢頁面，可選擇城市或使用目前位置查詢天氣，並顯示天氣資訊、地圖及簡單的穿搭 / 行動建議。

📄 `weather_fetch.json`

### 3. AI Agent

使用 n8n AI Agent 建立簡單的對話流程，包含 Chat Trigger、AI Agent、Memory 與語言模型串接。

📄 `AI_chat.json`

## 使用技術 / 工具

- n8n
- Webhook
- OpenWeather API
- HTML / CSS / JavaScript
- Ollama
- Leaflet

## 執行方式

Workflow 需先在 n8n 環境中匯入並執行。

天氣查詢前端會透過 `localhost:5678` 連接本機 n8n Webhook，因此需先啟動對應的 n8n Workflow 才能正常使用。

部分 Workflow 使用外部 API 或模型服務，實際執行時需另外設定對應的 API Key、Credential 或服務環境。

## n8n 學習

實習期間為進行自動化流程實作，參考教學資源完成 n8n 本地端環境建置，並進一步練習 Webhook、外部 API 串接與 AI Agent 等功能。

[n8n 本地端部署教學](https://youtu.be/IJIRgZWMkKE)
