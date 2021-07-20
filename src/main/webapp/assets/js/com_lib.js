/**
 * 데이터를 보내는게 아닌 로그인할 때 세션에 담아놓은 거를 memberVO 변수를 담아서(로그인 컨트롤러에서 담긴)
 여기서는 이 함수만 만들어져 있지만 여기에 더 많은 함수를 만들 수 있음. 3~4년차들이 주로 짬.
 스트링to데이트(문자를 날짜로 변환) 등 다양한 공통함수와 공통 코드들을 정해놓고
 */

function getMemberInfo() {
	$.ajax({
		type : 'POST',
		url : 'getMemberInfo.do',
		
		success : function(data) {
			var obj = JSON.parse(data);
			sessionCheck(obj);
		},
		error : function(e) {
			console.log(e);
		}
	});


}