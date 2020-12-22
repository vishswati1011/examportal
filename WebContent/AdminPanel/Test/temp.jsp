<%@page import="java.util.Iterator"%>
<%@page import="bean.OptionAnswer"%>
<%@page import="bean.QuestionAnswer"%>

<%@page import="bean.Question"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DisplayOperation"%>
<%
	DisplayOperation so = new DisplayOperation();
	int qid = Integer.parseInt(request.getParameter("id"));
	String spageid = request.getParameter("page");
	int pageid = Integer.parseInt(spageid);
	int total = 2;
	System.out.println("pageid="+pageid);
	if (pageid == 1) {
	} else {
		pageid = pageid - 1;
		pageid = pageid * total + 1;
	}
	if(pageid>0){
	List li = so.SelectAllQuestionBytopicId(qid, pageid, total);
	System.out.println("DispalyQuestion sid===" + qid + " ===" + li);
	if(li!=null){
	ListIterator lit = li.listIterator();
	//List<OptionAnswer> list2;
	//ListIterator<OptionAnswer> itr2;
	//OptionAnswer obj;
	QuestionAnswer  q_id;
%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
	    	<%	if(lit.hasNext()==true){
	    	 q_id = (QuestionAnswer) lit.next();		
			%>
		<h2>Question:<%=q_id.getQuestion()%></h2>
		<form>
    	<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionA()%> id="opt1" name="optradio" ><%=q_id.getOptionA()%></label>
        </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionB()%> id="opt2" name="optradio"><%=q_id.getOptionB()%></label>
         </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionC()%> id="opt3" name="optradio"><%=q_id.getOptionC()%></label>
         </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionD()%>  id="opt4" name="optradio"><%=q_id.getOptionD()%></label>
         </div>
		<div class="radio">
        <label><input type="hidden" id="ans1" value=<%=q_id.getAnswer()%>></label>
     	</div>
     	 <button onclick="checkans()" type="button" class="btn btn-success">Submit Answer</button>
     	 Your Answer:<p id="yourans" ></p>
     	 <p id="correctans"></p>
     	</form>
     	<%} %>
     	 <script>
             function checkans()
                 {  
                     var ans=document.getElementById("ans1").value;
                     console.log(ans);
                     if(document.getElementById("opt1").checked==true)
                     {
                        var check=document.getElementById("opt1").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("yourans").innerHTML="correct Answer";
                        }
                        else{
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                     else if(document.getElementById("opt2").checked==true)
                     {
                        var check=document.getElementById("opt2").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("yourans").innerHTML="correct Answer";
                        }
                        else{
                            //document.getElementById("yourans").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                     else if(document.getElementById("opt3").checked==true)
                     {
                        var check=document.getElementById("opt3").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("yourans").innerHTML="correct Answer";
                        }
                        else{
                            //document.getElementById("yourans").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans").innerHTML="Right Answer : "+ans;
                       
                        }
                     }else if(document.getElementById("opt4").checked==true)
                     {
                        var check=document.getElementById("opt4").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("yourans").innerHTML="correct Answer";
                        }
                        else{
                           // document.getElementById("yourans").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                 }
         </script>
     	<%	if(lit.hasNext()==true){
	    	 q_id = (QuestionAnswer) lit.next();		
			%>
			<h2>Question:<%=q_id.getQuestion()%></h2>
		<form>
    	<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionA()%> id="opt5" name="optradio" ><%=q_id.getOptionA()%></label>
        </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionB()%> id="opt6" name="optradio"><%=q_id.getOptionB()%></label>
         </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionC()%> id="opt7" name="optradio"><%=q_id.getOptionC()%></label>
         </div>
		<div class="radio">
        <label><input type="radio" value=<%=q_id.getOptionD()%> id="opt8" name="optradio"><%=q_id.getOptionD()%></label>
         </div>
		<div class="radio">
        <label><input type="hidden" id="ans2" value=<%=q_id.getAnswer()%>></label>
     	</div>
     	<button onclick="submitanswer()" type="button" class="btn btn-success">SubmitAnswer</button>
     	 Your Answer:<p id="youransnext" ></p> 
     	 <p id="correctans2"></p>
     	</form>
     <%} %>
       <script>
                
                 function submitanswer()
                 { 
                     var ans=document.getElementById("ans2").value;
                     console.log(ans);
                     if(document.getElementById("opt5").checked==true)
                     {
                        var check=document.getElementById("opt5").value; 
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("youransnext").innerHTML="correct Answer";
                        }
                        else{
                           // document.getElementById("youransnext").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans2").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                     else if(document.getElementById("opt6").checked==true)
                     {
                        var check=document.getElementById("opt6").value;
                        console.log(check);
                        console.log(ans);
                        if(check==ans)
                        {
                        document.getElementById("youransnext").innerHTML="correct Answer";
                        }
                        else{
                            //document.getElementById("youransnext").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans2").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                     else if(document.getElementById("opt7").checked==true)
                     {
                        var check=document.getElementById("opt7").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("youransnext").innerHTML="correct Answer";
                        }
                        else{
                            //document.getElementById("youransnext").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans2").innerHTML="Right Answer : "+ans;
                       
                        }
                     }else if(document.getElementById("opt8").checked==true)
                     {
                        var check=document.getElementById("opt8").value;
                        console.log(check);
                        if(check==ans)
                        {
                        document.getElementById("youransnext").innerHTML="correct Answer";
                        }
                        else{
                           // document.getElementById("youransnext").innerHTML="wrong Answer";
                        	document.getElementById("yourans").innerHTML="wrong Answer";
                            document.getElementById("correctans2").innerHTML="Right Answer : "+ans;
                       
                        }
                     }
                 }
             </script>
      <%---- <div> <button type="button" class="btn btn-info">Cencel</button>
      <button type="button" class="btn btn-danger">Submit</button> </div>--%>
      
   <%System.out.println(pageid);
   System.out.println(total);%>
    
    <div>
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="temp.jsp?id=<%=qid%>&page=<%=pageid-2%>">Previous</a></li>
        <li class="page-item"><a class="page-link" href="temp.jsp?id=<%=qid%>&page=<%=pageid+1%>">Next</a></li>
      </ul></div>
    <%}else{response.sendRedirect("display.jsp");
    	}}else{response.sendRedirect("display.jsp");} %> 
   
</body>
</html>