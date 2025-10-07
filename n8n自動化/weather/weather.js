let map;      // 🌍 全域 Leaflet 地圖物件
let marker;   // 📍 標記物件

async function sendToWebhook(city) {
  const response = await fetch("http://localhost:5678/webhook/send-weather", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ q: city })
  });

  if (!response.ok) {
    document.getElementById("result").innerText = "查詢失敗，請確認 n8n 是否啟動";
    return;
  }

  const weatherData = await response.json();
  const weather = weatherData[0];

  const temp = weather["溫度(°C)"];
  const condition = weather.天氣;
  const cloud = weather["雲層覆蓋率"].all;

  const suggestion = getSuggestion(temp, condition, cloud);

  const resultText = `
    城市：${weather.城市}<br>
    國家：${weather.國家}<br>
    溫度：${temp} °C<br>
    天氣：${condition}<br>
    氣壓：${weather["氣壓(hPa)"]} hPa<br>
    雲層覆蓋率：${cloud}%<br>
    📌 建議：<br><div class="suggestion">${suggestion}</div>
  `;

  document.getElementById("result").innerHTML = resultText;
  updateMap(weather.coord.lat, weather.coord.lon, weather.城市);
}

function updateMap(lat, lon, city) {
  if (!map) {
    map = L.map('map').setView([lat, lon], 10);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '© OpenStreetMap'
    }).addTo(map);
  } else {
    map.setView([lat, lon], 10);
    if (marker) marker.remove();
  }

  marker = L.marker([lat, lon]).addTo(map).bindPopup(`📍 ${city}`).openPopup();
}

function getWeatherManual() {
  const city = document.getElementById("citySelect").value;
  sendToWebhook(city);
}

function getWeatherByLocation() {
  if (!navigator.geolocation) {
    document.getElementById("result").innerText = "瀏覽器不支援定位功能";
    return;
  }

  navigator.geolocation.getCurrentPosition(async (position) => {
    const lat = position.coords.latitude;
    const lon = position.coords.longitude;

    const geoRes = await fetch(`https://nominatim.openstreetmap.org/reverse?lat=${lat}&lon=${lon}&format=json`);
    const geoData = await geoRes.json();
    const city = geoData.address.city || geoData.address.town || geoData.address.village || geoData.address.state;

    if (!city) {
      document.getElementById("result").innerText = "找不到城市名稱";
      return;
    }

    sendToWebhook(city);
  }, (err) => {
    document.getElementById("result").innerText = "定位失敗：" + err.message;
  });
}

// ✅ 穿搭 / 行動建議邏輯
function getSuggestion(temp, weather, cloud) {
  let suggestions = [];

  if (temp < 15) {
    suggestions.push("天氣偏冷，建議穿外套或厚衣物。❄️");
  } else if (temp <= 25) {
    suggestions.push("氣溫舒適，可穿薄外套或長袖。🍃");
  } else {
    suggestions.push("天氣炎熱，請穿輕便衣物並補充水分。☀️");
  }

  const weatherLower = weather.toLowerCase();
  if (weatherLower.includes("rain") || weatherLower.includes("drizzle")) {
    suggestions.push("有下雨，出門請攜帶雨具。🌧️");
  } else if (cloud > 80) {
    suggestions.push("陰天機率高，建議攜帶雨具以備不時之需。☁️");
  }

  if (weatherLower.includes("clear") && temp > 30) {
    suggestions.push("避免中午外出，小心中暑。🧴☀️");
  }

  return suggestions.join("<br>");
}
