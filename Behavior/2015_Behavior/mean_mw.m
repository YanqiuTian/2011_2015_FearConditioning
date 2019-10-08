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
