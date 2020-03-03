
DirStr=['./data/disease-miRNA_P.txt'];
fidin=fopen(DirStr);             % ��txt�ļ�             

 miRNA=cell(2012,1);  %Ԥ��miRNA����
 disease=cell(1637,1);  %Ԥ��disease����

i=1;
j=1;
while ~feof(fidin)                                                       % �ж��Ƿ�Ϊ�ļ�ĩβ               
    tline=fgetl(fidin); 
    if tline 
        SStr = regexp(tline, 'hsa-', 'split');
        
        %%%%%����miRNA
        Temp_miRNA = SStr(2); %ȡ�ڶ���
        Temp_miRNA = strcat('hsa-',Temp_miRNA);%����������
        flag_miR = 1;
        for ii=1:i
            i
            flag_miR=strcmp(miRNA(ii,1),Temp_miRNA(1,1)); %�ж��Ƿ���ͬ=1,����ͬ=0����
            if flag_miR == 1
                break;
            end
        end
        if flag_miR == 0
            miRNA(i)= Temp_miRNA;
            i=i+1;
        end
        
         %%%%%����disease
        Temp_disease = SStr(1); %ȡ��һ��
        flag_disease = 1;
        for jj=1:j
            
            flag_disease=strcmp(disease(jj,1),Temp_disease(1,1)); %�ж��Ƿ���ͬ=1,����ͬ=0����
            if flag_disease == 1
                break;
            end
        end
        if flag_disease == 0
            disease(j)= Temp_disease;
            j=j+1;
        end
    end
end