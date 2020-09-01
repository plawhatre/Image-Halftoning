clc,clear,close all
%function selection
list = {'Set difference','Set complement','Set reflection','A subset B','A intersection B'...
    ,'A union B','Set translation','Dilation_1','Dilation_2','Dilation_3'};
[index] = listdlg('ListString',list,'SelectionMode','single');
if index==1
    %Set difference
    prompt={'A','B'};
    title='Set difference';
    definput={'[1; 2; 3; 4; 5; 6]','[4; 5; 6; 7; 8; 9]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=set_diff_17510056(A,B)
    s=strcat('C=A-B','=','[',num2str(C)',']');
    msgbox(s)
end
if index==2
    %Set complement
    prompt={'U','A'};
    title='Set complement';
    definput={'[1; 2; 3; 4; 5; 6]','[4; 5; 6]'};
    p=inputdlg(prompt,title,1,definput);
    U=str2num(p{1});
    A=str2num(p{2});
    C=complement_17510056(A,U)
    s=strcat('C=A^c','=','[',num2str(C)',']');
    msgbox(s)
    
end
if index==3
   %Set reflection
   prompt={'A'};
    title='Set reflection';
    definput={'[1; 2; 3; 4; 5; 6]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    C=reflection_17510056(A)
    s=strcat('C=A^','=','[',num2str(C)',']');
    msgbox(s)
end
if index==4
    %Set A subset of Set B
    prompt={'A','B'};
    title='Set A subset of Set B';
    definput={'[1; 2; 3]','[1;2;3;4;5;6]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=is_subset_17510056(A,B);
    s=strcat('C=A subset of B','=','[',num2str(C)',']');
    msgbox(s)
end
if index==5
    %Set A intersection Set B
    prompt={'A','B'};
    title='Set A intersection Set B';
    definput={'[1; 2; 3; 4; 5; 6]','[4; 5; 6; 7; 8; 9]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=intersection_17510056(A,B)
    s=strcat('C=A intersection of B','=','[',num2str(C)',']');
    msgbox(s)
end
if index==6
    %Set A union Set B
    prompt={'A','B'};
    title='Set A union Set B';
    definput={'[1; 2; 3]','[4; 5; 6]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=union_17510056(A,B)
    s=strcat('C=A union of B','=','[',num2str(C)',']');
    msgbox(s)
end
if index==7
    %Set translation
    prompt={'A','h'};
    title='Set translation';
    definput={'[1 2; 3 4; 5 6]','[1 1]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    h=str2num(p{2});
    C=translate_17510056(A,h);
    msgbox(num2str(C))
end
if index==8
    %Dialation def 1
    prompt={'A','h'};
    title='Set translation';
    definput={'[1 1]','[0 -1; 0 2]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=dilation_1_17510056(A,B)
    msgbox(num2str(C))
end
if index==9
    %Dialation def 2
    prompt={'A','h'};
    title='Set translation';
    definput={'[1 1]','[0 -1; 0 2]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=dilation_2_17510056(A,B)
    msgbox(num2str(C))
end
if index==10
    %Dialation def 3
    prompt={'A','h'};
    title='Set translation';
    definput={'[1 1]','[0 -1; 0 2]'};
    p=inputdlg(prompt,title,1,definput);
    A=str2num(p{1});
    B=str2num(p{2});
    C=dilation_3_17510056(A,B)
    msgbox(num2str(C))
end
