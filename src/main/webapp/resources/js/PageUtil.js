var PageUtil = function() {// 페이지 처리 함수
	var totalCnt; // 총 건수
	var pageRows; // 한 페이지에 출력될 항목 갯수
	var curPage; // 현재 페이지
	var disPagepCnt;// 화면출력 페이지수
	var totalPage;
	var setNum; // 한페이지에 여러개의 페이징이 들어갈때 세팅 해 준다.
	var callFunction;

	this.setTotalPage = function(){
		this.totalPage = parseInt((this.totalCnt / this.pageRows)) + (this.totalCnt % this.pageRows > 0 ? 1:0);
	}

	this.getPrev = function(){
		var prev = 0;

		if(this.curPage > 1){
			prev = this.curPage - 1;
		}
		else{
			prev = 1;
		}

		return prev;
	}

	this.getNext = function(){
		var next = 0;

		if(this.curPage < this.totalPage){
			next = this.curPage + 1;
		}
		else{
			next = this.totalPage;
		}

		return next;
	}

	this.getPrevPage = function(){
		var prevPage = 0;
		var curPos = (parseInt((this.curPage / this.disPagepCnt)) + (this.curPage % this.disPagepCnt > 0 ? 1:0));

		if(curPos > 1){
			prevPage = parseInt((curPos - 1)) * this.disPagepCnt;
		}

		return prevPage;
	}

	this.getNextPage = function(){
		var nextPage = 0;
		var curPos  = parseInt((parseInt((this.curPage/this.disPagepCnt))+(this.curPage%this.disPagepCnt >0 ? 1:0)));

		if((curPos * this.disPagepCnt + 1) <= this.totalPage){
			nextPage    = curPos * this.disPagepCnt + 1;
		}

		if( this.totalPage >= nextPage ){
			return nextPage;
		}
		else{
			return this.totalPage;
		}
	}

	this.Drow = function(){
		var sb = '';

		var start = ((parseInt((this.curPage / this.disPagepCnt)) + (this.curPage % this.disPagepCnt > 0 ? 1:0)) * this.disPagepCnt - (this.disPagepCnt - 1));
		var end = ((parseInt((this.curPage / this.disPagepCnt)) + (this.curPage % this.disPagepCnt > 0 ? 1:0)) * this.disPagepCnt);

		if(end > this.totalPage){
			end = this.totalPage;
		}

		if(this.curPage > this.disPagepCnt){
			sb += "<a href='javascript:prev_page("+ this.setNum +");'><span class=\"ico_comm_s prev_10\">이전 10페이지</span></a>";
		}

		/*
		if(this.getPrev() < this.curPage){
			sb += "<a href='javascript:prev("+ this.setNum +");'><span class=\"ico_comm_s prev\">이전페이지</span></a>";
		}
		*/

		for(var i = start; i <= end; i++){
			if(i == this.curPage){
				sb += "<strong><span class=\"skip\">현재페이지</span>"+ i +"</strong>";
			}
			else{
				sb += "<a href='javascript:goPage("+ i +", "+ this.setNum +");'>"+ i +"</a>";
			}
		}

		/*
		if(this.curPage < this.getNext()){
			sb += "<a href='javascript:next("+ this.setNum +");'><span class=\"ico_comm_s next\">다음페이지</span></a>";
		}
		*/

		if(this.totalPage >= this.getNextPage() && this.getNextPage() != 0 ){
			sb += "<a href='javascript:next_page("+ this.setNum +");'><span class=\"ico_comm_s next_10\">다음 10페이지</span></a>";
		}

		return sb;
	}
}