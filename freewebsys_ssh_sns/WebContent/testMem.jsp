<%@ page contentType="text/html;charset=GBK"%>

<%
out.print("��ǰ������ڴ�Ϊ:"+Runtime.getRuntime().maxMemory()/1000/1000+"MB</br>");
out.print("��ǰ��ʹ���ڴ�Ϊ:"+Runtime.getRuntime().totalMemory()/1000/1000+"MB</br>");
out.print("��ǰ��ʣ���ڴ�Ϊ:"+Runtime.getRuntime().freeMemory()/1000/1000+"MB</br>");

%>