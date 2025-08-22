function btnclick(){
	window.location.href = "Download.jsp";
}

function backToTheChatting(){
	var postType = document.getElementById("postType").dataset.type; 
	
	if(postType == "공지"){
		window.location.href = "notice";	
	}else if(postType == "소통" || "질문" || "답변"){
		window.location.href = "list";	
	}else{
		console.log("오류");
	}
}

function insert(){
	
}

document.querySelectorAll("#post_table tr").forEach(row => {
  row.addEventListener("click", () => {
    const identyfier_code = row.getAttribute("data-code");
    window.location.href = `content?code=${identyfier_code}`;
  });
});

// 모달 열기
function show_your_sins() {
  document.getElementById("myModal").style.display = "block";
}

// 모달 닫기 (X 버튼)
document.addEventListener("DOMContentLoaded", function() {
  var modal = document.getElementById("myModal");
  var span = document.getElementsByClassName("close")[0];

  span.onclick = function() {
    modal.style.display = "none";
  }

  // 바깥 클릭 시 닫기
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
});