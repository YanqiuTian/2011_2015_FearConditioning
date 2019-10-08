[sub,date]=xlsread('sub88.xlsx');
subid=88;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub87.xlsx');
subid=87;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub86.xlsx');
subid=86;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub85.xlsx');
subid=85;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub84.xlsx');
subid=84;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub83.xlsx');
subid=83;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub82.xlsx');
subid=82;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub81.xlsx');
subid=81;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub80.xlsx');
subid=80;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub78.xlsx');
subid=78;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub77.xlsx');
subid=77;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub76.xlsx');
subid=76;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub75.xlsx');
subid=75;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub74.xlsx');
subid=74;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub73.xlsx');
subid=73;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub72.xlsx');
subid=72;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub71.xlsx');
subid=71;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub70.xlsx');
subid=70;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub69.xlsx');
subid=69;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub68.xlsx');
subid=68;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub67.xlsx');
subid=67;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub66.xlsx');
subid=66;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub65.xlsx');
subid=65;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub64.xlsx');
subid=64;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub62.xlsx');
subid=62;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub61.xlsx');
subid=61;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub59.xlsx');
subid=59;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub58.xlsx');
subid=58;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub54.xlsx');
subid=54;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub49.xlsx');
subid=49;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub48.xlsx');
subid=48;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub45.xlsx');
subid=45;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub44.xlsx');
subid=44;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub43.xlsx');
subid=43;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub42.xlsx');
subid=42;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub41.xlsx');
subid=41;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end  
    
[sub,date]=xlsread('sub40.xlsx');
subid=40;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub39.xlsx');
subid=39;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub38.xlsx');
subid=38;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub37.xlsx');
subid=37;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub36.xlsx');
subid=36;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub35.xlsx');
subid=35;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end

[sub,date]=xlsread('sub34.xlsx');
subid=34;
all_sub_activity(subid,1)=subid;
all_sub_light(subid,1)=subid;

tm=datevec(sub(:,1));
sub(:,1)=tm(:,4);
day=datevec(date(:,1));
sub(:,4)=day(:,3);
[num1,number2]=size(day);
day1=day(1,3);
day2=day(num1,3);


   for i=12:23
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i-11)=mean(matrix(matrix(:,4)==day1,2));
   all_sub_light(subid,i-11)=mean(matrix(matrix(:,4)==day1,3));
   end

    for i=0:12
    matrix=sub(sub(:,1)==i,:);
   all_sub_activity(subid,i+13)=mean(matrix(matrix(:,4)==day2,2));
   all_sub_light(subid,i+13)=mean(matrix(matrix(:,4)==day2,3));
    end



%% 

% for j=1:25;
%     
% subplot(2,25,1);
% end
plot(all_sub_activity(34,1:1:25),'b','LineWidth',2);
hold on;
plot(all_sub_light(34,1:1:25),'r','LineWidth',2);
legend('Activity','Light');
hold off;
set(gca,'xtick',1:25);
%set(gca,'ytick',0:100:400);
set(gca,'XMinorTick','on');
set(gca,'yMinorTick','on');
% set(gca,'XMinorgrid','on');
%set(gca,'yMinorgrid','on');
set(gca,'XLim',[1,25]);
% str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
set(gca,'XTickLabel',str);
grid on;
xlabel('Time','fontsize',15);
title('sub 34','fontsize',20);

%% 
for j=1:12;
    subplot(5,5,j);
    plot(all_sub_activity(j+33,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(j+33,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    title(j+33,'fontsize',12); 
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    
end

for j=13:14;
    subplot(5,5,j);
    plot(all_sub_activity(j+35,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(j+35,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title(j+35,'fontsize',12);
end

    subplot(5,5,15);
    plot(all_sub_activity(54,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(54,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title(54,'fontsize',12);
    
for j=16:17;
    subplot(5,5,j);
    plot(all_sub_activity(j+42,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(j+42,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title(j+42,'fontsize',12); 
end

for j=18:19;
    subplot(5,5,j);
    plot(all_sub_activity(j+43,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(j+43,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title(j+43,'fontsize',12); 
end

for j=20:25;
    subplot(5,5,j);
    plot(all_sub_activity(j+44,1:1:25),'b','LineWidth',2);
    hold on;
    plot(all_sub_light(j+44,1:1:25),'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title(j+44,'fontsize',12); 
end
%% 
plot(all_sub_activity(34:69,:));
%% 


all_sub_activity_mean=sum(all_sub_activity)/25;
all_sub_light_mean=sum(all_sub_light)/25;

%% º∆À„mean/se

for i=1:12;
    all_sub_activity_25(i,:)=all_sub_activity(i+33,:);
    all_sub_light_25(i,:)=all_sub_light(i+33,:);
    
end

for i=13:14;
    all_sub_activity_25(i,:)=all_sub_activity(i+35,:);
    all_sub_light_25(i,:)=all_sub_light(i+35,:);
end

    all_sub_activity_25(15,:)=all_sub_activity(54,:);
    all_sub_light_25(15,:)=all_sub_light(54,:);
    
for i=16:17;
    all_sub_activity_25(i,:)=all_sub_activity(i+42,:);
    all_sub_light_25(i,:)=all_sub_light(i+42,:);
end

for i=18:19;
    all_sub_activity_25(i,:)=all_sub_activity(i+43,:);
    all_sub_light_25(i,:)=all_sub_light(i+43,:);
end

for i=20:25;
    all_sub_activity_25(i,:)=all_sub_activity(i+44,:);
    all_sub_light_25(i,:)=all_sub_light(i+44,:);
end


all_sub_activity_mean=sum(all_sub_activity_25)/25;
all_sub_light_mean=sum(all_sub_light_25)/25;

all_sub_activity_SE=std(all_sub_activity_25,1,1)/sqrt(25);
all_sub_light_SE=std(all_sub_light_25,1,1)/sqrt(25);
%% 
figure(1);
    plot(all_sub_activity_mean,'b','LineWidth',2);
    hold on;
    plot(all_sub_light_mean,'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title('mean','fontsize',12); 

figure(2);
 plot(all_sub_activity_SE,'b','LineWidth',2);
    hold on;
    plot(all_sub_light_SE,'r','LineWidth',2);
    legend('Activity','Light');
    hold off;
    set(gca,'xtick',1:25);
    %set(gca,'ytick',0:100:400);
    set(gca,'XMinorTick','on');
    set(gca,'yMinorTick','on');
    % set(gca,'XMinorgrid','on');
    %set(gca,'yMinorgrid','on');
    set(gca,'XLim',[1,25]);
    % str ={'12:00:00','13:00:00','14:00:00','15:00:00','16:00:00','17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00','23:00:00','0:00:00','1:00:00','2:00:00','3:00:00','4:00:00','5:00:00','6:00:00','7:00:00','8:00:00','9:00:00','10:00:00','11:00:00'};
    str ={'12:00:00','','','','','','18:00:00','','','','','','0:00:00','','','','','','6:00:00','','','','','','12:00:00'};
    set(gca,'XTickLabel',str);
    grid on;
    xlabel('Time','fontsize',10);
    title('SE','fontsize',12); 