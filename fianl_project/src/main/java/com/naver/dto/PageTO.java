package com.naver.dto;

import java.util.List;
import java.util.Map;

public class PageTO {
   private int curPage = 1;
   private int amount;
   private int perPage = 24;
   private int totalPage;
   private int startNum;
   private int endNum;
   private int pageLine = 10;
   private int beginPageNum;
   private int stopPageNum;
   private int nextPage;
   private int prevPage;

   private List<QnaDTO> qlist;
   private List<MemberDTO> mlist;
   private List<CartsubDTO> clist;
   
   private String search;
   private List<ReviewDTO> rlist;
   private List<ProductDTO> plist;
   
   private List<OrderDTO> olist;
   private List<OrderSubDTO> oslist;
   
   public PageTO() {
      process();
   }

   
   
   public PageTO(int curPage) {
      super();
      this.curPage = curPage;
      process();
   }
   
   public String getSearch() {
      return search;
   }

public void setSearch(String search) {
      this.search = search;
   }

   public List<ReviewDTO> getRlist() {
      return rlist;
   }

   public void setRlist(List<ReviewDTO> rlist) {
      this.rlist = rlist;
   }

   public List<OrderSubDTO> getOslist() {
      return oslist;
   }

   public void setOslist(List<OrderSubDTO> oslist) {
      this.oslist = oslist;
   }

   public List<OrderDTO> getOlist() {
      return olist;
   }

   public void setOlist(List<OrderDTO> olist) {
      this.olist = olist;
   }

   public List<MemberDTO> getMlist() {
      return mlist;
   }

   public void setMlist(List<MemberDTO> mlist) {
      this.mlist = mlist;
   }

   public List<QnaDTO> getQlist() {
      return qlist;
   }

   public void setQlist(List<QnaDTO> qlist) {
      this.qlist = qlist;
   }
   
   public List<ProductDTO> getPlist() {
      return plist;
   }

   public void setPlist(List<ProductDTO> plist) {
      this.plist = plist;
   }
   
   public List<CartsubDTO> getClist() {
      return clist;
   }

   public void setClist(List<CartsubDTO> clist) {
      this.clist = clist;
   }

   public int getCurPage() {
      return curPage;
   }

   public void setCurPage(int curPage) {
      this.curPage = curPage;
      process();
   }

   public int getAmount() {
      return amount;
   }

   public void setAmount(int amount) {
      this.amount = amount;
      process();
   }

   public int getPerPage() {
      return perPage;
   }

   public void setPerPage(int perPage) {
      this.perPage = perPage;
      process();
   }

   public int getTotalPage() {
      return totalPage;
   }

   public void setTotalPage(int totalPage) {
      this.totalPage = totalPage;
   }

   public int getStartNum() {
      return startNum;
   }

   public void setStartNum(int startNum) {
      this.startNum = startNum;
   }

   public int getEndNum() {
      return endNum;
   }

   public void setEndNum(int endNum) {
      this.endNum = endNum;
   }

   public int getPageLine() {
      return pageLine;
   }

   public void setPageLine(int pageLine) {
      this.pageLine = pageLine;
   }

   public int getBeginPageNum() {
      return beginPageNum;
   }

   public void setBeginPageNum(int beginPageNum) {
      this.beginPageNum = beginPageNum;
   }

   public int getStopPageNum() {
      return stopPageNum;
   }

   public void setStopPageNum(int stopPageNum) {
      this.stopPageNum = stopPageNum;
   }

   public int getnextPage() {
      return nextPage;
   }

   public void setnextPage(int nextPage) {
      this.nextPage = nextPage;
   }

   public int getprevPage() {
      return prevPage;
   }

   public void setprevPage(int prevPage) {
      this.prevPage = prevPage;
   }

   private void process() {
      totalPage = (amount - 1) / perPage + 1;
      // 전체 페이지 : (전체게시글수 -1) / (한 페이지에 보여줄 양 (기본10) + 1 ) =
      startNum = (curPage - 1) * perPage + 1;
      // 시작 : (현재 페이지 -1) * (한페이지에 보여줄 양 (기본 10) +1) = ex)cur = 4 페이지 라면 (3*10)+1 = 31
      endNum = startNum + (perPage - 1);
      // 종료 : 31 + 9; 40 이 엔드넘
      if (endNum > amount) // 만약 엔드넘이 총 게시글보다 크다면
         endNum = amount; // 엔드넘은 총게시글의 양을 대입..
      beginPageNum = ((curPage - 1) / pageLine) * pageLine + 1;
      // ((현재페이지 -1 ) / 한 페이징에서 페이지 수) * 한 페이징에서 페이지수 )
//      stopPageNum = (((curPage - 1) / pageLine) + 1) * 10;
      stopPageNum = beginPageNum + (pageLine - 1);
      if (stopPageNum > totalPage)
         stopPageNum = totalPage;
      nextPage = ((curPage - 1) / perPage + 1) * perPage + 1;
      if (nextPage > totalPage)
         nextPage = totalPage;
      prevPage = curPage - 1 - (curPage - 1) % perPage;
      if (prevPage < 1)
         prevPage = 1;
   }










}