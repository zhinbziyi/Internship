const data = animeData.data;

// 標題與圖片
document.getElementById("title-jp").textContent = data.title_japanese;
document.getElementById("title-ch").textContent = data.title_chinese;
document.getElementById("anime-image").src = data.images.jpg.image_url;

// 基本資訊
document.getElementById("aired-manga").textContent = data.aired.manga;
document.getElementById("aired-anime").textContent = data.aired.anime;
document.getElementById("publisher").textContent = data.manga_publisher;
document.getElementById("manga-chapters").textContent = data.manga_chapters;
document.getElementById("manga-volumes").textContent = data.manga_volumes;
document.getElementById("anime-episodes").textContent = data.anime_episodes;
document.getElementById("duration").textContent = data.anime_duration;
document.getElementById("status").textContent = data.status.map(s => Object.values(s)[0]).join(" / ");
document.getElementById("staff").textContent = `${data.anime_staff.studio} / ${data.anime_staff.director} / ${data.anime_staff.series_composition}`;
document.getElementById("music").textContent = data.anime_staff.music.join(", ");
document.getElementById("genres").textContent = data.genres.map(g => g.name).join("、");

// 簡介
document.getElementById("synopsis").textContent = data.synopsis;

// YouTube 預告片
const trailers = data.trailers.map(t => t.embed_url);
let currentTrailerIndex = 0;

const trailerFrame = document.querySelector(".trailer-frame");
const externalLink = document.getElementById("external-link");

function convertToEmbedURL(url) {
  const match = url.match(/v=([^&]+)/);
  return match ? `https://www.youtube.com/embed/${match[1]}` : "";
}

function showTrailer(index) {
  const url = trailers[index];
  const embedURL = convertToEmbedURL(url);

  trailerFrame.style.opacity = 0;

  setTimeout(() => {
    trailerFrame.src = embedURL;
    trailerFrame.style.opacity = 1;

    // 特定影片（無法嵌入播放）需手動跳轉
    if (url.includes("OIBODIPC_8Y")) {
      externalLink.href = url;
      externalLink.style.display = "block";
    } else {
      externalLink.style.display = "none";
    }
  }, 300);
}

// 左右切換箭頭
document.querySelector(".arrow.left").addEventListener("click", () => {
  currentTrailerIndex = (currentTrailerIndex - 1 + trailers.length) % trailers.length;
  showTrailer(currentTrailerIndex);
});

document.querySelector(".arrow.right").addEventListener("click", () => {
  currentTrailerIndex = (currentTrailerIndex + 1) % trailers.length;
  showTrailer(currentTrailerIndex);
});

// 初始載入
showTrailer(currentTrailerIndex);
