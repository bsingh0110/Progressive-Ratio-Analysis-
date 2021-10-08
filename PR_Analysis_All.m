clear
clc
%import and organize every file within a selcted folder  
datapath=uigetdir([],'Select Data Directory'); 
d=dir(fullfile(datapath,'*.txt'));
for i=1:numel(d)
  txt_file = fullfile(datapath,d(i).name);
    [fid,msg] = fopen(txt_file,'rt');
    assert(fid>=3,msg)
    out = struct();
    while ~feof(fid)
	pos = ftell(fid);
	str = strtrim(fgetl(fid));
	if numel(str)
		spl = regexp(str,':','once','split');
		spl = strtrim(spl);
		if isnan(str2double(spl{1}))
			fnm = strrep(spl{1},' ','');
			val = str2double(spl{2});
			if isnan(val)
				out.(fnm) = spl{2};
			else
				out.(fnm) = val;
			end
		else
			fseek(fid,pos,'bof');
			vec = fscanf(fid,'%*d:%f%f%f%f%f',[1,Inf]);
			out.(fnm) = vec;
            end
        end
    end
fclose(fid);
all_out{i} = out;%variable all_out contains structure of every subject's data 
end
clearvars -except all_out

%Below variables sets up empty cell array for each possible subject (1-72)
Subject1_R = {};
Subject1_L = {};
Subject2_R = {};
Subject2_L = {};
Subject3_R = {};
Subject3_L = {};
Subject4_R = {};
Subject4_L = {};
Subject5_R = {};
Subject5_L = {};
Subject6_R = {};
Subject6_L = {};
Subject7_R = {};
Subject7_L = {};
Subject8_R = {};
Subject8_L = {};
Subject9_R = {};
Subject9_L = {};
Subject10_R = {};
Subject10_L = {};
Subject11_R = {};
Subject11_L = {};
Subject12_R = {};
Subject12_L = {};
Subject13_R = {};
Subject13_L = {};
Subject14_R = {};
Subject14_L = {};
Subject15_R = {};
Subject15_L = {};
Subject16_R = {};
Subject16_L = {};
Subject17_R = {};
Subject17_L = {};
Subject18_R = {};
Subject18_L = {};
Subject19_R = {};
Subject19_L = {};
Subject20_R = {};
Subject20_L = {};
Subject21_R = {};
Subject21_L = {};
Subject22_R = {};
Subject22_L = {};
Subject23_R = {};
Subject23_L = {};
Subject24_R = {};
Subject24_L = {};
Subject25_R = {};
Subject25_L = {};
Subject26_R = {};
Subject26_L = {};
Subject27_R = {};
Subject27_L = {};
Subject28_R = {};
Subject28_L = {};
Subject29_R = {};
Subject29_L = {};
Subject30_R = {};
Subject30_L = {};
Subject31_R = {};
Subject31_L = {};
Subject32_R = {};
Subject32_L = {};
Subject33_R = {};
Subject33_L = {};
Subject34_R = {};
Subject34_L = {};
Subject35_R = {};
Subject35_L = {};
Subject36_R = {};
Subject36_L = {};
Subject37_R = {};
Subject37_L = {};
Subject38_R = {};
Subject38_L = {};
Subject39_R = {};
Subject39_L = {};
Subject40_R = {};
Subject40_L = {};
Subject41_R = {};
Subject41_L = {};
Subject42_R = {};
Subject42_L = {};
Subject43_R = {};
Subject43_L = {};
Subject44_R = {};
Subject44_L = {};
Subject45_R = {};
Subject45_L = {};
Subject46_R = {};
Subject46_L = {};
Subject47_R = {};
Subject47_L = {};
Subject48_R = {};
Subject48_L = {};
Subject49_R = {};
Subject49_L = {};
Subject50_R = {};
Subject50_L = {};
Subject51_R = {};
Subject51_L = {};
Subject52_R = {};
Subject52_L = {};
Subject53_R = {};
Subject53_L = {};
Subject54_R = {};
Subject54_L = {};
Subject55_R = {};
Subject55_L = {};
Subject56_R = {};
Subject56_L = {};
Subject57_R = {};
Subject57_L = {};
Subject58_R = {};
Subject58_L = {};
Subject59_R = {};
Subject59_L = {};
Subject60_R = {};
Subject60_L = {};
Subject61_R = {};
Subject61_L = {};
Subject62_R = {};
Subject62_L = {};
Subject63_R = {};
Subject63_L = {};
Subject64_R = {};
Subject64_L = {};
Subject65_R = {};
Subject65_L = {};
Subject66_R = {};
Subject66_L = {};
Subject67_R = {};
Subject67_L = {};
Subject68_R = {};
Subject68_L = {};
Subject69_R = {};
Subject69_L = {};
Subject70_R = {};
Subject70_L = {};
Subject71_R = {};
Subject71_L = {};
Subject72_R = {};
Subject72_L = {};



%number of actual subjects is the length of variable all_out
n_total = length(all_out);


%naming every possible subject (only 50 possible subjects are accounted for, 
%but more can be added). If there are more than 50 subjects can copy code from 
%any "elseif" to the line directly below (and up to the semilcolon;)
% ex.) copy "elseif all_out{i}.Subject == 2..." to "Subject2_L = all_out{i};"
% then paste those two lines at bottom of loop (before the two 'end'
% statements) and change the numbers to correpsonding new subject # (i.e 2 -> 51)

for i = 1:n_total
    if all_out{i}.Subject == 1 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject1_R = all_out{i};
    elseif all_out{i}.Subject == 1 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject1_L = all_out{i};
    elseif all_out{i}.Subject == 2 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject2_R = all_out{i};
    elseif all_out{i}.Subject == 2 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject2_L = all_out{i};
    elseif all_out{i}.Subject == 3 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject3_R = all_out{i};
    elseif all_out{i}.Subject == 3 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject3_L = all_out{i};
    elseif all_out{i}.Subject == 4 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject4_R = all_out{i};
    elseif all_out{i}.Subject == 4 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject4_L = all_out{i};
    elseif all_out{i}.Subject == 5 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject5_R = all_out{i};
    elseif all_out{i}.Subject == 5 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject5_L = all_out{i};
    elseif all_out{i}.Subject == 6 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject6_R = all_out{i};
    elseif all_out{i}.Subject == 6 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject6_L = all_out{i};
    elseif all_out{i}.Subject == 7 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject7_R = all_out{i};
    elseif all_out{i}.Subject == 7 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject7_L = all_out{i};
    elseif all_out{i}.Subject == 8 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject8_R = all_out{i};
    elseif all_out{i}.Subject == 8 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject8_L = all_out{i};
    elseif all_out{i}.Subject == 9 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject9_R = all_out{i};
    elseif all_out{i}.Subject == 9 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject9_L = all_out{i};
    elseif all_out{i}.Subject == 10 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject10_R = all_out{i};
    elseif all_out{i}.Subject == 10 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject10_L = all_out{i};
    elseif all_out{i}.Subject == 11 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject11_R = all_out{i};
    elseif all_out{i}.Subject == 11 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject11_L = all_out{i};
    elseif all_out{i}.Subject == 12 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject12_R = all_out{i};
    elseif all_out{i}.Subject == 12 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject12_L = all_out{i};  
    elseif all_out{i}.Subject == 13 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject13_R = all_out{i};
    elseif all_out{i}.Subject == 13 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject13_L = all_out{i};
    elseif all_out{i}.Subject == 14 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject14_R = all_out{i};
    elseif all_out{i}.Subject == 14 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject14_L = all_out{i};
    elseif all_out{i}.Subject == 15 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject15_R = all_out{i};
    elseif all_out{i}.Subject == 15 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject15_L = all_out{i};
    elseif all_out{i}.Subject == 16 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject16_R = all_out{i};
    elseif all_out{i}.Subject == 16 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject16_L = all_out{i};
    elseif all_out{i}.Subject == 17 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject17_R = all_out{i};
    elseif all_out{i}.Subject == 17 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject17_L = all_out{i};
    elseif all_out{i}.Subject == 18 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject18_R = all_out{i};
    elseif all_out{i}.Subject == 18 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject18_L = all_out{i};
    elseif all_out{i}.Subject == 19 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject19_R = all_out{i};
    elseif all_out{i}.Subject == 19 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject19_L = all_out{i};
    elseif all_out{i}.Subject == 20 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject20_R = all_out{i};
    elseif all_out{i}.Subject == 20 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject20_L = all_out{i};
    elseif all_out{i}.Subject == 21 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject21_R = all_out{i};
    elseif all_out{i}.Subject == 21 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject21_L = all_out{i};
    elseif all_out{i}.Subject == 22 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject22_R = all_out{i};
    elseif all_out{i}.Subject == 22 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject22_L = all_out{i};
    elseif all_out{i}.Subject == 23 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject23_R = all_out{i};
    elseif all_out{i}.Subject == 23 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject23_L = all_out{i};
    elseif all_out{i}.Subject == 24 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject24_R = all_out{i};
    elseif all_out{i}.Subject == 24 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject24_L = all_out{i};
    elseif all_out{i}.Subject == 25 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject25_R = all_out{i};
    elseif all_out{i}.Subject == 25 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject25_L = all_out{i};
    elseif all_out{i}.Subject == 26 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject26_R = all_out{i};
    elseif all_out{i}.Subject == 26 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject26_L = all_out{i};
    elseif all_out{i}.Subject == 27 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject27_R = all_out{i};
    elseif all_out{i}.Subject == 27 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject27_L = all_out{i};
    elseif all_out{i}.Subject == 28 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject28_R = all_out{i};
    elseif all_out{i}.Subject == 28 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject28_L = all_out{i};
    elseif all_out{i}.Subject == 29 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject29_R = all_out{i};
    elseif all_out{i}.Subject == 29 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject29_L = all_out{i};
    elseif all_out{i}.Subject == 30 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject30_R = all_out{i};
    elseif all_out{i}.Subject == 30 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject30_L = all_out{i};
    elseif all_out{i}.Subject == 31 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject31_R = all_out{i};
    elseif all_out{i}.Subject == 31 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject31_L = all_out{i};
    elseif all_out{i}.Subject == 32 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject32_R = all_out{i};
    elseif all_out{i}.Subject == 32 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject32_L = all_out{i};
    elseif all_out{i}.Subject == 33 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject33_R = all_out{i};
    elseif all_out{i}.Subject == 33 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject33_L = all_out{i};
    elseif all_out{i}.Subject == 34 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject34_R = all_out{i};
    elseif all_out{i}.Subject == 34 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject34_L = all_out{i};
    elseif all_out{i}.Subject == 35 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject35_R = all_out{i};
    elseif all_out{i}.Subject == 35 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject35_L = all_out{i};
    elseif all_out{i}.Subject == 36 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject36_R = all_out{i};
    elseif all_out{i}.Subject == 36 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject36_L = all_out{i};
    elseif all_out{i}.Subject == 37 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject37_R = all_out{i};
    elseif all_out{i}.Subject == 37 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject37_L = all_out{i};
    elseif all_out{i}.Subject == 38 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject38_R = all_out{i};
    elseif all_out{i}.Subject == 38 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject38_L = all_out{i};
    elseif all_out{i}.Subject == 39 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject39_R = all_out{i};
    elseif all_out{i}.Subject == 39 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject39_L = all_out{i};
    elseif all_out{i}.Subject == 40 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject40_R = all_out{i};
    elseif all_out{i}.Subject == 40 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject40_L = all_out{i};
    elseif all_out{i}.Subject == 41 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject41_R = all_out{i};
    elseif all_out{i}.Subject == 41 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject41_L = all_out{i};
    elseif all_out{i}.Subject == 42 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject42_R = all_out{i};
    elseif all_out{i}.Subject == 42 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject42_L = all_out{i};
    elseif all_out{i}.Subject == 43 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject43_R = all_out{i};
    elseif all_out{i}.Subject == 43 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject43_L = all_out{i};
    elseif all_out{i}.Subject == 44 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject44_R = all_out{i};
    elseif all_out{i}.Subject == 44 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject44_L = all_out{i};
    elseif all_out{i}.Subject == 45 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject45_R = all_out{i};
    elseif all_out{i}.Subject == 45 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject45_L = all_out{i};
    elseif all_out{i}.Subject == 46 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject46_R = all_out{i};
    elseif all_out{i}.Subject == 46 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject46_L = all_out{i};
    elseif all_out{i}.Subject == 47 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject47_R = all_out{i};
    elseif all_out{i}.Subject == 47 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject47_L = all_out{i};
    elseif all_out{i}.Subject == 48 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject48_R = all_out{i};
    elseif all_out{i}.Subject == 48 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject48_L = all_out{i};
    elseif all_out{i}.Subject == 49 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject49_R = all_out{i};
    elseif all_out{i}.Subject == 49 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject49_L = all_out{i};
    elseif all_out{i}.Subject == 50 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject50_R = all_out{i};
    elseif all_out{i}.Subject == 50 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject50_L = all_out{i};
     elseif all_out{i}.Subject == 51 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject51_R = all_out{i};
    elseif all_out{i}.Subject == 51 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject51_L = all_out{i};
    elseif all_out{i}.Subject == 52 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject52_R = all_out{i};
    elseif all_out{i}.Subject == 52 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject52_L = all_out{i};
    elseif all_out{i}.Subject == 53 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject53_R = all_out{i};
    elseif all_out{i}.Subject == 53 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject53_L = all_out{i};
    elseif all_out{i}.Subject == 54 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject54_R = all_out{i};
    elseif all_out{i}.Subject == 54 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject54_L = all_out{i};
    elseif all_out{i}.Subject == 55 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject55_R = all_out{i};
    elseif all_out{i}.Subject == 55 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject55_L = all_out{i};
    elseif all_out{i}.Subject == 56 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject56_R = all_out{i};
    elseif all_out{i}.Subject == 56 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject56_L = all_out{i};
    elseif all_out{i}.Subject == 57 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject57_R = all_out{i};
    elseif all_out{i}.Subject == 57 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject57_L = all_out{i};
    elseif all_out{i}.Subject == 58 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject58_R = all_out{i};
    elseif all_out{i}.Subject == 58 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject58_L = all_out{i};
    elseif all_out{i}.Subject == 59 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject59_R = all_out{i};
    elseif all_out{i}.Subject == 59 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject59_L = all_out{i};
    elseif all_out{i}.Subject == 60 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject60_R = all_out{i};
    elseif all_out{i}.Subject == 60 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject60_L = all_out{i};
    elseif all_out{i}.Subject == 61 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject61_R = all_out{i};
    elseif all_out{i}.Subject == 61 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject61_L = all_out{i};
    elseif all_out{i}.Subject == 62 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject62_R = all_out{i};
    elseif all_out{i}.Subject == 62 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject62_L = all_out{i};
    elseif all_out{i}.Subject == 63 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject63_R = all_out{i};
    elseif all_out{i}.Subject == 63 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject63_L = all_out{i};
    elseif all_out{i}.Subject == 64 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject64_R = all_out{i};
    elseif all_out{i}.Subject == 64 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject64_L = all_out{i};
    elseif all_out{i}.Subject == 65 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject65_R = all_out{i};
    elseif all_out{i}.Subject == 65 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject65_L = all_out{i};
    elseif all_out{i}.Subject == 66 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject66_R = all_out{i};
    elseif all_out{i}.Subject == 66 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject66_L = all_out{i};
    elseif all_out{i}.Subject == 67 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject67_R = all_out{i};
    elseif all_out{i}.Subject == 67 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject67_L = all_out{i};
    elseif all_out{i}.Subject == 68 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject68_R = all_out{i};
    elseif all_out{i}.Subject == 68 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject68_L = all_out{i};
    elseif all_out{i}.Subject == 69 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject69_R = all_out{i};
    elseif all_out{i}.Subject == 69 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject69_L = all_out{i};
    elseif all_out{i}.Subject == 70 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject70_R = all_out{i};
    elseif all_out{i}.Subject == 70 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject70_L = all_out{i};
    elseif all_out{i}.Subject == 71 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject71_R = all_out{i};
    elseif all_out{i}.Subject == 71 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject71_L = all_out{i};
     elseif all_out{i}.Subject == 72 && isempty(strfind(all_out{i}.MSN, 'Right')) == 0
        Subject72_R = all_out{i};
    elseif all_out{i}.Subject == 72 && isempty(strfind(all_out{i}.MSN, 'Left')) == 0
        Subject72_L = all_out{i};
    end
end
    
%%% Variable Definitions (Med-PC) - only used B,E,I
%A = Counter for lever presses
%**** B = Time stamps for lever presses ****
%J = Variable used for checking that the schedule is satisfied 
%H = Sets the fixed ratio
%T = Session time in minutes
%R = Counter for reinforcer using infusion pump
%X = Defines progresive ratio limits
%**** E = Time stamps for magazine entries****
%F = Mag Time
%**** I = Time Stamps for reinforcer delivery ****

%Extracts all time stmaps from existing subject variabales (B,E,I from MEDPC)
%if subject does not actually exist then no variable will actually be created 

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
    B_1R = Subject1_R.B;
    B_1L = Subject1_L.B;
    E_1R = Subject1_R.E;
    E_1L = Subject1_L.E;
    I_1R = Subject1_R.I;
    I_1L = Subject1_L.I;
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
    B_2R = Subject2_R.B;
    B_2L = Subject2_L.B;
    E_2R = Subject2_R.E;
    E_2L = Subject2_L.E;
    I_2R = Subject2_R.I;
    I_2L = Subject2_L.I;
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
    B_3R = Subject3_R.B;
    B_3L = Subject3_L.B;
    E_3R = Subject3_R.E;
    E_3L = Subject3_L.E;
    I_3R = Subject3_R.I;
    I_3L = Subject3_L.I;
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
    B_4R = Subject4_R.B;
    B_4L = Subject4_L.B;
    E_4R = Subject4_R.E;
    E_4L = Subject4_L.E;
    I_4R = Subject4_R.I;
    I_4L = Subject4_L.I;
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
    B_5R = Subject5_R.B;
    B_5L = Subject5_L.B;
    E_5R = Subject5_R.E;
    E_5L = Subject5_L.E;
    I_5R = Subject5_R.I;
    I_5L = Subject5_L.I;
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
    B_6R = Subject6_R.B;
    B_6L = Subject6_L.B;
    E_6R = Subject6_R.E;
    E_6L = Subject6_L.E;
    I_6R = Subject6_R.I;
    I_6L = Subject6_L.I;
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
    B_7R = Subject7_R.B;
    B_7L = Subject7_L.B;
    E_7R = Subject7_R.E;
    E_7L = Subject7_L.E;
    I_7R = Subject7_R.I;
    I_7L = Subject7_L.I;
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
    B_8R = Subject8_R.B;
    B_8L = Subject8_L.B;
    E_8R = Subject8_R.E;
    E_8L = Subject8_L.E;
    I_8R = Subject8_R.I;
    I_8L = Subject8_L.I;
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
    B_9R = Subject9_R.B;
    B_9L = Subject9_L.B;
    E_9R = Subject9_R.E;
    E_9L = Subject9_L.E;
    I_9R = Subject9_R.I;
    I_9L = Subject9_L.I;
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
    B_10R = Subject10_R.B;
    B_10L = Subject10_L.B;
    E_10R = Subject10_R.E;
    E_10L = Subject10_L.E;
    I_10R = Subject10_R.I;
    I_10L = Subject10_L.I;
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
    B_11R = Subject11_R.B;
    B_11L = Subject11_L.B;
    E_11R = Subject11_R.E;
    E_11L = Subject11_L.E;
    I_11R = Subject11_R.I;
    I_11L = Subject11_L.I;
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
    B_12R = Subject12_R.B;
    B_12L = Subject12_L.B;
    E_12R = Subject12_R.E;
    E_12L = Subject12_L.E;
    I_12R = Subject12_R.I;
    I_12L = Subject12_L.I;
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
    B_13R = Subject13_R.B;
    B_13L = Subject13_L.B;
    E_13R = Subject13_R.E;
    E_13L = Subject13_L.E;
    I_13R = Subject13_R.I;
    I_13L = Subject13_L.I;
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
    B_14R = Subject14_R.B;
    B_14L = Subject14_L.B;
    E_14R = Subject14_R.E;
    E_14L = Subject14_L.E;
    I_14R = Subject14_R.I;
    I_14L = Subject14_L.I;
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
    B_15R = Subject15_R.B;
    B_15L = Subject15_L.B;
    E_15R = Subject15_R.E;
    E_15L = Subject15_L.E;
    I_15R = Subject15_R.I;
    I_15L = Subject15_L.I;
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
    B_16R = Subject16_R.B;
    B_16L = Subject16_L.B;
    E_16R = Subject16_R.E;
    E_16L = Subject16_L.E;
    I_16R = Subject16_R.I;
    I_16L = Subject16_L.I;
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
    B_17R = Subject17_R.B;
    B_17L = Subject17_L.B;
    E_17R = Subject17_R.E;
    E_17L = Subject17_L.E;
    I_17R = Subject17_R.I;
    I_17L = Subject17_L.I;
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
    B_18R = Subject18_R.B;
    B_18L = Subject18_L.B;
    E_18R = Subject18_R.E;
    E_18L = Subject18_L.E;
    I_18R = Subject18_R.I;
    I_18L = Subject18_L.I;
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
    B_19R = Subject19_R.B;
    B_19L = Subject19_L.B;
    E_19R = Subject19_R.E;
    E_19L = Subject19_L.E;
    I_19R = Subject19_R.I;
    I_19L = Subject19_L.I;
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
    B_20R = Subject20_R.B;
    B_20L = Subject20_L.B;
    E_20R = Subject20_R.E;
    E_20L = Subject20_L.E;
    I_20R = Subject20_R.I;
    I_20L = Subject20_L.I;
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
    B_21R = Subject21_R.B;
    B_21L = Subject21_L.B;
    E_21R = Subject21_R.E;
    E_21L = Subject21_L.E;
    I_21R = Subject21_R.I;
    I_21L = Subject21_L.I;
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
    B_22R = Subject22_R.B;
    B_22L = Subject22_L.B;
    E_22R = Subject22_R.E;
    E_22L = Subject22_L.E;
    I_22R = Subject22_R.I;
    I_22L = Subject22_L.I;
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
    B_23R = Subject23_R.B;
    B_23L = Subject23_L.B;
    E_23R = Subject23_R.E;
    E_23L = Subject23_L.E;
    I_23R = Subject23_R.I;
    I_23L = Subject23_L.I;
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
    B_24R = Subject24_R.B;
    B_24L = Subject24_L.B;
    E_24R = Subject24_R.E;
    E_24L = Subject24_L.E;
    I_24R = Subject24_R.I;
    I_24L = Subject24_L.I;
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
    B_25R = Subject25_R.B;
    B_25L = Subject25_L.B;
    E_25R = Subject25_R.E;
    E_25L = Subject25_L.E;
    I_25R = Subject25_R.I;
    I_25L = Subject25_L.I;
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
    B_26R = Subject26_R.B;
    B_26L = Subject26_L.B;
    E_26R = Subject26_R.E;
    E_26L = Subject26_L.E;
    I_26R = Subject26_R.I;
    I_26L = Subject26_L.I;
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
    B_27R = Subject27_R.B;
    B_27L = Subject27_L.B;
    E_27R = Subject27_R.E;
    E_27L = Subject27_L.E;
    I_27R = Subject27_R.I;
    I_27L = Subject27_L.I;
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
    B_28R = Subject28_R.B;
    B_28L = Subject28_L.B;
    E_28R = Subject28_R.E;
    E_28L = Subject28_L.E;
    I_28R = Subject28_R.I;
    I_28L = Subject28_L.I;
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
    B_29R = Subject29_R.B;
    B_29L = Subject29_L.B;
    E_29R = Subject29_R.E;
    E_29L = Subject29_L.E;
    I_29R = Subject29_R.I;
    I_29L = Subject29_L.I;
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
    B_30R = Subject30_R.B;
    B_30L = Subject30_L.B;
    E_30R = Subject30_R.E;
    E_30L = Subject30_L.E;
    I_30R = Subject30_R.I;
    I_30L = Subject30_L.I;
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
    B_31R = Subject31_R.B;
    B_31L = Subject31_L.B;
    E_31R = Subject31_R.E;
    E_31L = Subject31_L.E;
    I_31R = Subject31_R.I;
    I_31L = Subject31_L.I;
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
    B_32R = Subject32_R.B;
    B_32L = Subject32_L.B;
    E_32R = Subject32_R.E;
    E_32L = Subject32_L.E;
    I_32R = Subject32_R.I;
    I_32L = Subject32_L.I;
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
    B_33R = Subject33_R.B;
    B_33L = Subject33_L.B;
    E_33R = Subject33_R.E;
    E_33L = Subject33_L.E;
    I_33R = Subject33_R.I;
    I_33L = Subject33_L.I;
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
    B_34R = Subject34_R.B;
    B_34L = Subject34_L.B;
    E_34R = Subject34_R.E;
    E_34L = Subject34_L.E;
    I_34R = Subject34_R.I;
    I_34L = Subject34_L.I;
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
    B_35R = Subject35_R.B;
    B_35L = Subject35_L.B;
    E_35R = Subject35_R.E;
    E_35L = Subject35_L.E;
    I_35R = Subject35_R.I;
    I_35L = Subject35_L.I;
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
    B_36R = Subject36_R.B;
    B_36L = Subject36_L.B;
    E_36R = Subject36_R.E;
    E_36L = Subject36_L.E;
    I_36R = Subject36_R.I;
    I_36L = Subject36_L.I;
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
    B_37R = Subject37_R.B;
    B_37L = Subject37_L.B;
    E_37R = Subject37_R.E;
    E_37L = Subject37_L.E;
    I_37R = Subject37_R.I;
    I_37L = Subject37_L.I;
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
    B_38R = Subject38_R.B;
    B_38L = Subject38_L.B;
    E_38R = Subject38_R.E;
    E_38L = Subject38_L.E;
    I_38R = Subject38_R.I;
    I_38L = Subject38_L.I;
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
    B_39R = Subject39_R.B;
    B_39L = Subject39_L.B;
    E_39R = Subject39_R.E;
    E_39L = Subject39_L.E;
    I_39R = Subject39_R.I;
    I_39L = Subject39_L.I;
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
    B_40R = Subject40_R.B;
    B_40L = Subject40_L.B;
    E_40R = Subject40_R.E;
    E_40L = Subject40_L.E;
    I_40R = Subject40_R.I;
    I_40L = Subject40_L.I;
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
    B_41R = Subject41_R.B;
    B_41L = Subject41_L.B;
    E_41R = Subject41_R.E;
    E_41L = Subject41_L.E;
    I_41R = Subject41_R.I;
    I_41L = Subject41_L.I;
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
    B_42R = Subject42_R.B;
    B_42L = Subject42_L.B;
    E_42R = Subject42_R.E;
    E_42L = Subject42_L.E;
    I_42R = Subject42_R.I;
    I_42L = Subject42_L.I;
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
    B_43R = Subject43_R.B;
    B_43L = Subject43_L.B;
    E_43R = Subject43_R.E;
    E_43L = Subject43_L.E;
    I_43R = Subject43_R.I;
    I_43L = Subject43_L.I;
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
    B_44R = Subject44_R.B;
    B_44L = Subject44_L.B;
    E_44R = Subject44_R.E;
    E_44L = Subject44_L.E;
    I_44R = Subject44_R.I;
    I_44L = Subject44_L.I;
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
    B_45R = Subject45_R.B;
    B_45L = Subject45_L.B;
    E_45R = Subject45_R.E;
    E_45L = Subject45_L.E;
    I_45R = Subject45_R.I;
    I_45L = Subject45_L.I;
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
    B_46R = Subject46_R.B;
    B_46L = Subject46_L.B;
    E_46R = Subject46_R.E;
    E_46L = Subject46_L.E;
    I_46R = Subject46_R.I;
    I_46L = Subject46_L.I;
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
    B_47R = Subject47_R.B;
    B_47L = Subject47_L.B;
    E_47R = Subject47_R.E;
    E_47L = Subject47_L.E;
    I_47R = Subject47_R.I;
    I_47L = Subject47_L.I;
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
    B_48R = Subject48_R.B;
    B_48L = Subject48_L.B;
    E_48R = Subject48_R.E;
    E_48L = Subject48_L.E;
    I_48R = Subject48_R.I;
    I_48L = Subject48_L.I;
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
    B_49R = Subject49_R.B;
    B_49L = Subject49_L.B;
    E_49R = Subject49_R.E;
    E_49L = Subject49_L.E;
    I_49R = Subject49_R.I;
    I_49L = Subject49_L.I;
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
    B_50R = Subject50_R.B;
    B_50L = Subject50_L.B;
    E_50R = Subject50_R.E;
    E_50L = Subject50_L.E;
    I_50R = Subject50_R.I;
    I_50L = Subject50_L.I;
end

if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
    B_51R = Subject51_R.B;
    B_51L = Subject51_L.B;
    E_51R = Subject51_R.E;
    E_51L = Subject51_L.E;
    I_51R = Subject51_R.I;
    I_51L = Subject51_L.I;
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
    B_52R = Subject52_R.B;
    B_52L = Subject52_L.B;
    E_52R = Subject52_R.E;
    E_52L = Subject52_L.E;
    I_52R = Subject52_R.I;
    I_52L = Subject52_L.I;
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
    B_53R = Subject53_R.B;
    B_53L = Subject53_L.B;
    E_53R = Subject53_R.E;
    E_53L = Subject53_L.E;
    I_53R = Subject53_R.I;
    I_53L = Subject53_L.I;
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
    B_54R = Subject54_R.B;
    B_54L = Subject54_L.B;
    E_54R = Subject54_R.E;
    E_54L = Subject54_L.E;
    I_54R = Subject54_R.I;
    I_54L = Subject54_L.I;
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    B_55R = Subject55_R.B;
    B_55L = Subject55_L.B;
    E_55R = Subject55_R.E;
    E_55L = Subject55_L.E;
    I_55R = Subject55_R.I;
    I_55L = Subject55_L.I;
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
    B_56R = Subject56_R.B;
    B_56L = Subject56_L.B;
    E_56R = Subject56_R.E;
    E_56L = Subject56_L.E;
    I_56R = Subject56_R.I;
    I_56L = Subject56_L.I;
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
    B_57R = Subject57_R.B;
    B_57L = Subject57_L.B;
    E_57R = Subject57_R.E;
    E_57L = Subject57_L.E;
    I_57R = Subject57_R.I;
    I_57L = Subject57_L.I;
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
    B_58R = Subject58_R.B;
    B_58L = Subject58_L.B;
    E_58R = Subject58_R.E;
    E_58L = Subject58_L.E;
    I_58R = Subject58_R.I;
    I_58L = Subject58_L.I;
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
    B_59R = Subject59_R.B;
    B_59L = Subject59_L.B;
    E_59R = Subject59_R.E;
    E_59L = Subject59_L.E;
    I_59R = Subject59_R.I;
    I_59L = Subject59_L.I;
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
    B_60R = Subject60_R.B;
    B_60L = Subject60_L.B;
    E_60R = Subject60_R.E;
    E_60L = Subject60_L.E;
    I_60R = Subject60_R.I;
    I_60L = Subject60_L.I;
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
    B_61R = Subject61_R.B;
    B_61L = Subject61_L.B;
    E_61R = Subject61_R.E;
    E_61L = Subject61_L.E;
    I_61R = Subject61_R.I;
    I_61L = Subject61_L.I;
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
    B_62R = Subject62_R.B;
    B_62L = Subject62_L.B;
    E_62R = Subject62_R.E;
    E_62L = Subject62_L.E;
    I_62R = Subject62_R.I;
    I_62L = Subject62_L.I;
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
    B_63R = Subject63_R.B;
    B_63L = Subject63_L.B;
    E_63R = Subject63_R.E;
    E_63L = Subject63_L.E;
    I_63R = Subject63_R.I;
    I_63L = Subject63_L.I;
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
    B_64R = Subject64_R.B;
    B_64L = Subject64_L.B;
    E_64R = Subject64_R.E;
    E_64L = Subject64_L.E;
    I_64R = Subject64_R.I;
    I_64L = Subject64_L.I;
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
    B_65R = Subject65_R.B;
    B_65L = Subject65_L.B;
    E_65R = Subject65_R.E;
    E_65L = Subject65_L.E;
    I_65R = Subject65_R.I;
    I_65L = Subject65_L.I;
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
    B_66R = Subject66_R.B;
    B_66L = Subject66_L.B;
    E_66R = Subject66_R.E;
    E_66L = Subject66_L.E;
    I_66R = Subject66_R.I;
    I_66L = Subject66_L.I;
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
    B_67R = Subject67_R.B;
    B_67L = Subject67_L.B;
    E_67R = Subject67_R.E;
    E_67L = Subject67_L.E;
    I_67R = Subject67_R.I;
    I_67L = Subject67_L.I;
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
    B_68R = Subject68_R.B;
    B_68L = Subject68_L.B;
    E_68R = Subject68_R.E;
    E_68L = Subject68_L.E;
    I_68R = Subject68_R.I;
    I_68L = Subject68_L.I;
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
    B_69R = Subject69_R.B;
    B_69L = Subject69_L.B;
    E_69R = Subject69_R.E;
    E_69L = Subject69_L.E;
    I_69R = Subject69_R.I;
    I_69L = Subject69_L.I;
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
    B_70R = Subject70_R.B;
    B_70L = Subject70_L.B;
    E_70R = Subject70_R.E;
    E_70L = Subject70_L.E;
    I_70R = Subject70_R.I;
    I_70L = Subject70_L.I;
end

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
    B_71R = Subject71_R.B;
    B_71L = Subject71_L.B;
    E_71R = Subject71_R.E;
    E_71L = Subject71_L.E;
    I_71R = Subject71_R.I;
    I_71L = Subject71_L.I;
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
    B_72R = Subject72_R.B;
    B_72L = Subject72_L.B;
    E_72R = Subject72_R.E;
    E_72L = Subject72_L.E;
    I_72R = Subject72_R.I;
    I_72L = Subject72_L.I;
end

%below creates empty array(1X50)of zeros to be filled with actual
%post-reinforcment pause data later for every existing subject (if subject
%does not exist then no data will actually be cfilled in)

PRP_1R = zeros(1,50);
PRP_1L = zeros(1,50);
PRP_2R = zeros(1,50);
PRP_2L = zeros(1,50);
PRP_3R = zeros(1,50);
PRP_3L = zeros(1,50);
PRP_4R = zeros(1,50);
PRP_4L = zeros(1,50);
PRP_5R = zeros(1,50);
PRP_5L = zeros(1,50);
PRP_6R = zeros(1,50);
PRP_6L = zeros(1,50);
PRP_7R = zeros(1,50);
PRP_7L = zeros(1,50);
PRP_8R = zeros(1,50);
PRP_8L = zeros(1,50);
PRP_9R = zeros(1,50);
PRP_9L = zeros(1,50);
PRP_10R = zeros(1,50);
PRP_10L = zeros(1,50);
PRP_11R = zeros(1,50);
PRP_11L = zeros(1,50);
PRP_12R = zeros(1,50);
PRP_12L = zeros(1,50);
PRP_13R = zeros(1,50);
PRP_13L = zeros(1,50);
PRP_14R = zeros(1,50);
PRP_14L = zeros(1,50);
PRP_15R = zeros(1,50);
PRP_15L = zeros(1,50);
PRP_16R = zeros(1,50);
PRP_16L = zeros(1,50);
PRP_17R = zeros(1,50);
PRP_17L = zeros(1,50);
PRP_18R = zeros(1,50);
PRP_18L = zeros(1,50);
PRP_19R = zeros(1,50);
PRP_19L = zeros(1,50);
PRP_20R = zeros(1,50);
PRP_20L = zeros(1,50);
PRP_21R = zeros(1,50);
PRP_21L = zeros(1,50);
PRP_22R = zeros(1,50);
PRP_22L = zeros(1,50);
PRP_23R = zeros(1,50);
PRP_23L = zeros(1,50);
PRP_24R = zeros(1,50);
PRP_24L = zeros(1,50);
PRP_25R = zeros(1,50);
PRP_25L = zeros(1,50);
PRP_26R = zeros(1,50);
PRP_26L = zeros(1,50);
PRP_27R = zeros(1,50);
PRP_27L = zeros(1,50);
PRP_28R = zeros(1,50);
PRP_28L = zeros(1,50);
PRP_29R = zeros(1,50);
PRP_29L = zeros(1,50);
PRP_30R = zeros(1,50);
PRP_30L = zeros(1,50);
PRP_31R = zeros(1,50);
PRP_31L = zeros(1,50);
PRP_32R = zeros(1,50);
PRP_32L = zeros(1,50);
PRP_33R = zeros(1,50);
PRP_33L = zeros(1,50);
PRP_34R = zeros(1,50);
PRP_34L = zeros(1,50);
PRP_35R = zeros(1,50);
PRP_35L = zeros(1,50);
PRP_36R = zeros(1,50);
PRP_36L = zeros(1,50);
PRP_37R = zeros(1,50);
PRP_37L = zeros(1,50);
PRP_38R = zeros(1,50);
PRP_38L = zeros(1,50);
PRP_39R = zeros(1,50);
PRP_39L = zeros(1,50);
PRP_40R = zeros(1,50);
PRP_40L = zeros(1,50);
PRP_41R = zeros(1,50);
PRP_41L = zeros(1,50);
PRP_42R = zeros(1,50);
PRP_42L = zeros(1,50);
PRP_43R = zeros(1,50);
PRP_43L = zeros(1,50);
PRP_44R = zeros(1,50);
PRP_44L = zeros(1,50);
PRP_45R = zeros(1,50);
PRP_45L = zeros(1,50);
PRP_46R = zeros(1,50);
PRP_46L = zeros(1,50);
PRP_47R = zeros(1,50);
PRP_47L = zeros(1,50);
PRP_48R = zeros(1,50);
PRP_48L = zeros(1,50);
PRP_49R = zeros(1,50);
PRP_49L = zeros(1,50);
PRP_50R = zeros(1,50);
PRP_50L = zeros(1,50);
PRP_51R = zeros(1,50);
PRP_51L = zeros(1,50);
PRP_52R = zeros(1,50);
PRP_52L = zeros(1,50);
PRP_53R = zeros(1,50);
PRP_53L = zeros(1,50);
PRP_54R = zeros(1,50);
PRP_54L = zeros(1,50);
PRP_55R = zeros(1,50);
PRP_55L = zeros(1,50);
PRP_56R = zeros(1,50);
PRP_56L = zeros(1,50);
PRP_57R = zeros(1,50);
PRP_57L = zeros(1,50);
PRP_58R = zeros(1,50);
PRP_58L = zeros(1,50);
PRP_59R = zeros(1,50);
PRP_59L = zeros(1,50);
PRP_60R = zeros(1,50);
PRP_60L = zeros(1,50);
PRP_61R = zeros(1,50);
PRP_61L = zeros(1,50);
PRP_62R = zeros(1,50);
PRP_62L = zeros(1,50);
PRP_63R = zeros(1,50);
PRP_63L = zeros(1,50);
PRP_64R = zeros(1,50);
PRP_64L = zeros(1,50);
PRP_65R = zeros(1,50);
PRP_65L = zeros(1,50);
PRP_66R = zeros(1,50);
PRP_66L = zeros(1,50);
PRP_67R = zeros(1,50);
PRP_67L = zeros(1,50);
PRP_68R = zeros(1,50);
PRP_68L = zeros(1,50);
PRP_69R = zeros(1,50);
PRP_69L = zeros(1,50);
PRP_70R = zeros(1,50);
PRP_70L = zeros(1,50);
PRP_71R = zeros(1,50);
PRP_71L = zeros(1,50);
PRP_72R = zeros(1,50);
PRP_72L = zeros(1,50);

%Post reinforcment pauses:
%Below loops claculate the post-reinfrocemt pauses by essentailly
%subtracting *next lever press (B) from *previoius reinforcer delivery (I).
%Time stamps for magizine entry (E) is also used in order to accurately find
%the *next lever press (B). Code is repeated for each subject's right and
%left lever. Can calculate PRP for 50 possible subjects, but only existing
%subjects will actually produce data 

%%% 1
if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0 %checks to make sure subject actually exists
    if any(I_1R(3:end)) == 0 %if statement for case of subject having only 1 reinforcer (PRP = 0)
        PRP_1R = PRP_1R;
    elseif any(I_1R(4:end)) == 0 %elseif statement for case of subject having only 2 reinforcer deliveries (therefore only 1 PRP)
        PRP_1R(1) = (B_1R(3)-I_1R(2));
    elseif length(nonzeros(I_1R)) > 2 %if subject has more than two reinforcer deliveries (multiple PRPs)
        for i = 1:length(nonzeros(I_1R))%perfomrs calculations for as many reinforcers are delivered 
        E_1R = E_1R(E_1R>I_1R(i));%E refers to magazine entries 
        B_1R = B_1R(B_1R>E_1R(1));%finds lever press after corresponding magazine entry 
        PRP_1R(i) = (B_1R(1)-I_1R(i));% PRP = B(next lever press) - I(previoius reinforcer delivery)
        end
    end
    %repeats same code just for *left* lever of same subject 
    if any(I_1L(3:end)) == 0 
        PRP_1L = PRP_1L;
    elseif any(I_1L(4:end)) == 0
        PRP_1L(1) = (B_1L(3)-I_1L(2));
    elseif length(nonzeros(I_1L)) > 2 
        for i = 1:length(nonzeros(I_1L))
        E_1L = E_1L(E_1L>I_1L(i));
        B_1L = B_1L(B_1L>E_1L(1)); 
        PRP_1L(i) = (B_1L(1)-I_1L(i));
        end
    end
end

%%% 2
if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
    if any(I_2R(3:end)) == 0 
        PRP_2R = PRP_2R;
    elseif any(I_1R(4:end)) == 0 
        PRP_2R(1) = (B_2R(3)-I_2R(2));
    elseif length(nonzeros(I_2R)) > 2 
        for i = 1:length(nonzeros(I_2R))
        E_2R = E_2R(E_2R>I_2R(i)); 
        B_2R = B_2R(B_2R>E_2R(1));
        PRP_2R(i) = (B_2R(1)-I_2R(i));
        end
    end
    if any(I_2L(3:end)) == 0 
        PRP_2L = PRP_2L;
    elseif any(I_1L(4:end)) == 0 
        PRP_2L(1) = (B_2L(3)-I_2L(2));
    elseif length(nonzeros(I_2L)) > 2 
        for i = 1:length(nonzeros(I_2L))
        E_2L = E_2L(E_2L>I_2L(i));
        B_2L = B_2L(B_2L>E_2L(1)); 
        PRP_2L(i) = (B_2L(1)-I_2L(i));
        end
    end
end

%%% 3
if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0 
    if any(I_3R(3:end)) == 0 
        PRP_3R = PRP_3R;
    elseif any(I_3R(4:end)) == 0 
        PRP_3R(1) = (B_3R(3)-I_3R(2));
    elseif length(nonzeros(I_3R)) > 2 
        for i = 1:length(nonzeros(I_3R))
        E_3R = E_3R(E_3R>I_3R(i)); 
        B_3R = B_3R(B_3R>E_3R(1));
        PRP_3R(i) = (B_3R(1)-I_3R(i));
        end
    end
    if any(I_3L(3:end)) == 0 
        PRP_3L = PRP_3L;
    elseif any(I_3L(4:end)) == 0 
        PRP_3L(1) = (B_3L(3)-I_3L(2));
    elseif length(nonzeros(I_3L)) > 2 
        for i = 1:length(nonzeros(I_3L))
        E_3L = E_3L(E_3L>I_3L(i));
        B_3L = B_3L(B_3L>E_3L(1)); 
        PRP_3L(i) = (B_3L(1)-I_3L(i));
        end
    end
end

%%% 4
if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
    if any(I_4R(3:end)) == 0 
        PRP_4R = PRP_4R;
    elseif any(I_4R(4:end)) == 0 
        PRP_4R(1) = (B_4R(3)-I_4R(2));
    elseif length(nonzeros(I_4R)) > 2 
        for i = 1:length(nonzeros(I_4R))
        E_4R = E_4R(E_4R>I_4R(i)); 
        B_4R = B_4R(B_4R>E_4R(1));
        PRP_4R(i) = (B_4R(1)-I_4R(i));
        end
    end
    if any(I_4L(3:end)) == 0 
        PRP_4L = PRP_4L;
    elseif any(I_4L(4:end)) == 0 
        PRP_4L(1) = (B_4L(3)-I_4L(2));
    elseif length(nonzeros(I_4L)) > 2 
        for i = 1:length(nonzeros(I_4L))
        E_4L = E_4L(E_4L>I_4L(i));
        B_4L = B_4L(B_4L>E_4L(1)); 
        PRP_4L(i) = (B_4L(1)-I_4L(i));
        end
    end
end

%%% 5
if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
    if any(I_5R(3:end)) == 0 
        PRP_5R = PRP_5R;
    elseif any(I_5R(4:end)) == 0 
        PRP_5R(1) = (B_5R(3)-I_5R(2));
    elseif length(nonzeros(I_5R)) > 2 
        for i = 1:length(nonzeros(I_5R))
        E_5R = E_5R(E_5R>I_5R(i)); 
        B_5R = B_5R(B_5R>E_5R(1));
        PRP_5R(i) = (B_5R(1)-I_5R(i));
        end
    end
    if any(I_5L(3:end)) == 0 
        PRP_5L = PRP_5L;
    elseif any(I_5L(4:end)) == 0 
        PRP_5L(1) = (B_5L(3)-I_5L(2));
    elseif length(nonzeros(I_5L)) > 2 
        for i = 1:length(nonzeros(I_5L))
        E_5L = E_5L(E_5L>I_5L(i));
        B_5L = B_5L(B_5L>E_5L(1)); 
        PRP_5L(i) = (B_5L(1)-I_5L(i));
        end
    end
end

%%% 6
if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0 
    if any(I_6R(3:end)) == 0 
        PRP_6R = PRP_6R;
    elseif any(I_6R(4:end)) == 0 
        PRP_6R(1) = (B_6R(3)-I_6R(2));
    elseif length(nonzeros(I_6R)) > 2 
        for i = 1:length(nonzeros(I_6R))
        E_6R = E_6R(E_6R>I_6R(i)); 
        B_6R = B_6R(B_6R>E_6R(1));
        PRP_6R(i) = (B_6R(1)-I_6R(i));
        end
    end
    if any(I_6L(3:end)) == 0 
        PRP_6L = PRP_6L;
    elseif any(I_6L(4:end)) == 0 
        PRP_6L(1) = (B_6L(3)-I_6L(2));
    elseif length(nonzeros(I_6L)) > 2 
        for i = 1:length(nonzeros(I_6L))
        E_6L = E_6L(E_6L>I_6L(i));
        B_6L = B_6L(B_6L>E_6L(1)); 
        PRP_6L(i) = (B_6L(1)-I_6L(i));
        end
    end
end

%%% 7

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
    if any(I_7R(3:end)) == 0 
        PRP_7R = PRP_7R;
    elseif any(I_7R(4:end)) == 0 
        PRP_7R(1) = (B_7R(3)-I_7R(2));
    elseif length(nonzeros(I_7R)) > 2 
        for i = 1:length(nonzeros(I_7R))
        E_7R = E_7R(E_7R>I_7R(i)); 
        B_7R = B_7R(B_7R>E_7R(1));
        PRP_7R(i) = (B_7R(1)-I_7R(i));
        end
    end
    if any(I_7L(3:end)) == 0 
        PRP_7L = PRP_7L;
    elseif any(I_7L(4:end)) == 0 
        PRP_7L(1) = (B_7L(3)-I_7L(2));
    elseif length(nonzeros(I_7L)) > 2 
        for i = 1:length(nonzeros(I_7L))
        E_7L = E_7L(E_7L>I_7L(i));
        B_7L = B_7L(B_7L>E_7L(1)); 
        PRP_7L(i) = (B_7L(1)-I_7L(i));
        end
    end
end

%%% 8
if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
    if any(I_8R(3:end)) == 0 
        PRP_8R = PRP_8R;
    elseif any(I_8R(4:end)) == 0 
        PRP_8R(1) = (B_8R(3)-I_8R(2));
    elseif length(nonzeros(I_8R)) > 2 
        for i = 1:length(nonzeros(I_8R))
        E_8R = E_8R(E_8R>I_8R(i)); 
        B_8R = B_8R(B_8R>E_8R(1));
        PRP_8R(i) = (B_8R(1)-I_8R(i));
        end
    end
    if any(I_8L(3:end)) == 0 
        PRP_8L = PRP_8L;
    elseif any(I_8L(4:end)) == 0 
        PRP_8L(1) = (B_8L(3)-I_8L(2));
    elseif length(nonzeros(I_8L)) > 2 
        for i = 1:length(nonzeros(I_8L))
        E_8L = E_8L(E_8L>I_8L(i));
        B_8L = B_8L(B_8L>E_8L(1)); 
        PRP_8L(i) = (B_8L(1)-I_8L(i));
        end
    end
end

%%% 9
if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0 
    if any(I_9R(3:end)) == 0 
        PRP_9R = PRP_9R;
    elseif any(I_9R(4:end)) == 0 
        PRP_9R(1) = (B_9R(3)-I_9R(2));
    elseif length(nonzeros(I_9R)) > 2 
        for i = 1:length(nonzeros(I_9R))
        E_9R = E_9R(E_9R>I_9R(i)); 
        B_9R = B_9R(B_9R>E_9R(1));
        PRP_9R(i) = (B_9R(1)-I_9R(i));
        end
    end
    if any(I_9L(3:end)) == 0 
        PRP_9L = PRP_9L;
    elseif any(I_9L(4:end)) == 0 
        PRP_9L(1) = (B_9L(3)-I_9L(2));
    elseif length(nonzeros(I_9L)) > 2 
        for i = 1:length(nonzeros(I_9L))
        E_9L = E_9L(E_9L>I_9L(i));
        B_9L = B_9L(B_9L>E_9L(1)); 
        PRP_9L(i) = (B_9L(1)-I_9L(i));
        end
    end
end

%%% 10
if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
    if any(I_10R(3:end)) == 0 
        PRP_10R = PRP_10R;
    elseif any(I_10R(4:end)) == 0 
        PRP_10R(1) = (B_10R(3)-I_10R(2));
    elseif length(nonzeros(I_10R)) > 2 
        for i = 1:length(nonzeros(I_10R))
        E_10R = E_10R(E_10R>I_10R(i)); 
        B_10R = B_10R(B_10R>E_10R(1));
        PRP_10R(i) = (B_10R(1)-I_10R(i));
        end
    end
    if any(I_10L(3:end)) == 0 
        PRP_10L = PRP_10L;
    elseif any(I_10L(4:end)) == 0 
        PRP_10L(1) = (B_10L(3)-I_10L(2));
    elseif length(nonzeros(I_10L)) > 2 
        for i = 1:length(nonzeros(I_10L))
        E_10L = E_10L(E_10L>I_10L(i));
        B_10L = B_10L(B_10L>E_10L(1)); 
        PRP_10L(i) = (B_10L(1)-I_10L(i));
        end
    end
end

%%% 11
if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
    if any(I_11R(3:end)) == 0 
        PRP_11R = PRP_11R;
    elseif any(I_11R(4:end)) == 0 
        PRP_11R(1) = (B_11R(3)-I_11R(2));
    elseif length(nonzeros(I_11R)) > 2 
        for i = 1:length(nonzeros(I_11R))
        E_11R = E_11R(E_11R>I_11R(i)); 
        B_11R = B_11R(B_11R>E_11R(1));
        PRP_11R(i) = (B_11R(1)-I_11R(i));
        end
    end
    if any(I_11L(3:end)) == 0 
        PRP_11L = PRP_11L;
    elseif any(I_11L(4:end)) == 0 
        PRP_11L(1) = (B_11L(3)-I_11L(2));
    elseif length(nonzeros(I_11L)) > 2 
        for i = 1:length(nonzeros(I_11L))
        E_11L = E_11L(E_11L>I_11L(i));
        B_11L = B_11L(B_11L>E_11L(1)); 
        PRP_11L(i) = (B_11L(1)-I_11L(i));
        end
    end
end

%%% 12
if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0 
    if any(I_12R(3:end)) == 0 
        PRP_12R = PRP_12R;
    elseif any(I_12R(4:end)) == 0 
        PRP_12R(1) = (B_12R(3)-I_12R(2));
    elseif length(nonzeros(I_12R)) > 2 
        for i = 1:length(nonzeros(I_12R))
        E_12R = E_12R(E_12R>I_12R(i)); 
        B_12R = B_12R(B_12R>E_12R(1));
        PRP_12R(i) = (B_12R(1)-I_12R(i));
        end
    end
    if any(I_12L(3:end)) == 0 
        PRP_12L = PRP_12L;
    elseif any(I_12L(4:end)) == 0 
        PRP_12L(1) = (B_12L(3)-I_12L(2));
    elseif length(nonzeros(I_12L)) > 2 
        for i = 1:length(nonzeros(I_12L))
        E_12L = E_12L(E_12L>I_12L(i));
        B_12L = B_12L(B_12L>E_12L(1)); 
        PRP_12L(i) = (B_12L(1)-I_12L(i));
        end
    end
end

%%% 13
if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
    if any(I_13R(3:end)) == 0 
        PRP_13R = PRP_13R;
    elseif any(I_13R(4:end)) == 0 
        PRP_13R(1) = (B_13R(3)-I_13R(2));
    elseif length(nonzeros(I_13R)) > 2 
        for i = 1:length(nonzeros(I_13R))
        E_13R = E_13R(E_13R>I_13R(i)); 
        B_13R = B_13R(B_13R>E_13R(1));
        PRP_13R(i) = (B_13R(1)-I_13R(i));
        end
    end
    if any(I_13L(3:end)) == 0 
        PRP_13L = PRP_13L;
    elseif any(I_13L(4:end)) == 0 
        PRP_13L(1) = (B_13L(3)-I_13L(2));
    elseif length(nonzeros(I_13L)) > 2 
        for i = 1:length(nonzeros(I_13L))
        E_13L = E_13L(E_13L>I_13L(i));
        B_13L = B_13L(B_13L>E_13L(1)); 
        PRP_13L(i) = (B_13L(1)-I_13L(i));
        end
    end
end

%%% 14
if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
    if any(I_14R(3:end)) == 0 
        PRP_14R = PRP_14R;
    elseif any(I_14R(4:end)) == 0 
        PRP_14R(1) = (B_14R(3)-I_14R(2));
    elseif length(nonzeros(I_14R)) > 2 
        for i = 1:length(nonzeros(I_14R))
        E_14R = E_14R(E_14R>I_14R(i)); 
        B_14R = B_14R(B_14R>E_14R(1));
        PRP_14R(i) = (B_14R(1)-I_14R(i));
        end
    end
    if any(I_14L(3:end)) == 0 
        PRP_14L = PRP_14L;
    elseif any(I_14L(4:end)) == 0 
        PRP_14L(1) = (B_14L(3)-I_14L(2));
    elseif length(nonzeros(I_14L)) > 2 
        for i = 1:length(nonzeros(I_14L))
        E_14L = E_14L(E_14L>I_14L(i));
        B_14L = B_14L(B_14L>E_14L(1)); 
        PRP_14L(i) = (B_14L(1)-I_14L(i));
        end
    end
end

%%% 15
if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
    if any(I_15R(3:end)) == 0 
        PRP_15R = PRP_15R;
    elseif any(I_15R(4:end)) == 0 
        PRP_15R(1) = (B_15R(3)-I_15R(2));
    elseif length(nonzeros(I_15R)) > 2 
        for i = 1:length(nonzeros(I_15R))
        E_15R = E_15R(E_15R>I_15R(i)); 
        B_15R = B_15R(B_15R>E_15R(1));
        PRP_15R(i) = (B_15R(1)-I_15R(i));
        end
    end
    if any(I_15L(3:end)) == 0 
        PRP_15L = PRP_15L;
    elseif any(I_15L(4:end)) == 0 
        PRP_15L(1) = (B_15L(3)-I_15L(2));
    elseif length(nonzeros(I_15L)) > 2 
        for i = 1:length(nonzeros(I_15L))
        E_15L = E_15L(E_15L>I_15L(i));
        B_15L = B_15L(B_15L>E_15L(1)); 
        PRP_15L(i) = (B_15L(1)-I_15L(i));
        end
    end
end

%%% 16
if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
    if any(I_16R(3:end)) == 0 
        PRP_16R = PRP_16R;
    elseif any(I_16R(4:end)) == 0 
        PRP_16R(1) = (B_16R(3)-I_16R(2));
    elseif length(nonzeros(I_16R)) > 2 
        for i = 1:length(nonzeros(I_16R))
        E_16R = E_16R(E_16R>I_16R(i)); 
        B_16R = B_16R(B_16R>E_16R(1));
        PRP_16R(i) = (B_16R(1)-I_16R(i));
        end
    end
    if any(I_16L(3:end)) == 0 
        PRP_16L = PRP_16L;
    elseif any(I_16L(4:end)) == 0 
        PRP_16L(1) = (B_16L(3)-I_16L(2));
    elseif length(nonzeros(I_16L)) > 2 
        for i = 1:length(nonzeros(I_16L))
        E_16L = E_16L(E_16L>I_16L(i));
        B_16L = B_16L(B_16L>E_16L(1)); 
        PRP_16L(i) = (B_16L(1)-I_16L(i));
        end
    end
end

%%% 17
if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
    if any(I_17R(3:end)) == 0 
        PRP_17R = PRP_17R;
    elseif any(I_17R(4:end)) == 0 
        PRP_17R(1) = (B_17R(3)-I_17R(2));
    elseif length(nonzeros(I_17R)) > 2 
        for i = 1:length(nonzeros(I_17R))
        E_17R = E_17R(E_17R>I_17R(i)); 
        B_17R = B_17R(B_17R>E_17R(1));
        PRP_17R(i) = (B_17R(1)-I_17R(i));
        end
    end
    if any(I_17L(3:end)) == 0 
        PRP_17L = PRP_17L;
    elseif any(I_17L(4:end)) == 0 
        PRP_17L(1) = (B_17L(3)-I_17L(2));
    elseif length(nonzeros(I_17L)) > 2 
        for i = 1:length(nonzeros(I_17L))
        E_17L = E_17L(E_17L>I_17L(i));
        B_17L = B_17L(B_17L>E_17L(1)); 
        PRP_17L(i) = (B_17L(1)-I_17L(i));
        end
    end
end

%%% 18
if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
    if any(I_18R(3:end)) == 0 
        PRP_18R = PRP_18R;
    elseif any(I_18R(4:end)) == 0 
        PRP_18R(1) = (B_18R(3)-I_18R(2));
    elseif length(nonzeros(I_18R)) > 2 
        for i = 1:length(nonzeros(I_18R))
        E_18R = E_18R(E_18R>I_18R(i)); 
        B_18R = B_18R(B_18R>E_18R(1));
        PRP_18R(i) = (B_18R(1)-I_18R(i));
        end
    end
    if any(I_18L(3:end)) == 0 
        PRP_18L = PRP_18L;
    elseif any(I_18L(4:end)) == 0 
        PRP_18L(1) = (B_18L(3)-I_18L(2));
    elseif length(nonzeros(I_18L)) > 2 
        for i = 1:length(nonzeros(I_18L))
        E_18L = E_18L(E_18L>I_18L(i));
        B_18L = B_18L(B_18L>E_18L(1)); 
        PRP_18L(i) = (B_18L(1)-I_18L(i));
        end
    end
end

%%% 19
if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
    if any(I_19R(3:end)) == 0 
        PRP_19R = PRP_19R;
    elseif any(I_19R(4:end)) == 0 
        PRP_19R(1) = (B_19R(3)-I_19R(2));
    elseif length(nonzeros(I_19R)) > 2 
        for i = 1:length(nonzeros(I_19R))
        E_19R = E_19R(E_19R>I_19R(i)); 
        B_19R = B_19R(B_19R>E_19R(1));
        PRP_19R(i) = (B_19R(1)-I_19R(i));
        end
    end
    if any(I_19L(3:end)) == 0 
        PRP_19L = PRP_19L;
    elseif any(I_19L(4:end)) == 0 
        PRP_19L(1) = (B_19L(3)-I_19L(2));
    elseif length(nonzeros(I_19L)) > 2 
        for i = 1:length(nonzeros(I_19L))
        E_19L = E_19L(E_19L>I_19L(i));
        B_19L = B_19L(B_19L>E_19L(1)); 
        PRP_19L(i) = (B_19L(1)-I_19L(i));
        end
    end
end

%%% 20
if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
    if any(I_20R(3:end)) == 0 
        PRP_20R = PRP_20R;
    elseif any(I_20R(4:end)) == 0 
        PRP_20R(1) = (B_20R(3)-I_20R(2));
    elseif length(nonzeros(I_20R)) > 2 
        for i = 1:length(nonzeros(I_20R))
        E_20R = E_20R(E_20R>I_20R(i)); 
        B_20R = B_20R(B_20R>E_20R(1));
        PRP_20R(i) = (B_20R(1)-I_20R(i));
        end
    end
    if any(I_20L(3:end)) == 0 
        PRP_20L = PRP_20L;
    elseif any(I_20L(4:end)) == 0 
        PRP_20L(1) = (B_20L(3)-I_20L(2));
    elseif length(nonzeros(I_20L)) > 2 
        for i = 1:length(nonzeros(I_20L))
        E_20L = E_20L(E_20L>I_20L(i));
        B_20L = B_20L(B_20L>E_20L(1)); 
        PRP_20L(i) = (B_20L(1)-I_20L(i));
        end
    end
end

%%% 21
if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
    if any(I_21R(3:end)) == 0 
        PRP_21R = PRP_21R;
    elseif any(I_21R(4:end)) == 0 
        PRP_21R(1) = (B_21R(3)-I_21R(2));
    elseif length(nonzeros(I_21R)) > 2 
        for i = 1:length(nonzeros(I_21R))
        E_21R = E_21R(E_21R>I_21R(i)); 
        B_21R = B_21R(B_21R>E_21R(1));
        PRP_21R(i) = (B_21R(1)-I_21R(i));
        end
    end
    if any(I_21L(3:end)) == 0 
        PRP_21L = PRP_21L;
    elseif any(I_21L(4:end)) == 0 
        PRP_21L(1) = (B_21L(3)-I_21L(2));
    elseif length(nonzeros(I_21L)) > 2 
        for i = 1:length(nonzeros(I_21L))
        E_21L = E_21L(E_21L>I_21L(i));
        B_21L = B_21L(B_21L>E_21L(1)); 
        PRP_21L(i) = (B_21L(1)-I_21L(i));
        end
    end
end

%%% 22
if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
    if any(I_22R(3:end)) == 0 
        PRP_22R = PRP_22R;
    elseif any(I_22R(4:end)) == 0 
        PRP_22R(1) = (B_22R(3)-I_22R(2));
    elseif length(nonzeros(I_22R)) > 2 
        for i = 1:length(nonzeros(I_22R))
        E_22R = E_22R(E_22R>I_22R(i)); 
        B_22R = B_22R(B_22R>E_22R(1));
        PRP_22R(i) = (B_22R(1)-I_22R(i));
        end
    end
    if any(I_22L(3:end)) == 0 
        PRP_22L = PRP_22L;
    elseif any(I_22L(4:end)) == 0 
        PRP_22L(1) = (B_22L(3)-I_22L(2));
    elseif length(nonzeros(I_22L)) > 2 
        for i = 1:length(nonzeros(I_22L))
        E_22L = E_22L(E_22L>I_22L(i));
        B_22L = B_22L(B_22L>E_22L(1)); 
        PRP_22L(i) = (B_22L(1)-I_22L(i));
        end
    end
end

%%% 23
if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
    if any(I_23R(3:end)) == 0 
        PRP_23R = PRP_23R;
    elseif any(I_23R(4:end)) == 0 
        PRP_23R(1) = (B_23R(3)-I_23R(2));
    elseif length(nonzeros(I_23R)) > 2 
        for i = 1:length(nonzeros(I_23R))
        E_23R = E_23R(E_23R>I_23R(i)); 
        B_23R = B_23R(B_23R>E_23R(1));
        PRP_23R(i) = (B_23R(1)-I_23R(i));
        end
    end
    if any(I_23L(3:end)) == 0 
        PRP_23L = PRP_23L;
    elseif any(I_23L(4:end)) == 0 
        PRP_23L(1) = (B_23L(3)-I_23L(2));
    elseif length(nonzeros(I_23L)) > 2 
        for i = 1:length(nonzeros(I_23L))
        E_23L = E_23L(E_23L>I_23L(i));
        B_23L = B_23L(B_23L>E_23L(1)); 
        PRP_23L(i) = (B_23L(1)-I_23L(i));
        end
    end
end

%%% 24
if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0 
    if any(I_24R(3:end)) == 0 
        PRP_24R = PRP_24R;
    elseif any(I_24R(4:end)) == 0 
        PRP_24R(1) = (B_24R(3)-I_24R(2));
    elseif length(nonzeros(I_24R)) > 2 
        for i = 1:length(nonzeros(I_24R))
        E_24R = E_24R(E_24R>I_24R(i)); 
        B_24R = B_24R(B_24R>E_24R(1));
        PRP_24R(i) = (B_24R(1)-I_24R(i));
        end
    end
    if any(I_24L(3:end)) == 0 
        PRP_24L = PRP_24L;
    elseif any(I_24L(4:end)) == 0 
        PRP_24L(1) = (B_24L(3)-I_24L(2));
    elseif length(nonzeros(I_24L)) > 2 
        for i = 1:length(nonzeros(I_24L))
        E_24L = E_24L(E_24L>I_24L(i));
        B_24L = B_24L(B_24L>E_24L(1)); 
        PRP_24L(i) = (B_24L(1)-I_24L(i));
        end
    end
end

%%% 25
if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
    if any(I_25R(3:end)) == 0 
        PRP_25R = PRP_25R;
    elseif any(I_25R(4:end)) == 0 
        PRP_25R(1) = (B_25R(3)-I_25R(2));
    elseif length(nonzeros(I_25R)) > 2 
        for i = 1:length(nonzeros(I_25R))
        E_25R = E_25R(E_25R>I_25R(i)); 
        B_25R = B_25R(B_25R>E_25R(1));
        PRP_25R(i) = (B_25R(1)-I_25R(i));
        end
    end
    if any(I_25L(3:end)) == 0 
        PRP_25L = PRP_25L;
    elseif any(I_25L(4:end)) == 0 
        PRP_25L(1) = (B_25L(3)-I_25L(2));
    elseif length(nonzeros(I_25L)) > 2 
        for i = 1:length(nonzeros(I_25L))
        E_25L = E_25L(E_25L>I_25L(i));
        B_25L = B_25L(B_25L>E_25L(1)); 
        PRP_25L(i) = (B_25L(1)-I_25L(i));
        end
    end
end

%%% 26
if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
    if any(I_26R(3:end)) == 0 
        PRP_26R = PRP_26R;
    elseif any(I_26R(4:end)) == 0 
        PRP_26R(1) = (B_26R(3)-I_26R(2));
    elseif length(nonzeros(I_26R)) > 2 
        for i = 1:length(nonzeros(I_26R))
        E_26R = E_26R(E_26R>I_26R(i)); 
        B_26R = B_26R(B_26R>E_26R(1));
        PRP_26R(i) = (B_26R(1)-I_26R(i));
        end
    end
    if any(I_26L(3:end)) == 0 
        PRP_26L = PRP_26L;
    elseif any(I_26L(4:end)) == 0 
        PRP_26L(1) = (B_26L(3)-I_26L(2));
    elseif length(nonzeros(I_26L)) > 2 
        for i = 1:length(nonzeros(I_26L))
        E_26L = E_26L(E_26L>I_26L(i));
        B_26L = B_26L(B_26L>E_26L(1)); 
        PRP_26L(i) = (B_26L(1)-I_26L(i));
        end
    end
end

%%% 27
if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
    if any(I_27R(3:end)) == 0 
        PRP_27R = PRP_27R;
    elseif any(I_27R(4:end)) == 0 
        PRP_27R(1) = (B_27R(3)-I_27R(2));
    elseif length(nonzeros(I_27R)) > 2 
        for i = 1:length(nonzeros(I_27R))
        E_27R = E_27R(E_27R>I_27R(i)); 
        B_27R = B_27R(B_27R>E_27R(1));
        PRP_27R(i) = (B_27R(1)-I_27R(i));
        end
    end
    if any(I_27L(3:end)) == 0 
        PRP_27L = PRP_27L;
    elseif any(I_27L(4:end)) == 0 
        PRP_27L(1) = (B_27L(3)-I_27L(2));
    elseif length(nonzeros(I_27L)) > 2 
        for i = 1:length(nonzeros(I_27L))
        E_27L = E_27L(E_27L>I_27L(i));
        B_27L = B_27L(B_27L>E_27L(1)); 
        PRP_27L(i) = (B_27L(1)-I_27L(i));
        end
    end
end

%%% 28
if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
    if any(I_28R(3:end)) == 0 
        PRP_28R = PRP_28R;
    elseif any(I_28R(4:end)) == 0 
        PRP_28R(1) = (B_28R(3)-I_28R(2));
    elseif length(nonzeros(I_28R)) > 2 
        for i = 1:length(nonzeros(I_28R))
        E_28R = E_28R(E_28R>I_28R(i)); 
        B_28R = B_28R(B_28R>E_28R(1));
        PRP_28R(i) = (B_28R(1)-I_28R(i));
        end
    end
    if any(I_28L(3:end)) == 0 
        PRP_28L = PRP_28L;
    elseif any(I_28L(4:end)) == 0 
        PRP_28L(1) = (B_28L(3)-I_28L(2));
    elseif length(nonzeros(I_28L)) > 2 
        for i = 1:length(nonzeros(I_28L))
        E_28L = E_28L(E_28L>I_28L(i));
        B_28L = B_28L(B_28L>E_28L(1)); 
        PRP_28L(i) = (B_28L(1)-I_28L(i));
        end
    end
end

%%% 29
if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
    if any(I_29R(3:end)) == 0 
        PRP_29R = PRP_29R;
    elseif any(I_29R(4:end)) == 0 
        PRP_29R(1) = (B_29R(3)-I_29R(2));
    elseif length(nonzeros(I_29R)) > 2 
        for i = 1:length(nonzeros(I_29R))
        E_29R = E_29R(E_29R>I_29R(i)); 
        B_29R = B_29R(B_29R>E_29R(1));
        PRP_29R(i) = (B_29R(1)-I_29R(i));
        end
    end
    if any(I_29L(3:end)) == 0 
        PRP_29L = PRP_29L;
    elseif any(I_29L(4:end)) == 0 
        PRP_29L(1) = (B_29L(3)-I_29L(2));
    elseif length(nonzeros(I_29L)) > 2 
        for i = 1:length(nonzeros(I_29L))
        E_29L = E_29L(E_29L>I_29L(i));
        B_29L = B_29L(B_29L>E_29L(1)); 
        PRP_29L(i) = (B_29L(1)-I_29L(i));
        end
    end
end

%%% 30
if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
    if any(I_30R(3:end)) == 0 
        PRP_30R = PRP_30R;
    elseif any(I_30R(4:end)) == 0 
        PRP_30R(1) = (B_30R(3)-I_30R(2));
    elseif length(nonzeros(I_30R)) > 2 
        for i = 1:length(nonzeros(I_30R))
        E_30R = E_30R(E_30R>I_30R(i)); 
        B_30R = B_30R(B_30R>E_30R(1));
        PRP_30R(i) = (B_30R(1)-I_30R(i));
        end
    end
    if any(I_30L(3:end)) == 0 
        PRP_30L = PRP_30L;
    elseif any(I_30L(4:end)) == 0 
        PRP_30L(1) = (B_30L(3)-I_30L(2));
    elseif length(nonzeros(I_30L)) > 2 
        for i = 1:length(nonzeros(I_30L))
        E_30L = E_30L(E_30L>I_30L(i));
        B_30L = B_30L(B_30L>E_30L(1)); 
        PRP_30L(i) = (B_30L(1)-I_30L(i));
        end
    end
end

%%% 31
if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
    if any(I_31R(3:end)) == 0 
        PRP_31R = PRP_31R;
    elseif any(I_31R(4:end)) == 0 
        PRP_31R(1) = (B_31R(3)-I_31R(2));
    elseif length(nonzeros(I_31R)) > 2 
        for i = 1:length(nonzeros(I_31R))
        E_31R = E_31R(E_31R>I_31R(i)); 
        B_31R = B_31R(B_31R>E_31R(1));
        PRP_31R(i) = (B_31R(1)-I_31R(i));
        end
    end
    if any(I_31L(3:end)) == 0 
        PRP_31L = PRP_31L;
    elseif any(I_31L(4:end)) == 0 
        PRP_31L(1) = (B_31L(3)-I_31L(2));
    elseif length(nonzeros(I_31L)) > 2 
        for i = 1:length(nonzeros(I_31L))
        E_31L = E_31L(E_31L>I_31L(i));
        B_31L = B_31L(B_31L>E_31L(1)); 
        PRP_31L(i) = (B_31L(1)-I_31L(i));
        end
    end
end

%%% 32
if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
    if any(I_32R(3:end)) == 0 
        PRP_32R = PRP_32R;
    elseif any(I_32R(4:end)) == 0 
        PRP_32R(1) = (B_32R(3)-I_32R(2));
    elseif length(nonzeros(I_32R)) > 2 
        for i = 1:length(nonzeros(I_32R))
        E_32R = E_32R(E_32R>I_32R(i)); 
        B_32R = B_32R(B_32R>E_32R(1));
        PRP_32R(i) = (B_32R(1)-I_32R(i));
        end
    end
    if any(I_32L(3:end)) == 0 
        PRP_32L = PRP_32L;
    elseif any(I_32L(4:end)) == 0 
        PRP_32L(1) = (B_32L(3)-I_32L(2));
    elseif length(nonzeros(I_32L)) > 2 
        for i = 1:length(nonzeros(I_32L))
        E_32L = E_32L(E_32L>I_32L(i));
        B_32L = B_32L(B_32L>E_32L(1)); 
        PRP_32L(i) = (B_32L(1)-I_32L(i));
        end
    end
end

%%% 33
if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
    if any(I_33R(3:end)) == 0 
        PRP_33R = PRP_33R;
    elseif any(I_33R(4:end)) == 0 
        PRP_33R(1) = (B_33R(3)-I_33R(2));
    elseif length(nonzeros(I_33R)) > 2 
        for i = 1:length(nonzeros(I_33R))
        E_33R = E_33R(E_33R>I_33R(i)); 
        B_33R = B_33R(B_33R>E_33R(1));
        PRP_33R(i) = (B_33R(1)-I_33R(i));
        end
    end
    if any(I_33L(3:end)) == 0 
        PRP_33L = PRP_33L;
    elseif any(I_33L(4:end)) == 0 
        PRP_33L(1) = (B_33L(3)-I_33L(2));
    elseif length(nonzeros(I_33L)) > 2 
        for i = 1:length(nonzeros(I_33L))
        E_33L = E_33L(E_33L>I_33L(i));
        B_33L = B_33L(B_33L>E_33L(1)); 
        PRP_33L(i) = (B_33L(1)-I_33L(i));
        end
    end
end

%%% 34
if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
    if any(I_34R(3:end)) == 0 
        PRP_34R = PRP_34R;
    elseif any(I_34R(4:end)) == 0 
        PRP_34R(1) = (B_34R(3)-I_34R(2));
    elseif length(nonzeros(I_34R)) > 2 
        for i = 1:length(nonzeros(I_34R))
        E_34R = E_34R(E_34R>I_34R(i)); 
        B_34R = B_34R(B_34R>E_34R(1));
        PRP_34R(i) = (B_34R(1)-I_34R(i));
        end
    end
    if any(I_34L(3:end)) == 0 
        PRP_34L = PRP_34L;
    elseif any(I_34L(4:end)) == 0 
        PRP_34L(1) = (B_34L(3)-I_34L(2));
    elseif length(nonzeros(I_34L)) > 2 
        for i = 1:length(nonzeros(I_34L))
        E_34L = E_34L(E_34L>I_34L(i));
        B_34L = B_34L(B_34L>E_34L(1)); 
        PRP_34L(i) = (B_34L(1)-I_34L(i));
        end
    end
end

%%% 35
if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
    if any(I_35R(3:end)) == 0 
        PRP_35R = PRP_35R;
    elseif any(I_35R(4:end)) == 0 
        PRP_35R(1) = (B_35R(3)-I_35R(2));
    elseif length(nonzeros(I_35R)) > 2 
        for i = 1:length(nonzeros(I_35R))
        E_35R = E_35R(E_35R>I_35R(i)); 
        B_35R = B_35R(B_35R>E_35R(1));
        PRP_35R(i) = (B_35R(1)-I_35R(i));
        end
    end
    if any(I_35L(3:end)) == 0 
        PRP_35L = PRP_35L;
    elseif any(I_35L(4:end)) == 0 
        PRP_35L(1) = (B_35L(3)-I_35L(2));
    elseif length(nonzeros(I_35L)) > 2 
        for i = 1:length(nonzeros(I_35L))
        E_35L = E_35L(E_35L>I_35L(i));
        B_35L = B_35L(B_35L>E_35L(1)); 
        PRP_35L(i) = (B_35L(1)-I_35L(i));
        end
    end
end

%%% 36
if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
    if any(I_36R(3:end)) == 0 
        PRP_36R = PRP_36R;
    elseif any(I_36R(4:end)) == 0 
        PRP_36R(1) = (B_36R(3)-I_36R(2));
    elseif length(nonzeros(I_36R)) > 2 
        for i = 1:length(nonzeros(I_36R))
        E_36R = E_36R(E_36R>I_36R(i)); 
        B_36R = B_36R(B_36R>E_36R(1));
        PRP_36R(i) = (B_36R(1)-I_36R(i));
        end
    end
    if any(I_36L(3:end)) == 0 
        PRP_36L = PRP_36L;
    elseif any(I_36L(4:end)) == 0 
        PRP_36L(1) = (B_36L(3)-I_36L(2));
    elseif length(nonzeros(I_36L)) > 2 
        for i = 1:length(nonzeros(I_36L))
        E_36L = E_36L(E_36L>I_36L(i));
        B_36L = B_36L(B_36L>E_36L(1)); 
        PRP_36L(i) = (B_36L(1)-I_36L(i));
        end
    end
end

%%% 37
if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0 
    if any(I_37R(3:end)) == 0 
        PRP_37R = PRP_37R;
    elseif any(I_37R(4:end)) == 0 
        PRP_37R(1) = (B_37R(3)-I_37R(2));
    elseif length(nonzeros(I_37R)) > 2 
        for i = 1:length(nonzeros(I_37R))
        E_37R = E_37R(E_37R>I_37R(i)); 
        B_37R = B_37R(B_37R>E_37R(1));
        PRP_37R(i) = (B_37R(1)-I_37R(i));
        end
    end
    if any(I_37L(3:end)) == 0 
        PRP_37L = PRP_37L;
    elseif any(I_37L(4:end)) == 0 
        PRP_37L(1) = (B_37L(3)-I_37L(2));
    elseif length(nonzeros(I_37L)) > 2 
        for i = 1:length(nonzeros(I_37L))
        E_37L = E_37L(E_37L>I_37L(i));
        B_37L = B_37L(B_37L>E_37L(1)); 
        PRP_37L(i) = (B_37L(1)-I_37L(i));
        end
    end
end

%%% 38
if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
    if any(I_38R(3:end)) == 0 
        PRP_38R = PRP_38R;
    elseif any(I_38R(4:end)) == 0 
        PRP_38R(1) = (B_38R(3)-I_38R(2));
    elseif length(nonzeros(I_38R)) > 2 
        for i = 1:length(nonzeros(I_38R))
        E_38R = E_38R(E_38R>I_38R(i)); 
        B_38R = B_38R(B_38R>E_38R(1));
        PRP_38R(i) = (B_38R(1)-I_38R(i));
        end
    end
    if any(I_38L(3:end)) == 0 
        PRP_38L = PRP_38L;
    elseif any(I_38L(4:end)) == 0 
        PRP_38L(1) = (B_38L(3)-I_38L(2));
    elseif length(nonzeros(I_38L)) > 2 
        for i = 1:length(nonzeros(I_38L))
        E_38L = E_38L(E_38L>I_38L(i));
        B_38L = B_38L(B_38L>E_38L(1)); 
        PRP_38L(i) = (B_38L(1)-I_38L(i));
        end
    end
end

%%% 39
if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0 
    if any(I_39R(3:end)) == 0 
        PRP_39R = PRP_39R;
    elseif any(I_39R(4:end)) == 0 
        PRP_39R(1) = (B_39R(3)-I_39R(2));
    elseif length(nonzeros(I_39R)) > 2 
        for i = 1:length(nonzeros(I_39R))
        E_39R = E_39R(E_39R>I_39R(i)); 
        B_39R = B_39R(B_39R>E_39R(1));
        PRP_39R(i) = (B_39R(1)-I_39R(i));
        end
    end
    if any(I_39L(3:end)) == 0 
        PRP_39L = PRP_39L;
    elseif any(I_39L(4:end)) == 0 
        PRP_39L(1) = (B_39L(3)-I_39L(2));
    elseif length(nonzeros(I_39L)) > 2 
        for i = 1:length(nonzeros(I_39L))
        E_39L = E_39L(E_39L>I_39L(i));
        B_39L = B_39L(B_39L>E_39L(1)); 
        PRP_39L(i) = (B_39L(1)-I_39L(i));
        end
    end
end

%%% 40
if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
    if any(I_40R(3:end)) == 0 
        PRP_40R = PRP_40R;
    elseif any(I_40R(4:end)) == 0 
        PRP_40R(1) = (B_40R(3)-I_40R(2));
    elseif length(nonzeros(I_40R)) > 2 
        for i = 1:length(nonzeros(I_40R))
        E_40R = E_40R(E_40R>I_40R(i)); 
        B_40R = B_40R(B_40R>E_40R(1));
        PRP_40R(i) = (B_40R(1)-I_40R(i));
        end
    end
    if any(I_40L(3:end)) == 0 
        PRP_40L = PRP_40L;
    elseif any(I_40L(4:end)) == 0 
        PRP_40L(1) = (B_40L(3)-I_40L(2));
    elseif length(nonzeros(I_40L)) > 2 
        for i = 1:length(nonzeros(I_40L))
        E_40L = E_40L(E_40L>I_40L(i));
        B_40L = B_40L(B_40L>E_40L(1)); 
        PRP_40L(i) = (B_40L(1)-I_40L(i));
        end
    end
end

%%% 41
if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0 
    if any(I_41R(3:end)) == 0 
        PRP_41R = PRP_41R;
    elseif any(I_41R(4:end)) == 0 
        PRP_41R(1) = (B_41R(3)-I_41R(2));
    elseif length(nonzeros(I_41R)) > 2 
        for i = 1:length(nonzeros(I_41R))
        E_41R = E_41R(E_41R>I_41R(i)); 
        B_41R = B_41R(B_41R>E_41R(1));
        PRP_41R(i) = (B_41R(1)-I_41R(i));
        end
    end
    if any(I_41L(3:end)) == 0 
        PRP_41L = PRP_41L;
    elseif any(I_41L(4:end)) == 0 
        PRP_41L(1) = (B_41L(3)-I_41L(2));
    elseif length(nonzeros(I_41L)) > 2 
        for i = 1:length(nonzeros(I_41L))
        E_41L = E_41L(E_41L>I_41L(i));
        B_41L = B_41L(B_41L>E_41L(1)); 
        PRP_41L(i) = (B_41L(1)-I_41L(i));
        end
    end
end

%%% 42
if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0 
    if any(I_42R(3:end)) == 0 
        PRP_42R = PRP_42R;
    elseif any(I_42R(4:end)) == 0 
        PRP_42R(1) = (B_42R(3)-I_42R(2));
    elseif length(nonzeros(I_42R)) > 2 
        for i = 1:length(nonzeros(I_42R))
        E_42R = E_42R(E_42R>I_42R(i)); 
        B_42R = B_42R(B_42R>E_42R(1));
        PRP_42R(i) = (B_42R(1)-I_42R(i));
        end
    end
    if any(I_42L(3:end)) == 0 
        PRP_42L = PRP_42L;
    elseif any(I_42L(4:end)) == 0 
        PRP_42L(1) = (B_42L(3)-I_42L(2));
    elseif length(nonzeros(I_42L)) > 2 
        for i = 1:length(nonzeros(I_42L))
        E_42L = E_42L(E_42L>I_42L(i));
        B_42L = B_42L(B_42L>E_42L(1)); 
        PRP_42L(i) = (B_42L(1)-I_42L(i));
        end
    end
end

%%% 43
if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
    if any(I_43R(3:end)) == 0 
        PRP_43R = PRP_43R;
    elseif any(I_43R(4:end)) == 0 
        PRP_43R(1) = (B_43R(3)-I_43R(2));
    elseif length(nonzeros(I_43R)) > 2 
        for i = 1:length(nonzeros(I_43R))
        E_43R = E_43R(E_43R>I_43R(i)); 
        B_43R = B_43R(B_43R>E_43R(1));
        PRP_43R(i) = (B_43R(1)-I_43R(i));
        end
    end
    if any(I_43L(3:end)) == 0 
        PRP_43L = PRP_43L;
    elseif any(I_43L(4:end)) == 0 
        PRP_43L(1) = (B_43L(3)-I_43L(2));
    elseif length(nonzeros(I_43L)) > 2 
        for i = 1:length(nonzeros(I_43L))
        E_43L = E_43L(E_43L>I_43L(i));
        B_43L = B_43L(B_43L>E_43L(1)); 
        PRP_43L(i) = (B_43L(1)-I_43L(i));
        end
    end
end

%%% 44
if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0 
    if any(I_44R(3:end)) == 0 
        PRP_44R = PRP_44R;
    elseif any(I_44R(4:end)) == 0 
        PRP_44R(1) = (B_44R(3)-I_44R(2));
    elseif length(nonzeros(I_44R)) > 2 
        for i = 1:length(nonzeros(I_44R))
        E_44R = E_44R(E_44R>I_44R(i)); 
        B_44R = B_44R(B_44R>E_44R(1));
        PRP_44R(i) = (B_44R(1)-I_44R(i));
        end
    end
    if any(I_44L(3:end)) == 0 
        PRP_44L = PRP_44L;
    elseif any(I_44L(4:end)) == 0 
        PRP_44L(1) = (B_44L(3)-I_44L(2));
    elseif length(nonzeros(I_44L)) > 2 
        for i = 1:length(nonzeros(I_44L))
        E_44L = E_44L(E_44L>I_44L(i));
        B_44L = B_44L(B_44L>E_44L(1)); 
        PRP_44L(i) = (B_44L(1)-I_44L(i));
        end
    end
end

%%% 45
if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
    if any(I_45R(3:end)) == 0 
        PRP_45R = PRP_45R;
    elseif any(I_45R(4:end)) == 0 
        PRP_45R(1) = (B_45R(3)-I_45R(2));
    elseif length(nonzeros(I_45R)) > 2 
        for i = 1:length(nonzeros(I_45R))
        E_45R = E_45R(E_45R>I_45R(i)); 
        B_45R = B_45R(B_45R>E_45R(1));
        PRP_45R(i) = (B_45R(1)-I_45R(i));
        end
    end
    if any(I_45L(3:end)) == 0 
        PRP_45L = PRP_45L;
    elseif any(I_45L(4:end)) == 0 
        PRP_45L(1) = (B_45L(3)-I_45L(2));
    elseif length(nonzeros(I_45L)) > 2 
        for i = 1:length(nonzeros(I_45L))
        E_45L = E_45L(E_45L>I_45L(i));
        B_45L = B_45L(B_45L>E_45L(1)); 
        PRP_45L(i) = (B_45L(1)-I_45L(i));
        end
    end
end

%%% 46
if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
    if any(I_46R(3:end)) == 0 
        PRP_46R = PRP_46R;
    elseif any(I_46R(4:end)) == 0 
        PRP_46R(1) = (B_46R(3)-I_46R(2));
    elseif length(nonzeros(I_46R)) > 2 
        for i = 1:length(nonzeros(I_46R))
        E_46R = E_46R(E_46R>I_46R(i)); 
        B_46R = B_46R(B_46R>E_46R(1));
        PRP_46R(i) = (B_46R(1)-I_46R(i));
        end
    end
    if any(I_46L(3:end)) == 0 
        PRP_46L = PRP_46L;
    elseif any(I_46L(4:end)) == 0 
        PRP_46L(1) = (B_46L(3)-I_46L(2));
    elseif length(nonzeros(I_46L)) > 2 
        for i = 1:length(nonzeros(I_46L))
        E_46L = E_46L(E_46L>I_46L(i));
        B_46L = B_46L(B_46L>E_46L(1)); 
        PRP_46L(i) = (B_46L(1)-I_46L(i));
        end
    end
end

%%% 47
if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
    if any(I_47R(3:end)) == 0 
        PRP_47R = PRP_47R;
    elseif any(I_47R(4:end)) == 0 
        PRP_47R(1) = (B_47R(3)-I_47R(2));
    elseif length(nonzeros(I_47R)) > 2 
        for i = 1:length(nonzeros(I_47R))
        E_47R = E_47R(E_47R>I_47R(i)); 
        B_47R = B_47R(B_47R>E_47R(1));
        PRP_47R(i) = (B_47R(1)-I_47R(i));
        end
    end
    if any(I_47L(3:end)) == 0 
        PRP_47L = PRP_47L;
    elseif any(I_47L(4:end)) == 0 
        PRP_47L(1) = (B_47L(3)-I_47L(2));
    elseif length(nonzeros(I_47L)) > 2 
        for i = 1:length(nonzeros(I_47L))
        E_47L = E_47L(E_47L>I_47L(i));
        B_47L = B_47L(B_47L>E_47L(1)); 
        PRP_47L(i) = (B_47L(1)-I_47L(i));
        end
    end
end

%%% 48
if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
    if any(I_48R(3:end)) == 0 
        PRP_48R = PRP_48R;
    elseif any(I_48R(4:end)) == 0 
        PRP_48R(1) = (B_48R(3)-I_48R(2));
    elseif length(nonzeros(I_48R)) > 2 
        for i = 1:length(nonzeros(I_48R))
        E_48R = E_48R(E_48R>I_48R(i)); 
        B_48R = B_48R(B_48R>E_48R(1));
        PRP_48R(i) = (B_48R(1)-I_48R(i));
        end
    end
    if any(I_48L(3:end)) == 0 
        PRP_48L = PRP_48L;
    elseif any(I_48L(4:end)) == 0 
        PRP_48L(1) = (B_48L(3)-I_48L(2));
    elseif length(nonzeros(I_48L)) > 2 
        for i = 1:length(nonzeros(I_48L))
        E_48L = E_48L(E_48L>I_48L(i));
        B_48L = B_48L(B_48L>E_48L(1)); 
        PRP_48L(i) = (B_48L(1)-I_48L(i));
        end
    end
end

%%% 49
if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
    if any(I_49R(3:end)) == 0 
        PRP_49R = PRP_49R;
    elseif any(I_49R(4:end)) == 0 
        PRP_49R(1) = (B_49R(3)-I_49R(2));
    elseif length(nonzeros(I_49R)) > 2 
        for i = 1:length(nonzeros(I_49R))
        E_49R = E_49R(E_49R>I_49R(i)); 
        B_49R = B_49R(B_49R>E_49R(1));
        PRP_49R(i) = (B_49R(1)-I_49R(i));
        end
    end
    if any(I_49L(3:end)) == 0 
        PRP_49L = PRP_49L;
    elseif any(I_49L(4:end)) == 0 
        PRP_49L(1) = (B_49L(3)-I_49L(2));
    elseif length(nonzeros(I_49L)) > 2 
        for i = 1:length(nonzeros(I_49L))
        E_49L = E_49L(E_49L>I_49L(i));
        B_49L = B_49L(B_49L>E_49L(1)); 
        PRP_49L(i) = (B_49L(1)-I_49L(i));
        end
    end
end

%%% 50
if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
    if any(I_50R(3:end)) == 0 
        PRP_50R = PRP_50R;
    elseif any(I_50R(4:end)) == 0 
        PRP_50R(1) = (B_50R(3)-I_50R(2));
    elseif length(nonzeros(I_50R)) > 2 
        for i = 1:length(nonzeros(I_50R))
        E_50R = E_50R(E_50R>I_50R(i)); 
        B_50R = B_50R(B_50R>E_50R(1));
        PRP_50R(i) = (B_50R(1)-I_50R(i));
        end
    end
    if any(I_50L(3:end)) == 0 
        PRP_50L = PRP_50L;
    elseif any(I_50L(4:end)) == 0 
        PRP_50L(1) = (B_50L(3)-I_50L(2));
    elseif length(nonzeros(I_50L)) > 2 
        for i = 1:length(nonzeros(I_50L))
        E_50L = E_50L(E_50L>I_50L(i));
        B_50L = B_50L(B_50L>E_50L(1)); 
        PRP_50L(i) = (B_50L(1)-I_50L(i));
        end
    end
end

%%% 51
if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
    if any(I_51R(3:end)) == 0 
        PRP_51R = PRP_51R;
    elseif any(I_51R(4:end)) == 0 
        PRP_51R(1) = (B_51R(3)-I_51R(2));
    elseif length(nonzeros(I_51R)) > 2 
        for i = 1:length(nonzeros(I_51R))
        E_51R = E_51R(E_51R>I_51R(i)); 
        B_51R = B_51R(B_51R>E_51R(1));
        PRP_51R(i) = (B_51R(1)-I_51R(i));
        end
    end
    if any(I_51L(3:end)) == 0 
        PRP_51L = PRP_51L;
    elseif any(I_51L(4:end)) == 0 
        PRP_51L(1) = (B_51L(3)-I_51L(2));
    elseif length(nonzeros(I_51L)) > 2 
        for i = 1:length(nonzeros(I_51L))
        E_51L = E_51L(E_51L>I_51L(i));
        B_51L = B_51L(B_51L>E_51L(1)); 
        PRP_51L(i) = (B_51L(1)-I_51L(i));
        end
    end
end

%%% 52
if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
    if any(I_52R(3:end)) == 0 
        PRP_52R = PRP_52R;
    elseif any(I_52R(4:end)) == 0 
        PRP_52R(1) = (B_52R(3)-I_52R(2));
    elseif length(nonzeros(I_52R)) > 2 
        for i = 1:length(nonzeros(I_52R))
        E_52R = E_52R(E_52R>I_52R(i)); 
        B_52R = B_52R(B_52R>E_52R(1));
        PRP_52R(i) = (B_52R(1)-I_52R(i));
        end
    end
    if any(I_52L(3:end)) == 0 
        PRP_52L = PRP_52L;
    elseif any(I_52L(4:end)) == 0 
        PRP_52L(1) = (B_52L(3)-I_52L(2));
    elseif length(nonzeros(I_52L)) > 2 
        for i = 1:length(nonzeros(I_52L))
        E_52L = E_52L(E_52L>I_52L(i));
        B_52L = B_52L(B_52L>E_52L(1)); 
        PRP_52L(i) = (B_52L(1)-I_52L(i));
        end
    end
end

%%% 53
if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
    if any(I_53R(3:end)) == 0 
        PRP_53R = PRP_53R;
    elseif any(I_53R(4:end)) == 0 
        PRP_53R(1) = (B_53R(3)-I_53R(2));
    elseif length(nonzeros(I_53R)) > 2 
        for i = 1:length(nonzeros(I_53R))
        E_53R = E_53R(E_53R>I_53R(i)); 
        B_53R = B_53R(B_53R>E_53R(1));
        PRP_53R(i) = (B_53R(1)-I_53R(i));
        end
    end
    if any(I_53L(3:end)) == 0 
        PRP_53L = PRP_53L;
    elseif any(I_53L(4:end)) == 0 
        PRP_53L(1) = (B_53L(3)-I_53L(2));
    elseif length(nonzeros(I_53L)) > 2 
        for i = 1:length(nonzeros(I_53L))
        E_53L = E_53L(E_53L>I_53L(i));
        B_53L = B_53L(B_53L>E_53L(1)); 
        PRP_53L(i) = (B_53L(1)-I_53L(i));
        end
    end
end

%%% 54
if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
    if any(I_54R(3:end)) == 0 
        PRP_54R = PRP_54R;
    elseif any(I_54R(4:end)) == 0 
        PRP_54R(1) = (B_54R(3)-I_54R(2));
    elseif length(nonzeros(I_54R)) > 2 
        for i = 1:length(nonzeros(I_54R))
        E_54R = E_54R(E_54R>I_54R(i)); 
        B_54R = B_54R(B_54R>E_54R(1));
        PRP_54R(i) = (B_54R(1)-I_54R(i));
        end
    end
    if any(I_54L(3:end)) == 0 
        PRP_54L = PRP_54L;
    elseif any(I_54L(4:end)) == 0 
        PRP_54L(1) = (B_54L(3)-I_54L(2));
    elseif length(nonzeros(I_54L)) > 2 
        for i = 1:length(nonzeros(I_54L))
        E_54L = E_54L(E_54L>I_54L(i));
        B_54L = B_54L(B_54L>E_54L(1)); 
        PRP_54L(i) = (B_54L(1)-I_54L(i));
        end
    end
end

%%% 55
if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    if any(I_55R(3:end)) == 0 
        PRP_55R = PRP_55R;
    elseif any(I_55R(4:end)) == 0 
        PRP_55R(1) = (B_55R(3)-I_55R(2));
    elseif length(nonzeros(I_55R)) > 2 
        for i = 1:length(nonzeros(I_55R))
        E_55R = E_55R(E_55R>I_55R(i)); 
        B_55R = B_55R(B_55R>E_55R(1));
        PRP_55R(i) = (B_55R(1)-I_55R(i));
        end
    end
    if any(I_55L(3:end)) == 0 
        PRP_55L = PRP_55L;
    elseif any(I_55L(4:end)) == 0 
        PRP_55L(1) = (B_55L(3)-I_55L(2));
    elseif length(nonzeros(I_55L)) > 2 
        for i = 1:length(nonzeros(I_55L))
        E_55L = E_55L(E_55L>I_55L(i));
        B_55L = B_55L(B_55L>E_55L(1)); 
        PRP_55L(i) = (B_55L(1)-I_55L(i));
        end
    end
end

%%% 55
if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    if any(I_55R(3:end)) == 0 
        PRP_55R = PRP_55R;
    elseif any(I_55R(4:end)) == 0 
        PRP_55R(1) = (B_55R(3)-I_55R(2));
    elseif length(nonzeros(I_55R)) > 2 
        for i = 1:length(nonzeros(I_55R))
        E_55R = E_55R(E_55R>I_55R(i)); 
        B_55R = B_55R(B_55R>E_55R(1));
        PRP_55R(i) = (B_55R(1)-I_55R(i));
        end
    end
    if any(I_55L(3:end)) == 0 
        PRP_55L = PRP_55L;
    elseif any(I_55L(4:end)) == 0 
        PRP_55L(1) = (B_55L(3)-I_55L(2));
    elseif length(nonzeros(I_55L)) > 2 
        for i = 1:length(nonzeros(I_55L))
        E_55L = E_55L(E_55L>I_55L(i));
        B_55L = B_55L(B_55L>E_55L(1)); 
        PRP_55L(i) = (B_55L(1)-I_55L(i));
        end
    end
end

%%% 56
if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
    if any(I_56R(3:end)) == 0 
        PRP_56R = PRP_56R;
    elseif any(I_56R(4:end)) == 0 
        PRP_56R(1) = (B_56R(3)-I_56R(2));
    elseif length(nonzeros(I_56R)) > 2 
        for i = 1:length(nonzeros(I_56R))
        E_56R = E_56R(E_56R>I_56R(i)); 
        B_56R = B_56R(B_56R>E_56R(1));
        PRP_56R(i) = (B_56R(1)-I_56R(i));
        end
    end
    if any(I_56L(3:end)) == 0 
        PRP_56L = PRP_56L;
    elseif any(I_56L(4:end)) == 0 
        PRP_56L(1) = (B_56L(3)-I_56L(2));
    elseif length(nonzeros(I_56L)) > 2 
        for i = 1:length(nonzeros(I_56L))
        E_56L = E_56L(E_56L>I_56L(i));
        B_56L = B_56L(B_56L>E_56L(1)); 
        PRP_56L(i) = (B_56L(1)-I_56L(i));
        end
    end
end

%%% 57
if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
    if any(I_57R(3:end)) == 0 
        PRP_57R = PRP_57R;
    elseif any(I_57R(4:end)) == 0 
        PRP_57R(1) = (B_57R(3)-I_57R(2));
    elseif length(nonzeros(I_57R)) > 2 
        for i = 1:length(nonzeros(I_57R))
        E_57R = E_57R(E_57R>I_57R(i)); 
        B_57R = B_57R(B_57R>E_57R(1));
        PRP_57R(i) = (B_57R(1)-I_57R(i));
        end
    end
    if any(I_57L(3:end)) == 0 
        PRP_57L = PRP_57L;
    elseif any(I_57L(4:end)) == 0 
        PRP_57L(1) = (B_57L(3)-I_57L(2));
    elseif length(nonzeros(I_57L)) > 2 
        for i = 1:length(nonzeros(I_57L))
        E_57L = E_57L(E_57L>I_57L(i));
        B_57L = B_57L(B_57L>E_57L(1)); 
        PRP_57L(i) = (B_57L(1)-I_57L(i));
        end
    end
end

%%% 58
if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
    if any(I_58R(3:end)) == 0 
        PRP_58R = PRP_58R;
    elseif any(I_58R(4:end)) == 0 
        PRP_58R(1) = (B_58R(3)-I_58R(2));
    elseif length(nonzeros(I_58R)) > 2 
        for i = 1:length(nonzeros(I_58R))
        E_58R = E_58R(E_58R>I_58R(i)); 
        B_58R = B_58R(B_58R>E_58R(1));
        PRP_58R(i) = (B_58R(1)-I_58R(i));
        end
    end
    if any(I_58L(3:end)) == 0 
        PRP_58L = PRP_58L;
    elseif any(I_58L(4:end)) == 0 
        PRP_58L(1) = (B_58L(3)-I_58L(2));
    elseif length(nonzeros(I_58L)) > 2 
        for i = 1:length(nonzeros(I_58L))
        E_58L = E_58L(E_58L>I_58L(i));
        B_58L = B_58L(B_58L>E_58L(1)); 
        PRP_58L(i) = (B_58L(1)-I_58L(i));
        end
    end
end

%%% 59
if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
    if any(I_59R(3:end)) == 0 
        PRP_59R = PRP_59R;
    elseif any(I_59R(4:end)) == 0 
        PRP_59R(1) = (B_59R(3)-I_59R(2));
    elseif length(nonzeros(I_59R)) > 2 
        for i = 1:length(nonzeros(I_59R))
        E_59R = E_59R(E_59R>I_59R(i)); 
        B_59R = B_59R(B_59R>E_59R(1));
        PRP_59R(i) = (B_59R(1)-I_59R(i));
        end
    end
    if any(I_59L(3:end)) == 0 
        PRP_59L = PRP_59L;
    elseif any(I_59L(4:end)) == 0 
        PRP_59L(1) = (B_59L(3)-I_59L(2));
    elseif length(nonzeros(I_59L)) > 2 
        for i = 1:length(nonzeros(I_59L))
        E_59L = E_59L(E_59L>I_59L(i));
        B_59L = B_59L(B_59L>E_59L(1)); 
        PRP_59L(i) = (B_59L(1)-I_59L(i));
        end
    end
end

%%% 60
if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
    if any(I_60R(3:end)) == 0 
        PRP_60R = PRP_60R;
    elseif any(I_59R(4:end)) == 0 
        PRP_60R(1) = (B_60R(3)-I_60R(2));
    elseif length(nonzeros(I_60R)) > 2 
        for i = 1:length(nonzeros(I_60R))
        E_60R = E_60R(E_60R>I_60R(i)); 
        B_60R = B_60R(B_60R>E_60R(1));
        PRP_60R(i) = (B_60R(1)-I_60R(i));
        end
    end
    if any(I_60L(3:end)) == 0 
        PRP_60L = PRP_60L;
    elseif any(I_60L(4:end)) == 0 
        PRP_60L(1) = (B_60L(3)-I_60L(2));
    elseif length(nonzeros(I_60L)) > 2 
        for i = 1:length(nonzeros(I_60L))
        E_60L = E_60L(E_60L>I_60L(i));
        B_60L = B_60L(B_60L>E_60L(1)); 
        PRP_60L(i) = (B_60L(1)-I_60L(i));
        end
    end
end

%%% 61

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0 
    if any(I_61R(3:end)) == 0 
        PRP_61R = PRP_61R;
    elseif any(I_61R(4:end)) == 0 
        PRP_61R(1) = (B_61R(3)-I_61R(2));
    elseif length(nonzeros(I_61R)) > 2 
        for i = 1:length(nonzeros(I_61R))
        E_61R = E_61R(E_61R>I_61R(i));
        B_61R = B_61R(B_61R>E_61R(1));
        PRP_61R(i) = (B_61R(1)-I_61R(i));
        end
    end
    if any(I_61L(3:end)) == 0 
        PRP_61L = PRP_61L;
    elseif any(I_61L(4:end)) == 0
        PRP_61L(1) = (B_61L(3)-I_61L(2));
    elseif length(nonzeros(I_61L)) > 2 
        for i = 1:length(nonzeros(I_61L))
        E_61L = E_61L(E_61L>I_61L(i));
        B_61L = B_61L(B_61L>E_61L(1)); 
        PRP_61L(i) = (B_61L(1)-I_61L(i));
        end
    end
end

%%% 62

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0 
    if any(I_62R(3:end)) == 0 
        PRP_62R = PRP_62R;
    elseif any(I_62R(4:end)) == 0 
        PRP_62R(1) = (B_62R(3)-I_62R(2));
    elseif length(nonzeros(I_62R)) > 2 
        for i = 1:length(nonzeros(I_62R))
        E_62R = E_62R(E_62R>I_62R(i));
        B_62R = B_62R(B_62R>E_62R(1));
        PRP_62R(i) = (B_62R(1)-I_62R(i));
        end
    end
    if any(I_62L(3:end)) == 0 
        PRP_62L = PRP_62L;
    elseif any(I_62L(4:end)) == 0
        PRP_62L(1) = (B_62L(3)-I_62L(2));
    elseif length(nonzeros(I_62L)) > 2 
        for i = 1:length(nonzeros(I_62L))
        E_62L = E_62L(E_62L>I_62L(i));
        B_62L = B_62L(B_62L>E_62L(1)); 
        PRP_62L(i) = (B_62L(1)-I_62L(i));
        end
    end
end

%%% 63

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0 
    if any(I_63R(3:end)) == 0 
        PRP_63R = PRP_63R;
    elseif any(I_63R(4:end)) == 0 
        PRP_63R(1) = (B_63R(3)-I_63R(2));
    elseif length(nonzeros(I_63R)) > 2 
        for i = 1:length(nonzeros(I_63R))
        E_63R = E_63R(E_63R>I_63R(i));
        B_63R = B_63R(B_63R>E_63R(1));
        PRP_63R(i) = (B_63R(1)-I_63R(i));
        end
    end
    if any(I_63L(3:end)) == 0 
        PRP_63L = PRP_63L;
    elseif any(I_63L(4:end)) == 0
        PRP_63L(1) = (B_63L(3)-I_63L(2));
    elseif length(nonzeros(I_63L)) > 2 
        for i = 1:length(nonzeros(I_63L))
        E_63L = E_63L(E_63L>I_63L(i));
        B_63L = B_63L(B_63L>E_63L(1)); 
        PRP_63L(i) = (B_63L(1)-I_63L(i));
        end
    end
end

%%% 64

 if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0 
    if any(I_64R(3:end)) == 0 
        PRP_64R = PRP_64R;
    elseif any(I_64R(4:end)) == 0 
        PRP_64R(1) = (B_64R(3)-I_64R(2));
    elseif length(nonzeros(I_64R)) > 2 
        for i = 1:length(nonzeros(I_64R))
        E_64R = E_64R(E_64R>I_64R(i));
        B_64R = B_64R(B_64R>E_64R(1));
        PRP_64R(i) = (B_64R(1)-I_64R(i));
        end
    end
    if any(I_64L(3:end)) == 0 
        PRP_64L = PRP_64L;
    elseif any(I_64L(4:end)) == 0
        PRP_64L(1) = (B_64L(3)-I_64L(2));
    elseif length(nonzeros(I_64L)) > 2 
        for i = 1:length(nonzeros(I_64L))
        E_64L = E_64L(E_64L>I_64L(i));
        B_64L = B_64L(B_64L>E_64L(1)); 
        PRP_64L(i) = (B_64L(1)-I_64L(i));
        end
    end
end

%%% 65

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0 
    if any(I_65R(3:end)) == 0 
        PRP_65R = PRP_65R;
    elseif any(I_65R(4:end)) == 0 
        PRP_65R(1) = (B_65R(3)-I_65R(2));
    elseif length(nonzeros(I_65R)) > 2 
        for i = 1:length(nonzeros(I_65R))
        E_65R = E_65R(E_65R>I_65R(i));
        B_65R = B_65R(B_65R>E_65R(1));
        PRP_65R(i) = (B_65R(1)-I_65R(i));
        end
    end
    if any(I_65L(3:end)) == 0 
        PRP_65L = PRP_65L;
    elseif any(I_65L(4:end)) == 0
        PRP_65L(1) = (B_65L(3)-I_65L(2));
    elseif length(nonzeros(I_65L)) > 2 
        for i = 1:length(nonzeros(I_65L))
        E_65L = E_65L(E_65L>I_65L(i));
        B_65L = B_65L(B_65L>E_65L(1)); 
        PRP_65L(i) = (B_65L(1)-I_65L(i));
        end
    end
end

%%% 66

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0 
    if any(I_66R(3:end)) == 0 
        PRP_66R = PRP_66R;
    elseif any(I_66R(4:end)) == 0 
        PRP_66R(1) = (B_66R(3)-I_66R(2));
    elseif length(nonzeros(I_66R)) > 2 
        for i = 1:length(nonzeros(I_66R))
        E_66R = E_66R(E_66R>I_66R(i));
        B_66R = B_66R(B_66R>E_66R(1));
        PRP_66R(i) = (B_66R(1)-I_66R(i));
        end
    end
    if any(I_66L(3:end)) == 0 
        PRP_66L = PRP_66L;
    elseif any(I_66L(4:end)) == 0
        PRP_66L(1) = (B_66L(3)-I_66L(2));
    elseif length(nonzeros(I_66L)) > 2 
        for i = 1:length(nonzeros(I_66L))
        E_66L = E_66L(E_66L>I_66L(i));
        B_66L = B_66L(B_66L>E_66L(1)); 
        PRP_66L(i) = (B_66L(1)-I_66L(i));
        end
    end
end

%%% 67

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0 
    if any(I_67R(3:end)) == 0 
        PRP_67R = PRP_67R;
    elseif any(I_67R(4:end)) == 0 
        PRP_67R(1) = (B_67R(3)-I_67R(2));
    elseif length(nonzeros(I_67R)) > 2 
        for i = 1:length(nonzeros(I_67R))
        E_67R = E_67R(E_67R>I_67R(i));
        B_67R = B_67R(B_67R>E_67R(1));
        PRP_67R(i) = (B_67R(1)-I_67R(i));
        end
    end
    if any(I_67L(3:end)) == 0 
        PRP_67L = PRP_67L;
    elseif any(I_67L(4:end)) == 0
        PRP_67L(1) = (B_67L(3)-I_67L(2));
    elseif length(nonzeros(I_67L)) > 2 
        for i = 1:length(nonzeros(I_67L))
        E_67L = E_67L(E_67L>I_67L(i));
        B_67L = B_67L(B_67L>E_67L(1)); 
        PRP_67L(i) = (B_67L(1)-I_67L(i));
        end
    end
end

%%% 68

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0 
    if any(I_68R(3:end)) == 0 
        PRP_68R = PRP_68R;
    elseif any(I_68R(4:end)) == 0 
        PRP_68R(1) = (B_68R(3)-I_68R(2));
    elseif length(nonzeros(I_68R)) > 2 
        for i = 1:length(nonzeros(I_68R))
        E_68R = E_68R(E_68R>I_68R(i));
        B_68R = B_68R(B_68R>E_68R(1));
        PRP_68R(i) = (B_68R(1)-I_68R(i));
        end
    end
    if any(I_68L(3:end)) == 0 
        PRP_68L = PRP_68L;
    elseif any(I_68L(4:end)) == 0
        PRP_68L(1) = (B_68L(3)-I_68L(2));
    elseif length(nonzeros(I_68L)) > 2 
        for i = 1:length(nonzeros(I_68L))
        E_68L = E_68L(E_68L>I_68L(i));
        B_68L = B_68L(B_68L>E_68L(1)); 
        PRP_68L(i) = (B_68L(1)-I_68L(i));
        end
    end
end

%%% 69

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0 
    if any(I_69R(3:end)) == 0 
        PRP_69R = PRP_69R;
    elseif any(I_69R(4:end)) == 0 
        PRP_69R(1) = (B_69R(3)-I_69R(2));
    elseif length(nonzeros(I_69R)) > 2 
        for i = 1:length(nonzeros(I_69R))
        E_69R = E_69R(E_69R>I_69R(i));
        B_69R = B_69R(B_69R>E_69R(1));
        PRP_69R(i) = (B_69R(1)-I_69R(i));
        end
    end
    if any(I_69L(3:end)) == 0 
        PRP_69L = PRP_69L;
    elseif any(I_69L(4:end)) == 0
        PRP_69L(1) = (B_69L(3)-I_69L(2));
    elseif length(nonzeros(I_69L)) > 2 
        for i = 1:length(nonzeros(I_69L))
        E_69L = E_69L(E_69L>I_69L(i));
        B_69L = B_69L(B_69L>E_69L(1)); 
        PRP_69L(i) = (B_69L(1)-I_69L(i));
        end
    end
end

%%% 70

 if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0 
    if any(I_70R(3:end)) == 0 
        PRP_70R = PRP_70R;
    elseif any(I_70R(4:end)) == 0 
        PRP_70R(1) = (B_70R(3)-I_70R(2));
    elseif length(nonzeros(I_70R)) > 2 
        for i = 1:length(nonzeros(I_70R))
        E_70R = E_70R(E_70R>I_70R(i));
        B_70R = B_70R(B_70R>E_70R(1));
        PRP_70R(i) = (B_70R(1)-I_70R(i));
        end
    end
    if any(I_70L(3:end)) == 0 
        PRP_70L = PRP_70L;
    elseif any(I_70L(4:end)) == 0
        PRP_70L(1) = (B_70L(3)-I_70L(2));
    elseif length(nonzeros(I_70L)) > 2 
        for i = 1:length(nonzeros(I_70L))
        E_70L = E_70L(E_70L>I_70L(i));
        B_70L = B_70L(B_70L>E_70L(1)); 
        PRP_70L(i) = (B_70L(1)-I_70L(i));
        end
    end
end

%%% 71

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0 
    if any(I_71R(3:end)) == 0 
        PRP_71R = PRP_71R;
    elseif any(I_71R(4:end)) == 0 
        PRP_71R(1) = (B_71R(3)-I_71R(2));
    elseif length(nonzeros(I_71R)) > 2 
        for i = 1:length(nonzeros(I_71R))
        E_71R = E_71R(E_71R>I_71R(i));
        B_71R = B_71R(B_71R>E_71R(1));
        PRP_71R(i) = (B_71R(1)-I_71R(i));
        end
    end
    if any(I_71L(3:end)) == 0 
        PRP_71L = PRP_71L;
    elseif any(I_71L(4:end)) == 0
        PRP_71L(1) = (B_71L(3)-I_71L(2));
    elseif length(nonzeros(I_71L)) > 2 
        for i = 1:length(nonzeros(I_71L))
        E_71L = E_71L(E_71L>I_71L(i));
        B_71L = B_71L(B_71L>E_71L(1)); 
        PRP_71L(i) = (B_71L(1)-I_71L(i));
        end
    end
end

%%% 72

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0 
    if any(I_72R(3:end)) == 0 
        PRP_72R = PRP_72R;
    elseif any(I_72R(4:end)) == 0 
        PRP_72R(1) = (B_72R(3)-I_72R(2));
    elseif length(nonzeros(I_72R)) > 2 
        for i = 1:length(nonzeros(I_72R))
        E_72R = E_72R(E_72R>I_72R(i));
        B_72R = B_72R(B_72R>E_72R(1));
        PRP_72R(i) = (B_72R(1)-I_72R(i));
        end
    end
    if any(I_72L(3:end)) == 0 
        PRP_72L = PRP_72L;
    elseif any(I_72L(4:end)) == 0
        PRP_72L(1) = (B_72L(3)-I_72L(2));
    elseif length(nonzeros(I_72L)) > 2 
        for i = 1:length(nonzeros(I_72L))
        E_72L = E_72L(E_72L>I_72L(i));
        B_72L = B_72L(B_72L>E_72L(1)); 
        PRP_72L(i) = (B_72L(1)-I_72L(i));
        end
    end
end


%below creates empty array(1X50)of zeros to be filled with actual
%ratio-based response rate data later for every existing subject (if subject
%does not exist then no data will actually be filled in)

RBRR_1R = zeros(1,50);
RBRR_1L = zeros(1,50);
RBRR_2R = zeros(1,50);
RBRR_2L = zeros(1,50);
RBRR_3R = zeros(1,50);
RBRR_3L = zeros(1,50);
RBRR_4R = zeros(1,50);
RBRR_4L = zeros(1,50);
RBRR_5R = zeros(1,50);
RBRR_5L = zeros(1,50);
RBRR_6R = zeros(1,50);
RBRR_6L = zeros(1,50);
RBRR_7R = zeros(1,50);
RBRR_7L = zeros(1,50);
RBRR_8R = zeros(1,50);
RBRR_8L = zeros(1,50);
RBRR_9R = zeros(1,50);
RBRR_9L = zeros(1,50);
RBRR_10R = zeros(1,50);
RBRR_10L = zeros(1,50);
RBRR_11R = zeros(1,50);
RBRR_11L = zeros(1,50);
RBRR_12R = zeros(1,50);
RBRR_12L = zeros(1,50);
RBRR_13R = zeros(1,50);
RBRR_13L = zeros(1,50);
RBRR_14R = zeros(1,50);
RBRR_14L = zeros(1,50);
RBRR_15R = zeros(1,50);
RBRR_15L = zeros(1,50);
RBRR_16R = zeros(1,50);
RBRR_16L = zeros(1,50);
RBRR_17R = zeros(1,50);
RBRR_17L = zeros(1,50);
RBRR_18R = zeros(1,50);
RBRR_18L = zeros(1,50);
RBRR_19R = zeros(1,50);
RBRR_19L = zeros(1,50);
RBRR_20R = zeros(1,50);
RBRR_20L = zeros(1,50);
RBRR_21R = zeros(1,50);
RBRR_21L = zeros(1,50);
RBRR_22R = zeros(1,50);
RBRR_22L = zeros(1,50);
RBRR_23R = zeros(1,50);
RBRR_23L = zeros(1,50);
RBRR_24R = zeros(1,50);
RBRR_24L = zeros(1,50);
RBRR_25R = zeros(1,50);
RBRR_25L = zeros(1,50);
RBRR_26R = zeros(1,50);
RBRR_26L = zeros(1,50);
RBRR_27R = zeros(1,50);
RBRR_27L = zeros(1,50);
RBRR_28R = zeros(1,50);
RBRR_28L = zeros(1,50);
RBRR_29R = zeros(1,50);
RBRR_29L = zeros(1,50);
RBRR_30R = zeros(1,50);
RBRR_30L = zeros(1,50);
RBRR_31R = zeros(1,50);
RBRR_31L = zeros(1,50);
RBRR_32R = zeros(1,50);
RBRR_32L = zeros(1,50);
RBRR_33R = zeros(1,50);
RBRR_33L = zeros(1,50);
RBRR_34R = zeros(1,50);
RBRR_34L = zeros(1,50);
RBRR_35R = zeros(1,50);
RBRR_35L = zeros(1,50);
RBRR_36R = zeros(1,50);
RBRR_36L = zeros(1,50);
RBRR_37R = zeros(1,50);
RBRR_37L = zeros(1,50);
RBRR_38R = zeros(1,50);
RBRR_38L = zeros(1,50);
RBRR_39R = zeros(1,50);
RBRR_39L = zeros(1,50);
RBRR_40R = zeros(1,50);
RBRR_40L = zeros(1,50);
RBRR_41R = zeros(1,50);
RBRR_41L = zeros(1,50);
RBRR_42R = zeros(1,50);
RBRR_42L = zeros(1,50);
RBRR_43R = zeros(1,50);
RBRR_43L = zeros(1,50);
RBRR_44R = zeros(1,50);
RBRR_44L = zeros(1,50);
RBRR_45R = zeros(1,50);
RBRR_45L = zeros(1,50);
RBRR_46R = zeros(1,50);
RBRR_46L = zeros(1,50);
RBRR_47R = zeros(1,50);
RBRR_47L = zeros(1,50);
RBRR_48R = zeros(1,50);
RBRR_48L = zeros(1,50);
RBRR_49R = zeros(1,50);
RBRR_49L = zeros(1,50);
RBRR_50R = zeros(1,50);
RBRR_50L = zeros(1,50);
RBRR_51R = zeros(1,50);
RBRR_51L = zeros(1,50);
RBRR_52R = zeros(1,50);
RBRR_52L = zeros(1,50);
RBRR_53R = zeros(1,50);
RBRR_53L = zeros(1,50);
RBRR_54R = zeros(1,50);
RBRR_54L = zeros(1,50);
RBRR_55R = zeros(1,50);
RBRR_55L = zeros(1,50);
RBRR_56R = zeros(1,50);
RBRR_56L = zeros(1,50);
RBRR_57R = zeros(1,50);
RBRR_57L = zeros(1,50);
RBRR_58R = zeros(1,50);
RBRR_58L = zeros(1,50);
RBRR_59R = zeros(1,50);
RBRR_59L = zeros(1,50);
RBRR_60R = zeros(1,50);
RBRR_60L = zeros(1,50);
RBRR_61R = zeros(1,50);
RBRR_61L = zeros(1,50);
RBRR_62R = zeros(1,50);
RBRR_62L = zeros(1,50);
RBRR_63R = zeros(1,50);
RBRR_63L = zeros(1,50);
RBRR_64R = zeros(1,50);
RBRR_64L = zeros(1,50);
RBRR_65R = zeros(1,50);
RBRR_65L = zeros(1,50);
RBRR_66R = zeros(1,50);
RBRR_66L = zeros(1,50);
RBRR_67R = zeros(1,50);
RBRR_67L = zeros(1,50);
RBRR_68R = zeros(1,50);
RBRR_68L = zeros(1,50);
RBRR_69R = zeros(1,50);
RBRR_69L = zeros(1,50);
RBRR_70R = zeros(1,50);
RBRR_70L = zeros(1,50);
RBRR_71R = zeros(1,50);
RBRR_71L = zeros(1,50);
RBRR_72R = zeros(1,50);
RBRR_72L = zeros(1,50);


%Re-extracts all time stmaps from existing subject variabales (B,E,I from MEDPC)
%Original variables were chanaged during PRP calcualtions

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
    B_1R = Subject1_R.B;
    B_1L = Subject1_L.B;
    E_1R = Subject1_R.E;
    E_1L = Subject1_L.E;
    I_1R = Subject1_R.I;
    I_1L = Subject1_L.I;
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
    B_2R = Subject2_R.B;
    B_2L = Subject2_L.B;
    E_2R = Subject2_R.E;
    E_2L = Subject2_L.E;
    I_2R = Subject2_R.I;
    I_2L = Subject2_L.I;
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
    B_3R = Subject3_R.B;
    B_3L = Subject3_L.B;
    E_3R = Subject3_R.E;
    E_3L = Subject3_L.E;
    I_3R = Subject3_R.I;
    I_3L = Subject3_L.I;
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
    B_4R = Subject4_R.B;
    B_4L = Subject4_L.B;
    E_4R = Subject4_R.E;
    E_4L = Subject4_L.E;
    I_4R = Subject4_R.I;
    I_4L = Subject4_L.I;
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
    B_5R = Subject5_R.B;
    B_5L = Subject5_L.B;
    E_5R = Subject5_R.E;
    E_5L = Subject5_L.E;
    I_5R = Subject5_R.I;
    I_5L = Subject5_L.I;
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
    B_6R = Subject6_R.B;
    B_6L = Subject6_L.B;
    E_6R = Subject6_R.E;
    E_6L = Subject6_L.E;
    I_6R = Subject6_R.I;
    I_6L = Subject6_L.I;
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
    B_7R = Subject7_R.B;
    B_7L = Subject7_L.B;
    E_7R = Subject7_R.E;
    E_7L = Subject7_L.E;
    I_7R = Subject7_R.I;
    I_7L = Subject7_L.I;
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
    B_8R = Subject8_R.B;
    B_8L = Subject8_L.B;
    E_8R = Subject8_R.E;
    E_8L = Subject8_L.E;
    I_8R = Subject8_R.I;
    I_8L = Subject8_L.I;
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
    B_9R = Subject9_R.B;
    B_9L = Subject9_L.B;
    E_9R = Subject9_R.E;
    E_9L = Subject9_L.E;
    I_9R = Subject9_R.I;
    I_9L = Subject9_L.I;
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
    B_10R = Subject10_R.B;
    B_10L = Subject10_L.B;
    E_10R = Subject10_R.E;
    E_10L = Subject10_L.E;
    I_10R = Subject10_R.I;
    I_10L = Subject10_L.I;
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
    B_11R = Subject11_R.B;
    B_11L = Subject11_L.B;
    E_11R = Subject11_R.E;
    E_11L = Subject11_L.E;
    I_11R = Subject11_R.I;
    I_11L = Subject11_L.I;
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
    B_12R = Subject12_R.B;
    B_12L = Subject12_L.B;
    E_12R = Subject12_R.E;
    E_12L = Subject12_L.E;
    I_12R = Subject12_R.I;
    I_12L = Subject12_L.I;
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
    B_13R = Subject13_R.B;
    B_13L = Subject13_L.B;
    E_13R = Subject13_R.E;
    E_13L = Subject13_L.E;
    I_13R = Subject13_R.I;
    I_13L = Subject13_L.I;
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
    B_14R = Subject14_R.B;
    B_14L = Subject14_L.B;
    E_14R = Subject14_R.E;
    E_14L = Subject14_L.E;
    I_14R = Subject14_R.I;
    I_14L = Subject14_L.I;
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
    B_15R = Subject15_R.B;
    B_15L = Subject15_L.B;
    E_15R = Subject15_R.E;
    E_15L = Subject15_L.E;
    I_15R = Subject15_R.I;
    I_15L = Subject15_L.I;
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
    B_16R = Subject16_R.B;
    B_16L = Subject16_L.B;
    E_16R = Subject16_R.E;
    E_16L = Subject16_L.E;
    I_16R = Subject16_R.I;
    I_16L = Subject16_L.I;
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
    B_17R = Subject17_R.B;
    B_17L = Subject17_L.B;
    E_17R = Subject17_R.E;
    E_17L = Subject17_L.E;
    I_17R = Subject17_R.I;
    I_17L = Subject17_L.I;
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
    B_18R = Subject18_R.B;
    B_18L = Subject18_L.B;
    E_18R = Subject18_R.E;
    E_18L = Subject18_L.E;
    I_18R = Subject18_R.I;
    I_18L = Subject18_L.I;
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
    B_19R = Subject19_R.B;
    B_19L = Subject19_L.B;
    E_19R = Subject19_R.E;
    E_19L = Subject19_L.E;
    I_19R = Subject19_R.I;
    I_19L = Subject19_L.I;
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
    B_20R = Subject20_R.B;
    B_20L = Subject20_L.B;
    E_20R = Subject20_R.E;
    E_20L = Subject20_L.E;
    I_20R = Subject20_R.I;
    I_20L = Subject20_L.I;
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
    B_21R = Subject21_R.B;
    B_21L = Subject21_L.B;
    E_21R = Subject21_R.E;
    E_21L = Subject21_L.E;
    I_21R = Subject21_R.I;
    I_21L = Subject21_L.I;
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
    B_22R = Subject22_R.B;
    B_22L = Subject22_L.B;
    E_22R = Subject22_R.E;
    E_22L = Subject22_L.E;
    I_22R = Subject22_R.I;
    I_22L = Subject22_L.I;
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
    B_23R = Subject23_R.B;
    B_23L = Subject23_L.B;
    E_23R = Subject23_R.E;
    E_23L = Subject23_L.E;
    I_23R = Subject23_R.I;
    I_23L = Subject23_L.I;
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
    B_24R = Subject24_R.B;
    B_24L = Subject24_L.B;
    E_24R = Subject24_R.E;
    E_24L = Subject24_L.E;
    I_24R = Subject24_R.I;
    I_24L = Subject24_L.I;
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
    B_25R = Subject25_R.B;
    B_25L = Subject25_L.B;
    E_25R = Subject25_R.E;
    E_25L = Subject25_L.E;
    I_25R = Subject25_R.I;
    I_25L = Subject25_L.I;
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
    B_26R = Subject26_R.B;
    B_26L = Subject26_L.B;
    E_26R = Subject26_R.E;
    E_26L = Subject26_L.E;
    I_26R = Subject26_R.I;
    I_26L = Subject26_L.I;
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
    B_27R = Subject27_R.B;
    B_27L = Subject27_L.B;
    E_27R = Subject27_R.E;
    E_27L = Subject27_L.E;
    I_27R = Subject27_R.I;
    I_27L = Subject27_L.I;
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
    B_28R = Subject28_R.B;
    B_28L = Subject28_L.B;
    E_28R = Subject28_R.E;
    E_28L = Subject28_L.E;
    I_28R = Subject28_R.I;
    I_28L = Subject28_L.I;
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
    B_29R = Subject29_R.B;
    B_29L = Subject29_L.B;
    E_29R = Subject29_R.E;
    E_29L = Subject29_L.E;
    I_29R = Subject29_R.I;
    I_29L = Subject29_L.I;
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
    B_30R = Subject30_R.B;
    B_30L = Subject30_L.B;
    E_30R = Subject30_R.E;
    E_30L = Subject30_L.E;
    I_30R = Subject30_R.I;
    I_30L = Subject30_L.I;
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
    B_31R = Subject31_R.B;
    B_31L = Subject31_L.B;
    E_31R = Subject31_R.E;
    E_31L = Subject31_L.E;
    I_31R = Subject31_R.I;
    I_31L = Subject31_L.I;
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
    B_32R = Subject32_R.B;
    B_32L = Subject32_L.B;
    E_32R = Subject32_R.E;
    E_32L = Subject32_L.E;
    I_32R = Subject32_R.I;
    I_32L = Subject32_L.I;
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
    B_33R = Subject33_R.B;
    B_33L = Subject33_L.B;
    E_33R = Subject33_R.E;
    E_33L = Subject33_L.E;
    I_33R = Subject33_R.I;
    I_33L = Subject33_L.I;
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
    B_34R = Subject34_R.B;
    B_34L = Subject34_L.B;
    E_34R = Subject34_R.E;
    E_34L = Subject34_L.E;
    I_34R = Subject34_R.I;
    I_34L = Subject34_L.I;
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
    B_35R = Subject35_R.B;
    B_35L = Subject35_L.B;
    E_35R = Subject35_R.E;
    E_35L = Subject35_L.E;
    I_35R = Subject35_R.I;
    I_35L = Subject35_L.I;
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
    B_36R = Subject36_R.B;
    B_36L = Subject36_L.B;
    E_36R = Subject36_R.E;
    E_36L = Subject36_L.E;
    I_36R = Subject36_R.I;
    I_36L = Subject36_L.I;
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
    B_37R = Subject37_R.B;
    B_37L = Subject37_L.B;
    E_37R = Subject37_R.E;
    E_37L = Subject37_L.E;
    I_37R = Subject37_R.I;
    I_37L = Subject37_L.I;
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
    B_38R = Subject38_R.B;
    B_38L = Subject38_L.B;
    E_38R = Subject38_R.E;
    E_38L = Subject38_L.E;
    I_38R = Subject38_R.I;
    I_38L = Subject38_L.I;
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
    B_39R = Subject39_R.B;
    B_39L = Subject39_L.B;
    E_39R = Subject39_R.E;
    E_39L = Subject39_L.E;
    I_39R = Subject39_R.I;
    I_39L = Subject39_L.I;
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
    B_40R = Subject40_R.B;
    B_40L = Subject40_L.B;
    E_40R = Subject40_R.E;
    E_40L = Subject40_L.E;
    I_40R = Subject40_R.I;
    I_40L = Subject40_L.I;
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
    B_41R = Subject41_R.B;
    B_41L = Subject41_L.B;
    E_41R = Subject41_R.E;
    E_41L = Subject41_L.E;
    I_41R = Subject41_R.I;
    I_41L = Subject41_L.I;
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
    B_42R = Subject42_R.B;
    B_42L = Subject42_L.B;
    E_42R = Subject42_R.E;
    E_42L = Subject42_L.E;
    I_42R = Subject42_R.I;
    I_42L = Subject42_L.I;
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
    B_43R = Subject43_R.B;
    B_43L = Subject43_L.B;
    E_43R = Subject43_R.E;
    E_43L = Subject43_L.E;
    I_43R = Subject43_R.I;
    I_43L = Subject43_L.I;
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
    B_44R = Subject44_R.B;
    B_44L = Subject44_L.B;
    E_44R = Subject44_R.E;
    E_44L = Subject44_L.E;
    I_44R = Subject44_R.I;
    I_44L = Subject44_L.I;
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
    B_45R = Subject45_R.B;
    B_45L = Subject45_L.B;
    E_45R = Subject45_R.E;
    E_45L = Subject45_L.E;
    I_45R = Subject45_R.I;
    I_45L = Subject45_L.I;
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
    B_46R = Subject46_R.B;
    B_46L = Subject46_L.B;
    E_46R = Subject46_R.E;
    E_46L = Subject46_L.E;
    I_46R = Subject46_R.I;
    I_46L = Subject46_L.I;
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
    B_47R = Subject47_R.B;
    B_47L = Subject47_L.B;
    E_47R = Subject47_R.E;
    E_47L = Subject47_L.E;
    I_47R = Subject47_R.I;
    I_47L = Subject47_L.I;
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
    B_48R = Subject48_R.B;
    B_48L = Subject48_L.B;
    E_48R = Subject48_R.E;
    E_48L = Subject48_L.E;
    I_48R = Subject48_R.I;
    I_48L = Subject48_L.I;
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
    B_49R = Subject49_R.B;
    B_49L = Subject49_L.B;
    E_49R = Subject49_R.E;
    E_49L = Subject49_L.E;
    I_49R = Subject49_R.I;
    I_49L = Subject49_L.I;
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
    B_50R = Subject50_R.B;
    B_50L = Subject50_L.B;
    E_50R = Subject50_R.E;
    E_50L = Subject50_L.E;
    I_50R = Subject50_R.I;
    I_50L = Subject50_L.I;
end

if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
    B_51R = Subject51_R.B;
    B_51L = Subject51_L.B;
    E_51R = Subject51_R.E;
    E_51L = Subject51_L.E;
    I_51R = Subject51_R.I;
    I_51L = Subject51_L.I;
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
    B_52R = Subject52_R.B;
    B_52L = Subject52_L.B;
    E_52R = Subject52_R.E;
    E_52L = Subject52_L.E;
    I_52R = Subject52_R.I;
    I_52L = Subject52_L.I;
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
    B_53R = Subject53_R.B;
    B_53L = Subject53_L.B;
    E_53R = Subject53_R.E;
    E_53L = Subject53_L.E;
    I_53R = Subject53_R.I;
    I_53L = Subject53_L.I;
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
    B_54R = Subject54_R.B;
    B_54L = Subject54_L.B;
    E_54R = Subject54_R.E;
    E_54L = Subject54_L.E;
    I_54R = Subject54_R.I;
    I_54L = Subject54_L.I;
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    B_55R = Subject55_R.B;
    B_55L = Subject55_L.B;
    E_55R = Subject55_R.E;
    E_55L = Subject55_L.E;
    I_55R = Subject55_R.I;
    I_55L = Subject55_L.I;
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
    B_56R = Subject56_R.B;
    B_56L = Subject56_L.B;
    E_56R = Subject56_R.E;
    E_56L = Subject56_L.E;
    I_56R = Subject56_R.I;
    I_56L = Subject56_L.I;
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
    B_57R = Subject57_R.B;
    B_57L = Subject57_L.B;
    E_57R = Subject57_R.E;
    E_57L = Subject57_L.E;
    I_57R = Subject57_R.I;
    I_57L = Subject57_L.I;
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
    B_58R = Subject58_R.B;
    B_58L = Subject58_L.B;
    E_58R = Subject58_R.E;
    E_58L = Subject58_L.E;
    I_58R = Subject58_R.I;
    I_58L = Subject58_L.I;
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
    B_59R = Subject59_R.B;
    B_59L = Subject59_L.B;
    E_59R = Subject59_R.E;
    E_59L = Subject59_L.E;
    I_59R = Subject59_R.I;
    I_59L = Subject59_L.I;
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
    B_60R = Subject60_R.B;
    B_60L = Subject60_L.B;
    E_60R = Subject60_R.E;
    E_60L = Subject60_L.E;
    I_60R = Subject60_R.I;
    I_60L = Subject60_L.I;
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
    B_61R = Subject61_R.B;
    B_61L = Subject61_L.B;
    E_61R = Subject61_R.E;
    E_61L = Subject61_L.E;
    I_61R = Subject61_R.I;
    I_61L = Subject61_L.I;
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
    B_62R = Subject62_R.B;
    B_62L = Subject62_L.B;
    E_62R = Subject62_R.E;
    E_62L = Subject62_L.E;
    I_62R = Subject62_R.I;
    I_62L = Subject62_L.I;
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
    B_63R = Subject63_R.B;
    B_63L = Subject63_L.B;
    E_63R = Subject63_R.E;
    E_63L = Subject63_L.E;
    I_63R = Subject63_R.I;
    I_63L = Subject63_L.I;
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
    B_64R = Subject64_R.B;
    B_64L = Subject64_L.B;
    E_64R = Subject64_R.E;
    E_64L = Subject64_L.E;
    I_64R = Subject64_R.I;
    I_64L = Subject64_L.I;
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
    B_65R = Subject65_R.B;
    B_65L = Subject65_L.B;
    E_65R = Subject65_R.E;
    E_65L = Subject65_L.E;
    I_65R = Subject65_R.I;
    I_65L = Subject65_L.I;
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
    B_66R = Subject66_R.B;
    B_66L = Subject66_L.B;
    E_66R = Subject66_R.E;
    E_66L = Subject66_L.E;
    I_66R = Subject66_R.I;
    I_66L = Subject66_L.I;
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
    B_67R = Subject67_R.B;
    B_67L = Subject67_L.B;
    E_67R = Subject67_R.E;
    E_67L = Subject67_L.E;
    I_67R = Subject67_R.I;
    I_67L = Subject67_L.I;
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
    B_68R = Subject68_R.B;
    B_68L = Subject68_L.B;
    E_68R = Subject68_R.E;
    E_68L = Subject68_L.E;
    I_68R = Subject68_R.I;
    I_68L = Subject68_L.I;
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
    B_69R = Subject69_R.B;
    B_69L = Subject69_L.B;
    E_69R = Subject69_R.E;
    E_69L = Subject69_L.E;
    I_69R = Subject69_R.I;
    I_69L = Subject69_L.I;
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
    B_70R = Subject70_R.B;
    B_70L = Subject70_L.B;
    E_70R = Subject70_R.E;
    E_70L = Subject70_L.E;
    I_70R = Subject70_R.I;
    I_70L = Subject70_L.I;
end

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
    B_71R = Subject71_R.B;
    B_71L = Subject71_L.B;
    E_71R = Subject71_R.E;
    E_71L = Subject71_L.E;
    I_71R = Subject71_R.I;
    I_71L = Subject71_L.I;
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
    B_72R = Subject72_R.B;
    B_72L = Subject72_L.B;
    E_72R = Subject72_R.E;
    E_72L = Subject72_L.E;
    I_72R = Subject72_R.I;
    I_72L = Subject72_L.I;
end

%Time to complete a ratio (denominator for calculating RBRR) is calculated 
%from the differnce of the time stamps for reinforcer delivery (I).
%total time to complete ratio (ratio time ---> rtime)

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
rtime_1R = diff(I_1R);
rtime_1L = diff(I_1L);
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
rtime_2R = diff(I_2R);
rtime_2L = diff(I_2L);
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
rtime_3R = diff(I_3R);
rtime_3L = diff(I_3L);
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
rtime_4R = diff(I_4R);
rtime_4L = diff(I_4L);
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
rtime_5R = diff(I_5R);
rtime_5L = diff(I_5L);
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
rtime_6R = diff(I_6R);
rtime_6L = diff(I_6L);
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
rtime_7R = diff(I_7R);
rtime_7L = diff(I_7L);
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
rtime_8R = diff(I_8R);
rtime_8L = diff(I_8L);
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
rtime_9R = diff(I_9R);
rtime_9L = diff(I_9L);
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
rtime_10R = diff(I_10R);
rtime_10L = diff(I_10L);
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
rtime_11R = diff(I_11R);
rtime_11L = diff(I_11L);
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
rtime_12R = diff(I_12R);
rtime_12L = diff(I_12L);
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
rtime_13R = diff(I_13R);
rtime_13L = diff(I_13L);
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
rtime_14R = diff(I_14R);
rtime_14L = diff(I_14L);
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
rtime_15R = diff(I_15R);
rtime_15L = diff(I_15L);
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
rtime_16R = diff(I_16R);
rtime_16L = diff(I_16L);
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
rtime_17R = diff(I_17R);
rtime_17L = diff(I_17L);
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
rtime_18R = diff(I_18R);
rtime_18L = diff(I_18L);
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
rtime_19R = diff(I_19R);
rtime_19L = diff(I_19L);
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
rtime_20R = diff(I_20R);
rtime_20L = diff(I_20L);
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
rtime_21R = diff(I_21R);
rtime_21L = diff(I_21L);
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
rtime_22R = diff(I_22R);
rtime_22L = diff(I_22L);
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
rtime_23R = diff(I_23R);
rtime_23L = diff(I_23L);
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
rtime_24R = diff(I_24R);
rtime_24L = diff(I_24L);
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
rtime_25R = diff(I_25R);
rtime_25L = diff(I_25L);
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
rtime_26R = diff(I_26R);
rtime_26L = diff(I_26L);
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
rtime_27R = diff(I_27R);
rtime_27L = diff(I_27L);
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
rtime_28R = diff(I_28R);
rtime_28L = diff(I_28L);
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
rtime_29R = diff(I_29R);
rtime_29L = diff(I_29L);
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
rtime_30R = diff(I_30R);
rtime_30L = diff(I_30L);
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
rtime_31R = diff(I_31R);
rtime_31L = diff(I_31L);
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
rtime_32R = diff(I_32R);
rtime_32L = diff(I_32L);
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
rtime_33R = diff(I_33R);
rtime_33L = diff(I_33L);
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
rtime_34R = diff(I_34R);
rtime_34L = diff(I_34L);
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
rtime_35R = diff(I_35R);
rtime_35L = diff(I_35L);
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
rtime_36R = diff(I_36R);
rtime_36L = diff(I_36L);
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
rtime_37R = diff(I_37R);
rtime_37L = diff(I_37L);
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
rtime_38R = diff(I_38R);
rtime_38L = diff(I_38L);
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
rtime_39R = diff(I_39R);
rtime_39L = diff(I_39L);
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
rtime_40R = diff(I_40R);
rtime_40L = diff(I_40L);
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
rtime_41R = diff(I_41R);
rtime_41L = diff(I_41L);
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
rtime_42R = diff(I_42R);
rtime_42L = diff(I_42L);
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
rtime_43R = diff(I_43R);
rtime_43L = diff(I_43L);
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
rtime_44R = diff(I_44R);
rtime_44L = diff(I_44L);
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
rtime_45R = diff(I_45R);
rtime_45L = diff(I_45L);
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
rtime_46R = diff(I_46R);
rtime_46L = diff(I_46L);
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
rtime_47R = diff(I_47R);
rtime_47L = diff(I_47L);
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
rtime_48R = diff(I_48R);
rtime_48L = diff(I_48L);
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
rtime_49R = diff(I_49R);
rtime_49L = diff(I_49L);
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
rtime_50R = diff(I_50R);
rtime_50L = diff(I_50L);
end

if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
rtime_51R = diff(I_51R);
rtime_51L = diff(I_51L);
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
rtime_52R = diff(I_52R);
rtime_52L = diff(I_52L);
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
rtime_53R = diff(I_53R);
rtime_53L = diff(I_53L);
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
rtime_54R = diff(I_54R);
rtime_54L = diff(I_54L);
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
rtime_55R = diff(I_55R);
rtime_55L = diff(I_55L);
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
rtime_56R = diff(I_56R);
rtime_56L = diff(I_56L);
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
rtime_57R = diff(I_57R);
rtime_57L = diff(I_57L);
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
rtime_58R = diff(I_58R);
rtime_58L = diff(I_58L);
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
rtime_59R = diff(I_59R);
rtime_59L = diff(I_59L);
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
rtime_60R = diff(I_60R);
rtime_60L = diff(I_60L);
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
rtime_61R = diff(I_61R);
rtime_61L = diff(I_61L);
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
rtime_62R = diff(I_62R);
rtime_62L = diff(I_62L);
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
rtime_63R = diff(I_63R);
rtime_63L = diff(I_63L);
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
rtime_64R = diff(I_64R);
rtime_64L = diff(I_64L);
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
rtime_65R = diff(I_65R);
rtime_65L = diff(I_65L);
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
rtime_66R = diff(I_66R);
rtime_66L = diff(I_66L);
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
rtime_67R = diff(I_67R);
rtime_67L = diff(I_67L);
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
rtime_68R = diff(I_68R);
rtime_68L = diff(I_68L);
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
rtime_69R = diff(I_69R);
rtime_69L = diff(I_69L);
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
rtime_70R = diff(I_70R);
rtime_70L = diff(I_70L);
end

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
rtime_71R = diff(I_71R);
rtime_71L = diff(I_71L);
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
rtime_72R = diff(I_72R);
rtime_72L = diff(I_72L);
end 

%Ratio-Based Response Rate is calculated from the number of lever
%presses (B) within each corresponding ratio divided by the time 
%to complete the ratio (RBRR = total #B/rtime).

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
for i = 1:(length(nonzeros(I_1R))-1)
    RBRR_1R(i) = ((numel(B_1R(B_1R > I_1R(i) & B_1R < I_1R(i+1))))./rtime_1R(i));
end
for i = 1:(length(nonzeros(I_1L))-1)
    RBRR_1L(i) = ((numel(B_1L(B_1L > I_1L(i) & B_1L < I_1L(i+1))))./rtime_1L(i));
end
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
for i = 1:(length(nonzeros(I_2R))-1)
    RBRR_2R(i) = ((numel(B_2R(B_2R > I_2R(i) & B_2R < I_2R(i+1))))./rtime_2R(i));
end
for i = 1:(length(nonzeros(I_2L))-1)
    RBRR_2L(i) = ((numel(B_2L(B_2L > I_2L(i) & B_2L < I_2L(i+1))))./rtime_2L(i));
end
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
for i = 1:(length(nonzeros(I_3R))-1)
    RBRR_3R(i) = ((numel(B_3R(B_3R > I_3R(i) & B_3R < I_3R(i+1))))./rtime_3R(i));
end
for i = 1:(length(nonzeros(I_3L))-1)
    RBRR_3L(i) = ((numel(B_3L(B_3L > I_3L(i) & B_3L < I_3L(i+1))))./rtime_3L(i));
end
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
for i = 1:(length(nonzeros(I_4R))-1)
    RBRR_4R(i) = ((numel(B_4R(B_4R > I_4R(i) & B_4R < I_4R(i+1))))./rtime_4R(i));
end
for i = 1:(length(nonzeros(I_4L))-1)
    RBRR_4L(i) = ((numel(B_4L(B_4L > I_4L(i) & B_4L < I_4L(i+1))))./rtime_4L(i));
end
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
for i = 1:(length(nonzeros(I_5R))-1)
    RBRR_5R(i) = ((numel(B_5R(B_5R > I_5R(i) & B_5R < I_5R(i+1))))./rtime_5R(i));
end
for i = 1:(length(nonzeros(I_5L))-1)
    RBRR_5L(i) = ((numel(B_5L(B_5L > I_5L(i) & B_5L < I_5L(i+1))))./rtime_5L(i));
end
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
for i = 1:(length(nonzeros(I_6R))-1)
    RBRR_6R(i) = ((numel(B_6R(B_6R > I_6R(i) & B_6R < I_6R(i+1))))./rtime_6R(i));
end
for i = 1:(length(nonzeros(I_6L))-1)
    RBRR_6L(i) = ((numel(B_6L(B_6L > I_6L(i) & B_6L < I_6L(i+1))))./rtime_6L(i));
end
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
for i = 1:(length(nonzeros(I_7R))-1)
    RBRR_7R(i) = ((numel(B_7R(B_7R > I_7R(i) & B_7R < I_7R(i+1))))./rtime_7R(i));
end
for i = 1:(length(nonzeros(I_7L))-1)
    RBRR_7L(i) = ((numel(B_7L(B_7L > I_7L(i) & B_7L < I_7L(i+1))))./rtime_7L(i));
end
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
for i = 1:(length(nonzeros(I_8R))-1)
    RBRR_8R(i) = ((numel(B_8R(B_8R > I_8R(i) & B_8R < I_8R(i+1))))./rtime_8R(i));
end
for i = 1:(length(nonzeros(I_8L))-1)
    RBRR_8L(i) = ((numel(B_8L(B_8L > I_8L(i) & B_8L < I_8L(i+1))))./rtime_8L(i));
end
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
for i = 1:(length(nonzeros(I_9R))-1)
    RBRR_9R(i) = ((numel(B_9R(B_9R > I_9R(i) & B_9R < I_9R(i+1))))./rtime_9R(i));
end
for i = 1:(length(nonzeros(I_9L))-1)
    RBRR_9L(i) = ((numel(B_9L(B_9L > I_9L(i) & B_9L < I_9L(i+1))))./rtime_9L(i));
end
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
for i = 1:(length(nonzeros(I_10R))-1)
    RBRR_10R(i) = ((numel(B_10R(B_10R > I_10R(i) & B_10R < I_10R(i+1))))./rtime_10R(i));
end
for i = 1:(length(nonzeros(I_10L))-1)
    RBRR_10L(i) = ((numel(B_10L(B_10L > I_10L(i) & B_10L < I_10L(i+1))))./rtime_10L(i));
end
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
for i = 1:(length(nonzeros(I_11R))-1)
    RBRR_11R(i) = ((numel(B_11R(B_11R > I_11R(i) & B_11R < I_11R(i+1))))./rtime_11R(i));
end
for i = 1:(length(nonzeros(I_11L))-1)
    RBRR_11L(i) = ((numel(B_11L(B_11L > I_11L(i) & B_11L < I_11L(i+1))))./rtime_11L(i));
end
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
for i = 1:(length(nonzeros(I_12R))-1)
    RBRR_12R(i) = ((numel(B_12R(B_12R > I_12R(i) & B_12R < I_12R(i+1))))./rtime_12R(i));
end
for i = 1:(length(nonzeros(I_12L))-1)
    RBRR_12L(i) = ((numel(B_12L(B_12L > I_12L(i) & B_12L < I_12L(i+1))))./rtime_12L(i));
end
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
for i = 1:(length(nonzeros(I_13R))-1)
    RBRR_13R(i) = ((numel(B_13R(B_13R > I_13R(i) & B_13R < I_13R(i+1))))./rtime_13R(i));
end
for i = 1:(length(nonzeros(I_13L))-1)
    RBRR_13L(i) = ((numel(B_13L(B_13L > I_13L(i) & B_13L < I_13L(i+1))))./rtime_13L(i));
end
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
for i = 1:(length(nonzeros(I_14R))-1)
    RBRR_14R(i) = ((numel(B_14R(B_14R > I_14R(i) & B_14R < I_14R(i+1))))./rtime_14R(i));
end
for i = 1:(length(nonzeros(I_14L))-1)
    RBRR_14L(i) = ((numel(B_14L(B_14L > I_14L(i) & B_14L < I_14L(i+1))))./rtime_14L(i));
end
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
for i = 1:(length(nonzeros(I_15R))-1)
    RBRR_15R(i) = ((numel(B_15R(B_15R > I_15R(i) & B_15R < I_15R(i+1))))./rtime_15R(i));
end
for i = 1:(length(nonzeros(I_15L))-1)
    RBRR_15L(i) = ((numel(B_15L(B_15L > I_15L(i) & B_15L < I_15L(i+1))))./rtime_15L(i));
end
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
for i = 1:(length(nonzeros(I_16R))-1)
    RBRR_16R(i) = ((numel(B_16R(B_16R > I_16R(i) & B_16R < I_16R(i+1))))./rtime_16R(i));
end
for i = 1:(length(nonzeros(I_16L))-1)
    RBRR_16L(i) = ((numel(B_16L(B_16L > I_16L(i) & B_16L < I_16L(i+1))))./rtime_16L(i));
end
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
for i = 1:(length(nonzeros(I_17R))-1)
    RBRR_17R(i) = ((numel(B_17R(B_17R > I_17R(i) & B_17R < I_17R(i+1))))./rtime_17R(i));
end
for i = 1:(length(nonzeros(I_17L))-1)
    RBRR_17L(i) = ((numel(B_17L(B_17L > I_17L(i) & B_17L < I_17L(i+1))))./rtime_17L(i));
end
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
for i = 1:(length(nonzeros(I_18R))-1)
    RBRR_18R(i) = ((numel(B_18R(B_18R > I_18R(i) & B_18R < I_18R(i+1))))./rtime_18R(i));
end
for i = 1:(length(nonzeros(I_18L))-1)
    RBRR_18L(i) = ((numel(B_18L(B_18L > I_18L(i) & B_18L < I_18L(i+1))))./rtime_18L(i));
end
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
for i = 1:(length(nonzeros(I_19R))-1)
    RBRR_19R(i) = ((numel(B_19R(B_19R > I_19R(i) & B_19R < I_19R(i+1))))./rtime_19R(i));
end
for i = 1:(length(nonzeros(I_19L))-1)
    RBRR_19L(i) = ((numel(B_19L(B_19L > I_19L(i) & B_19L < I_19L(i+1))))./rtime_19L(i));
end
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
for i = 1:(length(nonzeros(I_20R))-1)
    RBRR_20R(i) = ((numel(B_20R(B_20R > I_20R(i) & B_20R < I_20R(i+1))))./rtime_20R(i));
end
for i = 1:(length(nonzeros(I_20L))-1)
    RBRR_20L(i) = ((numel(B_20L(B_20L > I_20L(i) & B_20L < I_20L(i+1))))./rtime_20L(i));
end
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
for i = 1:(length(nonzeros(I_21R))-1)
    RBRR_21R(i) = ((numel(B_21R(B_21R > I_21R(i) & B_21R < I_21R(i+1))))./rtime_21R(i));
end
for i = 1:(length(nonzeros(I_21L))-1)
    RBRR_21L(i) = ((numel(B_21L(B_21L > I_21L(i) & B_21L < I_21L(i+1))))./rtime_21L(i));
end
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
for i = 1:(length(nonzeros(I_22R))-1)
    RBRR_22R(i) = ((numel(B_22R(B_22R > I_22R(i) & B_22R < I_22R(i+1))))./rtime_22R(i));
end
for i = 1:(length(nonzeros(I_22L))-1)
    RBRR_22L(i) = ((numel(B_22L(B_22L > I_22L(i) & B_22L < I_22L(i+1))))./rtime_22L(i));
end
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
for i = 1:(length(nonzeros(I_23R))-1)
    RBRR_23R(i) = ((numel(B_23R(B_23R > I_23R(i) & B_23R < I_23R(i+1))))./rtime_23R(i));
end
for i = 1:(length(nonzeros(I_23L))-1)
    RBRR_23L(i) = ((numel(B_23L(B_23L > I_23L(i) & B_23L < I_23L(i+1))))./rtime_23L(i));
end
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
for i = 1:(length(nonzeros(I_24R))-1)
    RBRR_24R(i) = ((numel(B_24R(B_24R > I_24R(i) & B_24R < I_24R(i+1))))./rtime_24R(i));
end
for i = 1:(length(nonzeros(I_24L))-1)
    RBRR_24L(i) = ((numel(B_24L(B_24L > I_24L(i) & B_24L < I_24L(i+1))))./rtime_24L(i));
end
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
for i = 1:(length(nonzeros(I_25R))-1)
    RBRR_25R(i) = ((numel(B_25R(B_25R > I_25R(i) & B_25R < I_25R(i+1))))./rtime_25R(i));
end
for i = 1:(length(nonzeros(I_25L))-1)
    RBRR_25L(i) = ((numel(B_25L(B_25L > I_25L(i) & B_25L < I_25L(i+1))))./rtime_25L(i));
end
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
for i = 1:(length(nonzeros(I_26R))-1)
    RBRR_26R(i) = ((numel(B_26R(B_26R > I_26R(i) & B_26R < I_26R(i+1))))./rtime_26R(i));
end
for i = 1:(length(nonzeros(I_26L))-1)
    RBRR_26L(i) = ((numel(B_26L(B_26L > I_26L(i) & B_26L < I_26L(i+1))))./rtime_26L(i));
end
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
for i = 1:(length(nonzeros(I_27R))-1)
    RBRR_27R(i) = ((numel(B_27R(B_27R > I_27R(i) & B_27R < I_27R(i+1))))./rtime_27R(i));
end
for i = 1:(length(nonzeros(I_27L))-1)
    RBRR_27L(i) = ((numel(B_27L(B_27L > I_27L(i) & B_27L < I_27L(i+1))))./rtime_27L(i));
end
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
for i = 1:(length(nonzeros(I_28R))-1)
    RBRR_28R(i) = ((numel(B_28R(B_28R > I_28R(i) & B_28R < I_28R(i+1))))./rtime_28R(i));
end
for i = 1:(length(nonzeros(I_28L))-1)
    RBRR_28L(i) = ((numel(B_28L(B_28L > I_28L(i) & B_28L < I_28L(i+1))))./rtime_28L(i));
end
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
for i = 1:(length(nonzeros(I_29R))-1)
    RBRR_29R(i) = ((numel(B_29R(B_29R > I_29R(i) & B_29R < I_29R(i+1))))./rtime_29R(i));
end
for i = 1:(length(nonzeros(I_29L))-1)
    RBRR_29L(i) = ((numel(B_29L(B_29L > I_29L(i) & B_29L < I_29L(i+1))))./rtime_29L(i));
end
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
for i = 1:(length(nonzeros(I_30R))-1)
    RBRR_30R(i) = ((numel(B_30R(B_30R > I_30R(i) & B_30R < I_30R(i+1))))./rtime_30R(i));
end
for i = 1:(length(nonzeros(I_30L))-1)
    RBRR_30L(i) = ((numel(B_30L(B_30L > I_30L(i) & B_30L < I_30L(i+1))))./rtime_30L(i));
end
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
for i = 1:(length(nonzeros(I_31R))-1)
    RBRR_31R(i) = ((numel(B_31R(B_31R > I_31R(i) & B_31R < I_31R(i+1))))./rtime_31R(i));
end
for i = 1:(length(nonzeros(I_31L))-1)
    RBRR_31L(i) = ((numel(B_31L(B_31L > I_31L(i) & B_31L < I_31L(i+1))))./rtime_31L(i));
end
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
for i = 1:(length(nonzeros(I_32R))-1)
    RBRR_32R(i) = ((numel(B_32R(B_32R > I_32R(i) & B_32R < I_32R(i+1))))./rtime_32R(i));
end
for i = 1:(length(nonzeros(I_32L))-1)
    RBRR_32L(i) = ((numel(B_32L(B_32L > I_32L(i) & B_32L < I_32L(i+1))))./rtime_32L(i));
end
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
for i = 1:(length(nonzeros(I_33R))-1)
    RBRR_33R(i) = ((numel(B_33R(B_33R > I_33R(i) & B_33R < I_33R(i+1))))./rtime_33R(i));
end
for i = 1:(length(nonzeros(I_33L))-1)
    RBRR_33L(i) = ((numel(B_33L(B_33L > I_33L(i) & B_33L < I_33L(i+1))))./rtime_33L(i));
end
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
for i = 1:(length(nonzeros(I_34R))-1)
    RBRR_34R(i) = ((numel(B_34R(B_34R > I_34R(i) & B_34R < I_34R(i+1))))./rtime_34R(i));
end
for i = 1:(length(nonzeros(I_34L))-1)
    RBRR_34L(i) = ((numel(B_34L(B_34L > I_34L(i) & B_34L < I_34L(i+1))))./rtime_34L(i));
end
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
for i = 1:(length(nonzeros(I_35R))-1)
    RBRR_35R(i) = ((numel(B_35R(B_35R > I_35R(i) & B_35R < I_35R(i+1))))./rtime_35R(i));
end
for i = 1:(length(nonzeros(I_35L))-1)
    RBRR_35L(i) = ((numel(B_35L(B_35L > I_35L(i) & B_35L < I_35L(i+1))))./rtime_35L(i));
end
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
for i = 1:(length(nonzeros(I_36R))-1)
    RBRR_36R(i) = ((numel(B_36R(B_36R > I_36R(i) & B_36R < I_36R(i+1))))./rtime_36R(i));
end
for i = 1:(length(nonzeros(I_36L))-1)
    RBRR_36L(i) = ((numel(B_36L(B_36L > I_36L(i) & B_36L < I_36L(i+1))))./rtime_36L(i));
end
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
for i = 1:(length(nonzeros(I_37R))-1)
    RBRR_37R(i) = ((numel(B_37R(B_37R > I_37R(i) & B_37R < I_37R(i+1))))./rtime_37R(i));
end
for i = 1:(length(nonzeros(I_37L))-1)
    RBRR_37L(i) = ((numel(B_37L(B_37L > I_37L(i) & B_37L < I_37L(i+1))))./rtime_37L(i));
end
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
for i = 1:(length(nonzeros(I_38R))-1)
    RBRR_38R(i) = ((numel(B_38R(B_38R > I_38R(i) & B_38R < I_38R(i+1))))./rtime_38R(i));
end
for i = 1:(length(nonzeros(I_38L))-1)
    RBRR_38L(i) = ((numel(B_38L(B_38L > I_38L(i) & B_38L < I_38L(i+1))))./rtime_38L(i));
end
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
for i = 1:(length(nonzeros(I_39R))-1)
    RBRR_39R(i) = ((numel(B_39R(B_39R > I_39R(i) & B_39R < I_39R(i+1))))./rtime_39R(i));
end
for i = 1:(length(nonzeros(I_39L))-1)
    RBRR_39L(i) = ((numel(B_39L(B_39L > I_39L(i) & B_39L < I_39L(i+1))))./rtime_39L(i));
end
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
for i = 1:(length(nonzeros(I_40R))-1)
    RBRR_40R(i) = ((numel(B_40R(B_40R > I_40R(i) & B_40R < I_40R(i+1))))./rtime_40R(i));
end
for i = 1:(length(nonzeros(I_40L))-1)
    RBRR_40L(i) = ((numel(B_40L(B_40L > I_40L(i) & B_40L < I_40L(i+1))))./rtime_40L(i));
end
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
for i = 1:(length(nonzeros(I_41R))-1)
    RBRR_41R(i) = ((numel(B_41R(B_41R > I_41R(i) & B_41R < I_41R(i+1))))./rtime_41R(i));
end
for i = 1:(length(nonzeros(I_41L))-1)
    RBRR_41L(i) = ((numel(B_41L(B_41L > I_41L(i) & B_41L < I_41L(i+1))))./rtime_41L(i));
end
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
for i = 1:(length(nonzeros(I_42R))-1)
    RBRR_42R(i) = ((numel(B_42R(B_42R > I_42R(i) & B_42R < I_42R(i+1))))./rtime_42R(i));
end
for i = 1:(length(nonzeros(I_42L))-1)
    RBRR_42L(i) = ((numel(B_42L(B_42L > I_42L(i) & B_42L < I_42L(i+1))))./rtime_42L(i));
end
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
for i = 1:(length(nonzeros(I_43R))-1)
    RBRR_43R(i) = ((numel(B_43R(B_43R > I_43R(i) & B_43R < I_43R(i+1))))./rtime_43R(i));
end
for i = 1:(length(nonzeros(I_43L))-1)
    RBRR_43L(i) = ((numel(B_43L(B_43L > I_43L(i) & B_43L < I_43L(i+1))))./rtime_43L(i));
end
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
for i = 1:(length(nonzeros(I_44R))-1)
    RBRR_44R(i) = ((numel(B_44R(B_44R > I_44R(i) & B_44R < I_44R(i+1))))./rtime_44R(i));
end
for i = 1:(length(nonzeros(I_44L))-1)
    RBRR_44L(i) = ((numel(B_44L(B_44L > I_44L(i) & B_44L < I_44L(i+1))))./rtime_44L(i));
end
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
for i = 1:(length(nonzeros(I_45R))-1)
    RBRR_45R(i) = ((numel(B_45R(B_45R > I_45R(i) & B_45R < I_45R(i+1))))./rtime_45R(i));
end
for i = 1:(length(nonzeros(I_45L))-1)
    RBRR_45L(i) = ((numel(B_45L(B_45L > I_45L(i) & B_45L < I_45L(i+1))))./rtime_45L(i));
end
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
for i = 1:(length(nonzeros(I_46R))-1)
    RBRR_46R(i) = ((numel(B_46R(B_46R > I_46R(i) & B_46R < I_46R(i+1))))./rtime_46R(i));
end
for i = 1:(length(nonzeros(I_46L))-1)
    RBRR_46L(i) = ((numel(B_46L(B_46L > I_46L(i) & B_46L < I_46L(i+1))))./rtime_46L(i));
end
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
for i = 1:(length(nonzeros(I_47R))-1)
    RBRR_47R(i) = ((numel(B_47R(B_47R > I_47R(i) & B_47R < I_47R(i+1))))./rtime_47R(i));
end
for i = 1:(length(nonzeros(I_47L))-1)
    RBRR_47L(i) = ((numel(B_47L(B_47L > I_47L(i) & B_47L < I_47L(i+1))))./rtime_47L(i));
end
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
for i = 1:(length(nonzeros(I_48R))-1)
    RBRR_48R(i) = ((numel(B_48R(B_48R > I_48R(i) & B_48R < I_48R(i+1))))./rtime_48R(i));
end
for i = 1:(length(nonzeros(I_48L))-1)
    RBRR_48L(i) = ((numel(B_48L(B_48L > I_48L(i) & B_48L < I_48L(i+1))))./rtime_48L(i));
end
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
for i = 1:(length(nonzeros(I_49R))-1)
    RBRR_49R(i) = ((numel(B_49R(B_49R > I_49R(i) & B_49R < I_49R(i+1))))./rtime_49R(i));
end
for i = 1:(length(nonzeros(I_49L))-1)
    RBRR_49L(i) = ((numel(B_49L(B_49L > I_49L(i) & B_49L < I_49L(i+1))))./rtime_49L(i));
end
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
for i = 1:(length(nonzeros(I_50R))-1)
    RBRR_50R(i) = ((numel(B_50R(B_50R > I_50R(i) & B_50R < I_50R(i+1))))./rtime_50R(i));
end
for i = 1:(length(nonzeros(I_50L))-1)
    RBRR_50L(i) = ((numel(B_50L(B_50L > I_50L(i) & B_50L < I_50L(i+1))))./rtime_50L(i));
end
end
if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
for i = 1:(length(nonzeros(I_51R))-1)
    RBRR_51R(i) = ((numel(B_51R(B_51R > I_51R(i) & B_51R < I_51R(i+1))))./rtime_51R(i));
end
for i = 1:(length(nonzeros(I_51L))-1)
    RBRR_51L(i) = ((numel(B_51L(B_51L > I_51L(i) & B_51L < I_51L(i+1))))./rtime_51L(i));
end
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
for i = 1:(length(nonzeros(I_52R))-1)
    RBRR_52R(i) = ((numel(B_52R(B_52R > I_52R(i) & B_52R < I_52R(i+1))))./rtime_52R(i));
end
for i = 1:(length(nonzeros(I_52L))-1)
    RBRR_52L(i) = ((numel(B_52L(B_52L > I_52L(i) & B_52L < I_52L(i+1))))./rtime_52L(i));
end
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
for i = 1:(length(nonzeros(I_53R))-1)
    RBRR_53R(i) = ((numel(B_53R(B_53R > I_53R(i) & B_53R < I_53R(i+1))))./rtime_53R(i));
end
for i = 1:(length(nonzeros(I_53L))-1)
    RBRR_53L(i) = ((numel(B_53L(B_53L > I_53L(i) & B_53L < I_53L(i+1))))./rtime_53L(i));
end
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
for i = 1:(length(nonzeros(I_54R))-1)
    RBRR_54R(i) = ((numel(B_54R(B_54R > I_54R(i) & B_54R < I_54R(i+1))))./rtime_54R(i));
end
for i = 1:(length(nonzeros(I_44L))-1)
    RBRR_54L(i) = ((numel(B_54L(B_54L > I_54L(i) & B_54L < I_54L(i+1))))./rtime_54L(i));
end
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
for i = 1:(length(nonzeros(I_55R))-1)
    RBRR_55R(i) = ((numel(B_55R(B_55R > I_55R(i) & B_55R < I_55R(i+1))))./rtime_55R(i));
end
for i = 1:(length(nonzeros(I_55L))-1)
    RBRR_55L(i) = ((numel(B_55L(B_55L > I_55L(i) & B_55L < I_55L(i+1))))./rtime_55L(i));
end
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
for i = 1:(length(nonzeros(I_56R))-1)
    RBRR_56R(i) = ((numel(B_56R(B_56R > I_56R(i) & B_56R < I_56R(i+1))))./rtime_56R(i));
end
for i = 1:(length(nonzeros(I_56L))-1)
    RBRR_56L(i) = ((numel(B_56L(B_56L > I_56L(i) & B_56L < I_56L(i+1))))./rtime_56L(i));
end
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
for i = 1:(length(nonzeros(I_57R))-1)
    RBRR_57R(i) = ((numel(B_57R(B_57R > I_57R(i) & B_57R < I_57R(i+1))))./rtime_57R(i));
end
for i = 1:(length(nonzeros(I_57L))-1)
    RBRR_57L(i) = ((numel(B_57L(B_57L > I_57L(i) & B_57L < I_57L(i+1))))./rtime_57L(i));
end
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
for i = 1:(length(nonzeros(I_58R))-1)
    RBRR_58R(i) = ((numel(B_58R(B_58R > I_58R(i) & B_58R < I_58R(i+1))))./rtime_58R(i));
end
for i = 1:(length(nonzeros(I_58L))-1)
    RBRR_58L(i) = ((numel(B_58L(B_58L > I_58L(i) & B_58L < I_58L(i+1))))./rtime_58L(i));
end
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
for i = 1:(length(nonzeros(I_59R))-1)
    RBRR_59R(i) = ((numel(B_59R(B_59R > I_59R(i) & B_59R < I_59R(i+1))))./rtime_59R(i));
end
for i = 1:(length(nonzeros(I_59L))-1)
    RBRR_59L(i) = ((numel(B_59L(B_59L > I_59L(i) & B_59L < I_59L(i+1))))./rtime_59L(i));
end
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
for i = 1:(length(nonzeros(I_60R))-1)
    RBRR_60R(i) = ((numel(B_60R(B_60R > I_60R(i) & B_60R < I_60R(i+1))))./rtime_60R(i));
end
for i = 1:(length(nonzeros(I_60L))-1)
    RBRR_60L(i) = ((numel(B_60L(B_60L > I_60L(i) & B_60L < I_60L(i+1))))./rtime_60L(i));
end
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
for i = 1:(length(nonzeros(I_61R))-1)
    RBRR_61R(i) = ((numel(B_61R(B_61R > I_61R(i) & B_61R < I_61R(i+1))))./rtime_61R(i));
end
for i = 1:(length(nonzeros(I_61L))-1)
    RBRR_61L(i) = ((numel(B_61L(B_61L > I_61L(i) & B_61L < I_61L(i+1))))./rtime_61L(i));
end
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
for i = 1:(length(nonzeros(I_62R))-1)
    RBRR_62R(i) = ((numel(B_62R(B_62R > I_62R(i) & B_62R < I_62R(i+1))))./rtime_62R(i));
end
for i = 1:(length(nonzeros(I_62L))-1)
    RBRR_62L(i) = ((numel(B_62L(B_62L > I_62L(i) & B_62L < I_62L(i+1))))./rtime_62L(i));
end
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
for i = 1:(length(nonzeros(I_63R))-1)
    RBRR_63R(i) = ((numel(B_63R(B_63R > I_63R(i) & B_63R < I_63R(i+1))))./rtime_63R(i));
end
for i = 1:(length(nonzeros(I_63L))-1)
    RBRR_63L(i) = ((numel(B_63L(B_63L > I_63L(i) & B_63L < I_63L(i+1))))./rtime_63L(i));
end
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
for i = 1:(length(nonzeros(I_64R))-1)
    RBRR_64R(i) = ((numel(B_64R(B_64R > I_64R(i) & B_64R < I_64R(i+1))))./rtime_64R(i));
end
for i = 1:(length(nonzeros(I_64L))-1)
    RBRR_64L(i) = ((numel(B_64L(B_64L > I_64L(i) & B_64L < I_64L(i+1))))./rtime_64L(i));
end
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
for i = 1:(length(nonzeros(I_65R))-1)
    RBRR_65R(i) = ((numel(B_65R(B_65R > I_65R(i) & B_65R < I_65R(i+1))))./rtime_65R(i));
end
for i = 1:(length(nonzeros(I_65L))-1)
    RBRR_65L(i) = ((numel(B_65L(B_65L > I_65L(i) & B_65L < I_65L(i+1))))./rtime_65L(i));
end
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
for i = 1:(length(nonzeros(I_66R))-1)
    RBRR_66R(i) = ((numel(B_66R(B_66R > I_66R(i) & B_66R < I_66R(i+1))))./rtime_66R(i));
end
for i = 1:(length(nonzeros(I_66L))-1)
    RBRR_66L(i) = ((numel(B_66L(B_66L > I_66L(i) & B_66L < I_66L(i+1))))./rtime_66L(i));
end
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
for i = 1:(length(nonzeros(I_67R))-1)
    RBRR_67R(i) = ((numel(B_67R(B_67R > I_67R(i) & B_67R < I_67R(i+1))))./rtime_67R(i));
end
for i = 1:(length(nonzeros(I_67L))-1)
    RBRR_67L(i) = ((numel(B_67L(B_67L > I_67L(i) & B_67L < I_67L(i+1))))./rtime_67L(i));
end
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
for i = 1:(length(nonzeros(I_68R))-1)
    RBRR_68R(i) = ((numel(B_68R(B_68R > I_68R(i) & B_68R < I_68R(i+1))))./rtime_68R(i));
end
for i = 1:(length(nonzeros(I_68L))-1)
    RBRR_68L(i) = ((numel(B_68L(B_68L > I_68L(i) & B_68L < I_68L(i+1))))./rtime_68L(i));
end
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
for i = 1:(length(nonzeros(I_69R))-1)
    RBRR_69R(i) = ((numel(B_69R(B_69R > I_69R(i) & B_69R < I_69R(i+1))))./rtime_69R(i));
end
for i = 1:(length(nonzeros(I_69L))-1)
    RBRR_69L(i) = ((numel(B_69L(B_69L > I_69L(i) & B_69L < I_69L(i+1))))./rtime_69L(i));
end
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
for i = 1:(length(nonzeros(I_70R))-1)
    RBRR_70R(i) = ((numel(B_70R(B_70R > I_70R(i) & B_70R < I_70R(i+1))))./rtime_70R(i));
end
for i = 1:(length(nonzeros(I_70L))-1)
    RBRR_70L(i) = ((numel(B_70L(B_70L > I_70L(i) & B_70L < I_70L(i+1))))./rtime_70L(i));
end
end
if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
for i = 1:(length(nonzeros(I_71R))-1)
    RBRR_71R(i) = ((numel(B_71R(B_71R > I_71R(i) & B_71R < I_71R(i+1))))./rtime_71R(i));
end
for i = 1:(length(nonzeros(I_71L))-1)
    RBRR_71L(i) = ((numel(B_71L(B_71L > I_71L(i) & B_71L < I_71L(i+1))))./rtime_71L(i));
end
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
for i = 1:(length(nonzeros(I_72R))-1)
    RBRR_72R(i) = ((numel(B_72R(B_72R > I_72R(i) & B_72R < I_72R(i+1))))./rtime_72R(i));
end
for i = 1:(length(nonzeros(I_72L))-1)
    RBRR_72L(i) = ((numel(B_72L(B_72L > I_72L(i) & B_72L < I_72L(i+1))))./rtime_72L(i));
end
end


%all_data_R and all_data_L puts all data together (for Right and Left)in 3x60 matrix. 
%Subject data structure is 1st row (all_data_R(1:60)), PRP data is 2nd row (all_data_R(2:60))
% and RBRR data is 3rd row (all_data_R(3:60))

% all_data_R = {Subject1_R,Subject2_R,Subject3_R,Subject4_R,Subject5_R,Subject6_R,Subject7_R,Subject8_R,Subject9_R,Subject10_R,Subject11_R,Subject12_R,Subject13_R,Subject14_R,Subject15_R,Subject16_R,Subject17_R,Subject18_R,Subject19_R,Subject20_R,Subject21_R,Subject22_R,Subject23_R,Subject24_R,Subject25_R,Subject26_R,Subject27_R,Subject28_R,Subject29_R,Subject30_R,Subject31_R,Subject32_R,Subject33_R,Subject34_R,Subject35_R,Subject36_R,Subject37_R,Subject38_R,Subject39_R,Subject40_R,Subject41_R,Subject42_R,Subject43_R,Subject44_R,Subject45_R,Subject46_R,Subject47_R,Subject48_R,Subject49_R,Subject50_R
%              Subject51_R,Subject52_R,Subject53_R,Subject54_R,Subject55_R,Subject56_R,Subject57_R,Subject58_R,Subject59_R,Subject60_R;PRP_1R,PRP_2R,PRP_3R,PRP_4R,PRP_5R,PRP_6R,PRP_7R,PRP_8R,PRP_9R,PRP_10R,PRP_11R,PRP_12R,PRP_13R,PRP_14R,PRP_15R,PRP_16R,PRP_17R,PRP_18R,PRP_19R,PRP_20R,PRP_21R,PRP_22R,PRP_23R,PRP_24R,PRP_25R,PRP_26R,PRP_27R,PRP_28R,PRP_29R,PRP_30R,PRP_31R,PRP_32R,PRP_33R,PRP_34R,PRP_35R,PRP_36R,PRP_37R,PRP_38R,PRP_39R,PRP_40R,PRP_41R,PRP_42R,PRP_43R,PRP_44R,PRP_45R,PRP_46R,PRP_47R,PRP_48R,PRP_49R,PRP_50R
%              PRP_51R,PRP_52R,PRP_53R,PRP_54R,PRP_55R,PRP_56R,PRP_57R,PRP_58R,PRP_59R,PRP_60R;RBRR_1R,RBRR_2R,RBRR_3R,RBRR_4R,RBRR_5R,RBRR_6R,RBRR_7R,RBRR_8R,RBRR_9R,RBRR_10R,RBRR_11R,RBRR_12R,RBRR_13R,RBRR_14R,RBRR_15R,RBRR_16R,RBRR_17R,RBRR_18R,RBRR_19R,RBRR_20R,RBRR_21R,RBRR_22R,RBRR_23R,RBRR_24R,RBRR_25R,RBRR_26R,RBRR_27R,RBRR_28R,RBRR_29R,RBRR_30R,RBRR_31R,RBRR_32R,RBRR_33R,RBRR_34R,RBRR_35R,RBRR_36R,RBRR_37R,RBRR_38R,RBRR_39R,RBRR_40R,RBRR_41R,RBRR_42R,RBRR_43R,RBRR_44R,RBRR_45R,RBRR_46R,RBRR_47R,RBRR_48R,RBRR_49R,RBRR_50R
%              RBRR_51R,RBRR_52R,RBRR_53R,RBRR_54R,RBRR_55R,RBRR_56R,RBRR_57R,RBRR_58R,RBRR_59R,RBRR_60R};
% 
% all_data_L = {Subject1_L,Subject2_L,Subject3_L,Subject4_L,Subject5_L,Subject6_L,Subject7_L,Subject8_L,Subject9_L,Subject10_L,Subject11_L,Subject12_L,Subject13_L,Subject14_L,Subject15_L,Subject16_L,Subject17_L,Subject18_L,Subject19_L,Subject20_L,Subject21_L,Subject22_L,Subject23_L,Subject24_L,Subject25_L,Subject26_L,Subject27_L,Subject28_L,Subject29_L,Subject30_L,Subject31_L,Subject32_L,Subject33_L,Subject34_L,Subject35_L,Subject36_L,Subject37_L,Subject38_L,Subject39_L,Subject40_L,Subject41_L,Subject42_L,Subject43_L,Subject44_L,Subject45_L,Subject46_L,Subject47_L,Subject48_L,Subject49_L,Subject50_L
%              Subject51_L,Subject52_L,Subject53_L,Subject54_L,Subject55_L,Subject56_L,Subject57_L,Subject58_L,Subject59_L,Subject60_L;PRP_1L,PRP_2L,PRP_3L,PRP_4L,PRP_5L,PRP_6L,PRP_7L,PRP_8L,PRP_9L,PRP_10L,PRP_11L,PRP_12L,PRP_13L,PRP_14L,PRP_15L,PRP_16L,PRP_17L,PRP_18L,PRP_19L,PRP_20L,PRP_21L,PRP_22L,PRP_23L,PRP_24L,PRP_25L,PRP_26L,PRP_27L,PRP_28L,PRP_29L,PRP_30L,PRP_31L,PRP_32L,PRP_33L,PRP_34L,PRP_35L,PRP_36L,PRP_37L,PRP_38L,PRP_39L,PRP_40L,PRP_41L,PRP_42L,PRP_43L,PRP_44L,PRP_45L,PRP_46L,PRP_47L,PRP_48L,PRP_49L,PRP_50L
%              PRP_51L,PRP_52L,PRP_53L,PRP_54L,PRP_55L,PRP_56L,PRP_57L,PRP_58L,PRP_59L,PRP_60L;RBRR_1L,RBRR_2L,RBRR_3L,RBRR_4L,RBRR_5L,RBRR_6L,RBRR_7L,RBRR_8L,RBRR_9L,RBRR_10L,RBRR_11L,RBRR_12L,RBRR_13L,RBRR_14L,RBRR_15L,RBRR_16L,RBRR_17L,RBRR_18L,RBRR_19L,RBRR_20L,RBRR_21L,RBRR_22L,RBRR_23L,RBRR_24L,RBRR_25L,RBRR_26L,RBRR_27L,RBRR_28L,RBRR_29L,RBRR_30L,RBRR_31L,RBRR_32L,RBRR_33L,RBRR_34L,RBRR_35L,RBRR_36L,RBRR_37L,RBRR_38L,RBRR_39L,RBRR_40L,RBRR_41L,RBRR_42L,RBRR_43L,RBRR_44L,RBRR_45L,RBRR_46L,RBRR_47L,RBRR_48L,RBRR_49L,RBRR_50L
%              RBRR_51L,RBRR_52L,RBRR_53L,RBRR_54L,RBRR_55L,RBRR_56L,RBRR_57L,RBRR_58L,RBRR_59L,RBRR_60L};
%          


%%%%Re-extract MEDPC varibles to accuratley calculate cumulative lever presses  

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
    B_1R = Subject1_R.B;
    B_1L = Subject1_L.B;
    E_1R = Subject1_R.E;
    E_1L = Subject1_L.E;
    I_1R = Subject1_R.I;
    I_1L = Subject1_L.I;
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
    B_2R = Subject2_R.B;
    B_2L = Subject2_L.B;
    E_2R = Subject2_R.E;
    E_2L = Subject2_L.E;
    I_2R = Subject2_R.I;
    I_2L = Subject2_L.I;
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
    B_3R = Subject3_R.B;
    B_3L = Subject3_L.B;
    E_3R = Subject3_R.E;
    E_3L = Subject3_L.E;
    I_3R = Subject3_R.I;
    I_3L = Subject3_L.I;
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
    B_4R = Subject4_R.B;
    B_4L = Subject4_L.B;
    E_4R = Subject4_R.E;
    E_4L = Subject4_L.E;
    I_4R = Subject4_R.I;
    I_4L = Subject4_L.I;
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
    B_5R = Subject5_R.B;
    B_5L = Subject5_L.B;
    E_5R = Subject5_R.E;
    E_5L = Subject5_L.E;
    I_5R = Subject5_R.I;
    I_5L = Subject5_L.I;
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
    B_6R = Subject6_R.B;
    B_6L = Subject6_L.B;
    E_6R = Subject6_R.E;
    E_6L = Subject6_L.E;
    I_6R = Subject6_R.I;
    I_6L = Subject6_L.I;
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
    B_7R = Subject7_R.B;
    B_7L = Subject7_L.B;
    E_7R = Subject7_R.E;
    E_7L = Subject7_L.E;
    I_7R = Subject7_R.I;
    I_7L = Subject7_L.I;
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
    B_8R = Subject8_R.B;
    B_8L = Subject8_L.B;
    E_8R = Subject8_R.E;
    E_8L = Subject8_L.E;
    I_8R = Subject8_R.I;
    I_8L = Subject8_L.I;
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
    B_9R = Subject9_R.B;
    B_9L = Subject9_L.B;
    E_9R = Subject9_R.E;
    E_9L = Subject9_L.E;
    I_9R = Subject9_R.I;
    I_9L = Subject9_L.I;
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
    B_10R = Subject10_R.B;
    B_10L = Subject10_L.B;
    E_10R = Subject10_R.E;
    E_10L = Subject10_L.E;
    I_10R = Subject10_R.I;
    I_10L = Subject10_L.I;
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
    B_11R = Subject11_R.B;
    B_11L = Subject11_L.B;
    E_11R = Subject11_R.E;
    E_11L = Subject11_L.E;
    I_11R = Subject11_R.I;
    I_11L = Subject11_L.I;
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
    B_12R = Subject12_R.B;
    B_12L = Subject12_L.B;
    E_12R = Subject12_R.E;
    E_12L = Subject12_L.E;
    I_12R = Subject12_R.I;
    I_12L = Subject12_L.I;
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
    B_13R = Subject13_R.B;
    B_13L = Subject13_L.B;
    E_13R = Subject13_R.E;
    E_13L = Subject13_L.E;
    I_13R = Subject13_R.I;
    I_13L = Subject13_L.I;
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
    B_14R = Subject14_R.B;
    B_14L = Subject14_L.B;
    E_14R = Subject14_R.E;
    E_14L = Subject14_L.E;
    I_14R = Subject14_R.I;
    I_14L = Subject14_L.I;
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
    B_15R = Subject15_R.B;
    B_15L = Subject15_L.B;
    E_15R = Subject15_R.E;
    E_15L = Subject15_L.E;
    I_15R = Subject15_R.I;
    I_15L = Subject15_L.I;
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
    B_16R = Subject16_R.B;
    B_16L = Subject16_L.B;
    E_16R = Subject16_R.E;
    E_16L = Subject16_L.E;
    I_16R = Subject16_R.I;
    I_16L = Subject16_L.I;
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
    B_17R = Subject17_R.B;
    B_17L = Subject17_L.B;
    E_17R = Subject17_R.E;
    E_17L = Subject17_L.E;
    I_17R = Subject17_R.I;
    I_17L = Subject17_L.I;
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
    B_18R = Subject18_R.B;
    B_18L = Subject18_L.B;
    E_18R = Subject18_R.E;
    E_18L = Subject18_L.E;
    I_18R = Subject18_R.I;
    I_18L = Subject18_L.I;
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
    B_19R = Subject19_R.B;
    B_19L = Subject19_L.B;
    E_19R = Subject19_R.E;
    E_19L = Subject19_L.E;
    I_19R = Subject19_R.I;
    I_19L = Subject19_L.I;
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
    B_20R = Subject20_R.B;
    B_20L = Subject20_L.B;
    E_20R = Subject20_R.E;
    E_20L = Subject20_L.E;
    I_20R = Subject20_R.I;
    I_20L = Subject20_L.I;
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
    B_21R = Subject21_R.B;
    B_21L = Subject21_L.B;
    E_21R = Subject21_R.E;
    E_21L = Subject21_L.E;
    I_21R = Subject21_R.I;
    I_21L = Subject21_L.I;
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
    B_22R = Subject22_R.B;
    B_22L = Subject22_L.B;
    E_22R = Subject22_R.E;
    E_22L = Subject22_L.E;
    I_22R = Subject22_R.I;
    I_22L = Subject22_L.I;
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
    B_23R = Subject23_R.B;
    B_23L = Subject23_L.B;
    E_23R = Subject23_R.E;
    E_23L = Subject23_L.E;
    I_23R = Subject23_R.I;
    I_23L = Subject23_L.I;
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
    B_24R = Subject24_R.B;
    B_24L = Subject24_L.B;
    E_24R = Subject24_R.E;
    E_24L = Subject24_L.E;
    I_24R = Subject24_R.I;
    I_24L = Subject24_L.I;
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
    B_25R = Subject25_R.B;
    B_25L = Subject25_L.B;
    E_25R = Subject25_R.E;
    E_25L = Subject25_L.E;
    I_25R = Subject25_R.I;
    I_25L = Subject25_L.I;
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
    B_26R = Subject26_R.B;
    B_26L = Subject26_L.B;
    E_26R = Subject26_R.E;
    E_26L = Subject26_L.E;
    I_26R = Subject26_R.I;
    I_26L = Subject26_L.I;
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
    B_27R = Subject27_R.B;
    B_27L = Subject27_L.B;
    E_27R = Subject27_R.E;
    E_27L = Subject27_L.E;
    I_27R = Subject27_R.I;
    I_27L = Subject27_L.I;
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
    B_28R = Subject28_R.B;
    B_28L = Subject28_L.B;
    E_28R = Subject28_R.E;
    E_28L = Subject28_L.E;
    I_28R = Subject28_R.I;
    I_28L = Subject28_L.I;
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
    B_29R = Subject29_R.B;
    B_29L = Subject29_L.B;
    E_29R = Subject29_R.E;
    E_29L = Subject29_L.E;
    I_29R = Subject29_R.I;
    I_29L = Subject29_L.I;
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
    B_30R = Subject30_R.B;
    B_30L = Subject30_L.B;
    E_30R = Subject30_R.E;
    E_30L = Subject30_L.E;
    I_30R = Subject30_R.I;
    I_30L = Subject30_L.I;
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
    B_31R = Subject31_R.B;
    B_31L = Subject31_L.B;
    E_31R = Subject31_R.E;
    E_31L = Subject31_L.E;
    I_31R = Subject31_R.I;
    I_31L = Subject31_L.I;
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
    B_32R = Subject32_R.B;
    B_32L = Subject32_L.B;
    E_32R = Subject32_R.E;
    E_32L = Subject32_L.E;
    I_32R = Subject32_R.I;
    I_32L = Subject32_L.I;
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
    B_33R = Subject33_R.B;
    B_33L = Subject33_L.B;
    E_33R = Subject33_R.E;
    E_33L = Subject33_L.E;
    I_33R = Subject33_R.I;
    I_33L = Subject33_L.I;
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
    B_34R = Subject34_R.B;
    B_34L = Subject34_L.B;
    E_34R = Subject34_R.E;
    E_34L = Subject34_L.E;
    I_34R = Subject34_R.I;
    I_34L = Subject34_L.I;
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
    B_35R = Subject35_R.B;
    B_35L = Subject35_L.B;
    E_35R = Subject35_R.E;
    E_35L = Subject35_L.E;
    I_35R = Subject35_R.I;
    I_35L = Subject35_L.I;
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
    B_36R = Subject36_R.B;
    B_36L = Subject36_L.B;
    E_36R = Subject36_R.E;
    E_36L = Subject36_L.E;
    I_36R = Subject36_R.I;
    I_36L = Subject36_L.I;
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
    B_37R = Subject37_R.B;
    B_37L = Subject37_L.B;
    E_37R = Subject37_R.E;
    E_37L = Subject37_L.E;
    I_37R = Subject37_R.I;
    I_37L = Subject37_L.I;
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
    B_38R = Subject38_R.B;
    B_38L = Subject38_L.B;
    E_38R = Subject38_R.E;
    E_38L = Subject38_L.E;
    I_38R = Subject38_R.I;
    I_38L = Subject38_L.I;
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
    B_39R = Subject39_R.B;
    B_39L = Subject39_L.B;
    E_39R = Subject39_R.E;
    E_39L = Subject39_L.E;
    I_39R = Subject39_R.I;
    I_39L = Subject39_L.I;
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
    B_40R = Subject40_R.B;
    B_40L = Subject40_L.B;
    E_40R = Subject40_R.E;
    E_40L = Subject40_L.E;
    I_40R = Subject40_R.I;
    I_40L = Subject40_L.I;
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
    B_41R = Subject41_R.B;
    B_41L = Subject41_L.B;
    E_41R = Subject41_R.E;
    E_41L = Subject41_L.E;
    I_41R = Subject41_R.I;
    I_41L = Subject41_L.I;
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
    B_42R = Subject42_R.B;
    B_42L = Subject42_L.B;
    E_42R = Subject42_R.E;
    E_42L = Subject42_L.E;
    I_42R = Subject42_R.I;
    I_42L = Subject42_L.I;
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
    B_43R = Subject43_R.B;
    B_43L = Subject43_L.B;
    E_43R = Subject43_R.E;
    E_43L = Subject43_L.E;
    I_43R = Subject43_R.I;
    I_43L = Subject43_L.I;
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
    B_44R = Subject44_R.B;
    B_44L = Subject44_L.B;
    E_44R = Subject44_R.E;
    E_44L = Subject44_L.E;
    I_44R = Subject44_R.I;
    I_44L = Subject44_L.I;
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
    B_45R = Subject45_R.B;
    B_45L = Subject45_L.B;
    E_45R = Subject45_R.E;
    E_45L = Subject45_L.E;
    I_45R = Subject45_R.I;
    I_45L = Subject45_L.I;
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
    B_46R = Subject46_R.B;
    B_46L = Subject46_L.B;
    E_46R = Subject46_R.E;
    E_46L = Subject46_L.E;
    I_46R = Subject46_R.I;
    I_46L = Subject46_L.I;
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
    B_47R = Subject47_R.B;
    B_47L = Subject47_L.B;
    E_47R = Subject47_R.E;
    E_47L = Subject47_L.E;
    I_47R = Subject47_R.I;
    I_47L = Subject47_L.I;
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
    B_48R = Subject48_R.B;
    B_48L = Subject48_L.B;
    E_48R = Subject48_R.E;
    E_48L = Subject48_L.E;
    I_48R = Subject48_R.I;
    I_48L = Subject48_L.I;
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
    B_49R = Subject49_R.B;
    B_49L = Subject49_L.B;
    E_49R = Subject49_R.E;
    E_49L = Subject49_L.E;
    I_49R = Subject49_R.I;
    I_49L = Subject49_L.I;
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
    B_50R = Subject50_R.B;
    B_50L = Subject50_L.B;
    E_50R = Subject50_R.E;
    E_50L = Subject50_L.E;
    I_50R = Subject50_R.I;
    I_50L = Subject50_L.I;
end

if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
    B_51R = Subject51_R.B;
    B_51L = Subject51_L.B;
    E_51R = Subject51_R.E;
    E_51L = Subject51_L.E;
    I_51R = Subject51_R.I;
    I_51L = Subject51_L.I;
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
    B_52R = Subject52_R.B;
    B_52L = Subject52_L.B;
    E_52R = Subject52_R.E;
    E_52L = Subject52_L.E;
    I_52R = Subject52_R.I;
    I_52L = Subject52_L.I;
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
    B_53R = Subject53_R.B;
    B_53L = Subject53_L.B;
    E_53R = Subject53_R.E;
    E_53L = Subject53_L.E;
    I_53R = Subject53_R.I;
    I_53L = Subject53_L.I;
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
    B_54R = Subject54_R.B;
    B_54L = Subject54_L.B;
    E_54R = Subject54_R.E;
    E_54L = Subject54_L.E;
    I_54R = Subject54_R.I;
    I_54L = Subject54_L.I;
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    B_55R = Subject55_R.B;
    B_55L = Subject55_L.B;
    E_55R = Subject55_R.E;
    E_55L = Subject55_L.E;
    I_55R = Subject55_R.I;
    I_55L = Subject55_L.I;
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
    B_56R = Subject56_R.B;
    B_56L = Subject56_L.B;
    E_56R = Subject56_R.E;
    E_56L = Subject56_L.E;
    I_56R = Subject56_R.I;
    I_56L = Subject56_L.I;
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
    B_57R = Subject57_R.B;
    B_57L = Subject57_L.B;
    E_57R = Subject57_R.E;
    E_57L = Subject57_L.E;
    I_57R = Subject57_R.I;
    I_57L = Subject57_L.I;
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
    B_58R = Subject58_R.B;
    B_58L = Subject58_L.B;
    E_58R = Subject58_R.E;
    E_58L = Subject58_L.E;
    I_58R = Subject58_R.I;
    I_58L = Subject58_L.I;
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
    B_59R = Subject59_R.B;
    B_59L = Subject59_L.B;
    E_59R = Subject59_R.E;
    E_59L = Subject59_L.E;
    I_59R = Subject59_R.I;
    I_59L = Subject59_L.I;
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
    B_60R = Subject60_R.B;
    B_60L = Subject60_L.B;
    E_60R = Subject60_R.E;
    E_60L = Subject60_L.E;
    I_60R = Subject60_R.I;
    I_60L = Subject60_L.I;
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
    B_61R = Subject61_R.B;
    B_61L = Subject61_L.B;
    E_61R = Subject61_R.E;
    E_61L = Subject61_L.E;
    I_61R = Subject61_R.I;
    I_61L = Subject61_L.I;
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
    B_62R = Subject62_R.B;
    B_62L = Subject62_L.B;
    E_62R = Subject62_R.E;
    E_62L = Subject62_L.E;
    I_62R = Subject62_R.I;
    I_62L = Subject62_L.I;
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
    B_63R = Subject63_R.B;
    B_63L = Subject63_L.B;
    E_63R = Subject63_R.E;
    E_63L = Subject63_L.E;
    I_63R = Subject63_R.I;
    I_63L = Subject63_L.I;
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
    B_64R = Subject64_R.B;
    B_64L = Subject64_L.B;
    E_64R = Subject64_R.E;
    E_64L = Subject64_L.E;
    I_64R = Subject64_R.I;
    I_64L = Subject64_L.I;
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
    B_65R = Subject65_R.B;
    B_65L = Subject65_L.B;
    E_65R = Subject65_R.E;
    E_65L = Subject65_L.E;
    I_65R = Subject65_R.I;
    I_65L = Subject65_L.I;
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
    B_66R = Subject66_R.B;
    B_66L = Subject66_L.B;
    E_66R = Subject66_R.E;
    E_66L = Subject66_L.E;
    I_66R = Subject66_R.I;
    I_66L = Subject66_L.I;
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
    B_67R = Subject67_R.B;
    B_67L = Subject67_L.B;
    E_67R = Subject67_R.E;
    E_67L = Subject67_L.E;
    I_67R = Subject67_R.I;
    I_67L = Subject67_L.I;
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
    B_68R = Subject68_R.B;
    B_68L = Subject68_L.B;
    E_68R = Subject68_R.E;
    E_68L = Subject68_L.E;
    I_68R = Subject68_R.I;
    I_68L = Subject68_L.I;
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
    B_69R = Subject69_R.B;
    B_69L = Subject69_L.B;
    E_69R = Subject69_R.E;
    E_69L = Subject69_L.E;
    I_69R = Subject69_R.I;
    I_69L = Subject69_L.I;
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
    B_70R = Subject70_R.B;
    B_70L = Subject70_L.B;
    E_70R = Subject70_R.E;
    E_70L = Subject70_L.E;
    I_70R = Subject70_R.I;
    I_70L = Subject70_L.I;
end

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
    B_71R = Subject71_R.B;
    B_71L = Subject71_L.B;
    E_71R = Subject71_R.E;
    E_71L = Subject71_L.E;
    I_71R = Subject71_R.I;
    I_71L = Subject71_L.I;
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
    B_72R = Subject72_R.B;
    B_72L = Subject72_L.B;
    E_72R = Subject72_R.E;
    E_72L = Subject72_L.E;
    I_72R = Subject72_R.I;
    I_72L = Subject72_L.I;
end


time = 30000;%same time in session (14400 sec = 4 hours)        
%ETOH1 - Right*****
ETOH1R_subjects = {B_1R,B_2R,B_3R,B_21R,B_23R,B_24R,B_26R,B_28R,B_33R,B_35R,B_37R,B_40R,B_45R,B_47R,B_50R,B_53R,B_56R,B_66R,B_68R,B_69R,B_72R};%puts all subject's (within the group) lever press data into a structure
n_ETOH1R = length(ETOH1R_subjects);%number of subjects in group (ETOH_1R)
ETOH1R_zeros = zeros(n_ETOH1R,time);%creates empty zeros array (using n and time---nx14400 matrix)
for j = 1:length(ETOH1R_subjects)%for as many subjects are in this group (n iterations)...
    for k = 1:(1+length(nonzeros(ETOH1R_subjects{j})))%for as many lever presses per given subject (loop goes in order satrting with subject 1 then 2,3,21,23,24)
        round1 = round(ETOH1R_subjects{j});%rounds time stamp to nearest second
        roundB(k) = round1(k);%renames rounded time stamps as variable roundB (B for lever presses)
    if k == 1
        continue %below section of code goes through each row of the nx14400 matrix and puts a 1 if there is a lever press in that second or 0 if there isnt (also adds if there are more than one lever press in that second i.e. 2,3,4 instead of 1)
    elseif ETOH1R_zeros((j),roundB(k)) == 0
        ETOH1R_zeros((j),roundB(k)) = true;
    else ETOH1R_zeros((j),roundB(k)) ~= 0; 
        ETOH1R_zeros((j),roundB(k)) = ETOH1R_zeros((j),roundB(k))+1;
    end
    end
end

%after code fills in 1 for every lever press and 0 for no lever press in
%the entire nx14400 matrix, function 'sum' adds up each *column
%(essentially summing the lever presses each second for each subject within the group). 
%This results in a 1x14400 array that is then divided by n to get the group
%average lever press for each second. Finally the function 'cumsum' takes
%the cumulative sum of the 1x14400 array leaving the cumulative lever
%presses defined by the variable LP_ETOH1R (LP for lever press, ETOH1 is
%the group, and R/L is right or left)

LP_ETOH1R = (cumsum(sum(ETOH1R_zeros)./n_ETOH1R))';

%%%%Code is repeated for other groups with only the subjects and n changing

% ETOH1 - Left*****
ETOH1L_subjects = {B_1L,B_2L,B_3L,B_21L,B_23L,B_24L,B_26L,B_28L,B_33L,B_35L,B_37L,B_40L,B_45L,B_47L,B_50L,B_53L,B_56L,B_66L,B_68L,B_69L,B_72L}; 
n_ETOH1L = length(ETOH1L_subjects);
ETOH1L_zeros = zeros(n_ETOH1L,time);
for j = 1:length(ETOH1L_subjects)
    for k = 1:(1+length(nonzeros(ETOH1L_subjects{j})))
        round1 = round(ETOH1L_subjects{j});
        roundB(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH1L_zeros((j),roundB(k)) == 0
        ETOH1L_zeros((j),roundB(k)) = true;
    else ETOH1L_zeros((j),roundB(k)) ~= 0; 
        ETOH1L_zeros((j),roundB(k)) = ETOH1L_zeros((j),roundB(k))+1;
    end
    end
end

LP_ETOH1L = (cumsum(sum(ETOH1L_zeros)./n_ETOH1L))';

% ETOH4 - Right*****
ETOH4R_subjects = {B_5R,B_6R,B_7R,B_8R,B_17R,B_18R,B_20R,B_25R,B_27R,B_34R,B_36R,B_38R,B_39R,B_46R,B_48R,B_54R,B_55R,B_65R,B_67R,B_70R,B_71R};  
n_ETOH4R = length(ETOH4R_subjects);
ETOH4R_zeros = zeros(n_ETOH4R,time);
for j = 1:length(ETOH4R_subjects)
    for k = 1:(1+length(nonzeros(ETOH4R_subjects{j})))
        round1 = round(ETOH4R_subjects{j});
        roundB(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH4R_zeros((j),roundB(k)) == 0
        ETOH4R_zeros((j),roundB(k)) = true;
    else ETOH4R_zeros((j),roundB(k)) ~= 0; 
        ETOH4R_zeros((j),roundB(k)) = ETOH4R_zeros((j),roundB(k))+1;
    end
    end
end

LP_ETOH4R = (cumsum(sum(ETOH4R_zeros)./n_ETOH4R))';

% ETOH4 - Left*****
ETOH4L_subjects = {B_5L,B_6L,B_7L,B_8L,B_17L,B_18L,B_20L,B_25L,B_27L,B_34L,B_36L,B_38L,B_39L,B_46L,B_48L,B_54L,B_55L,B_65L,B_67L,B_70L,B_71L}; 
n_ETOH4L = length(ETOH4L_subjects);
ETOH4L_zeros = zeros(n_ETOH4L,time);
for j = 1:length(ETOH4L_subjects)
    for k = 1:(1+length(nonzeros(ETOH4L_subjects{j})))
        round1 = round(ETOH4L_subjects{j});
        roundB(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH4L_zeros((j),roundB(k)) == 0
        ETOH4L_zeros((j),roundB(k)) = true;
    else ETOH4L_zeros((j),roundB(k)) ~= 0; 
        ETOH4L_zeros((j),roundB(k)) = ETOH4L_zeros((j),roundB(k))+1;
    end
    end
end

LP_ETOH4L = (cumsum(sum(ETOH4L_zeros)./n_ETOH4L))';

% SAL - Right*****
SALR_subjects = {B_9R,B_11R,B_12R,B_13R,B_14R,B_15R,B_16R,B_29R,B_30R,B_31R,B_32R,B_41R,B_42R,B_43R,B_44R,B_57R,B_58R,B_59R,B_60R,B_61R,B_62R,B_64R};%B_63R has no data  
n_SALR = length(SALR_subjects);
SALR_zeros = zeros(n_SALR,time);
for j = 1:length(SALR_subjects)
    for k = 1:(1+length(nonzeros(SALR_subjects{j})))
        round1 = round(SALR_subjects{j});
        roundB(k) = round1(k);
    if k == 1
        continue 
    elseif SALR_zeros((j),roundB(k)) == 0
        SALR_zeros((j),roundB(k)) = true;
    else SALR_zeros((j),roundB(k)) ~= 0; 
        SALR_zeros((j),roundB(k)) = SALR_zeros((j),roundB(k))+1;
    end
    end
end

LP_SALR = (cumsum(sum(SALR_zeros)./n_SALR))';

% SAL - Left*****
SALL_subjects = {B_9L,B_11L,B_12L,B_13L,B_14L,B_15L,B_16L,B_29L,B_30L,B_31L,B_32L,B_41L,B_42L,B_43L,B_44L,B_57L,B_58L,B_59L,B_60L,B_61L,B_62L,B_64L};% B_63L has no data
n_SALL = length(SALL_subjects);
SALL_zeros = zeros(n_SALL,time);
for j = 1:length(SALL_subjects)
    for k = 1:(1+length(nonzeros(SALL_subjects{j})))
        round1 = round(SALL_subjects{j});
        roundB(k) = round1(k);
    if k == 1
        continue 
    elseif SALL_zeros((j),roundB(k)) == 0
        SALL_zeros((j),roundB(k)) = true;
    else SALL_zeros((j),roundB(k)) ~= 0; 
        SALL_zeros((j),roundB(k)) = SALL_zeros((j),roundB(k))+1;
    end
    end
end

LP_SALL = (cumsum(sum(SALL_zeros)./n_SALL))';

%% 5.) Cumulative Reinforcers

%%%%Re-extract MEDPC varibles to accuratley calculate cumulative reinforcers 

if isempty(Subject1_R) == 0 && isempty(Subject1_L) == 0
    B_1R = Subject1_R.B;
    B_1L = Subject1_L.B;
    E_1R = Subject1_R.E;
    E_1L = Subject1_L.E;
    I_1R = Subject1_R.I;
    I_1L = Subject1_L.I;
end

if isempty(Subject2_R) == 0 && isempty(Subject2_L) == 0
    B_2R = Subject2_R.B;
    B_2L = Subject2_L.B;
    E_2R = Subject2_R.E;
    E_2L = Subject2_L.E;
    I_2R = Subject2_R.I;
    I_2L = Subject2_L.I;
end

if isempty(Subject3_R) == 0 && isempty(Subject3_L) == 0
    B_3R = Subject3_R.B;
    B_3L = Subject3_L.B;
    E_3R = Subject3_R.E;
    E_3L = Subject3_L.E;
    I_3R = Subject3_R.I;
    I_3L = Subject3_L.I;
end

if isempty(Subject4_R) == 0 && isempty(Subject4_L) == 0
    B_4R = Subject4_R.B;
    B_4L = Subject4_L.B;
    E_4R = Subject4_R.E;
    E_4L = Subject4_L.E;
    I_4R = Subject4_R.I;
    I_4L = Subject4_L.I;
end

if isempty(Subject5_R) == 0 && isempty(Subject5_L) == 0
    B_5R = Subject5_R.B;
    B_5L = Subject5_L.B;
    E_5R = Subject5_R.E;
    E_5L = Subject5_L.E;
    I_5R = Subject5_R.I;
    I_5L = Subject5_L.I;
end

if isempty(Subject6_R) == 0 && isempty(Subject6_L) == 0
    B_6R = Subject6_R.B;
    B_6L = Subject6_L.B;
    E_6R = Subject6_R.E;
    E_6L = Subject6_L.E;
    I_6R = Subject6_R.I;
    I_6L = Subject6_L.I;
end

if isempty(Subject7_R) == 0 && isempty(Subject7_L) == 0
    B_7R = Subject7_R.B;
    B_7L = Subject7_L.B;
    E_7R = Subject7_R.E;
    E_7L = Subject7_L.E;
    I_7R = Subject7_R.I;
    I_7L = Subject7_L.I;
end

if isempty(Subject8_R) == 0 && isempty(Subject8_L) == 0
    B_8R = Subject8_R.B;
    B_8L = Subject8_L.B;
    E_8R = Subject8_R.E;
    E_8L = Subject8_L.E;
    I_8R = Subject8_R.I;
    I_8L = Subject8_L.I;
end

if isempty(Subject9_R) == 0 && isempty(Subject9_L) == 0
    B_9R = Subject9_R.B;
    B_9L = Subject9_L.B;
    E_9R = Subject9_R.E;
    E_9L = Subject9_L.E;
    I_9R = Subject9_R.I;
    I_9L = Subject9_L.I;
end

if isempty(Subject10_R) == 0 && isempty(Subject10_L) == 0
    B_10R = Subject10_R.B;
    B_10L = Subject10_L.B;
    E_10R = Subject10_R.E;
    E_10L = Subject10_L.E;
    I_10R = Subject10_R.I;
    I_10L = Subject10_L.I;
end

if isempty(Subject11_R) == 0 && isempty(Subject11_L) == 0
    B_11R = Subject11_R.B;
    B_11L = Subject11_L.B;
    E_11R = Subject11_R.E;
    E_11L = Subject11_L.E;
    I_11R = Subject11_R.I;
    I_11L = Subject11_L.I;
end

if isempty(Subject12_R) == 0 && isempty(Subject12_L) == 0
    B_12R = Subject12_R.B;
    B_12L = Subject12_L.B;
    E_12R = Subject12_R.E;
    E_12L = Subject12_L.E;
    I_12R = Subject12_R.I;
    I_12L = Subject12_L.I;
end

if isempty(Subject13_R) == 0 && isempty(Subject13_L) == 0
    B_13R = Subject13_R.B;
    B_13L = Subject13_L.B;
    E_13R = Subject13_R.E;
    E_13L = Subject13_L.E;
    I_13R = Subject13_R.I;
    I_13L = Subject13_L.I;
end

if isempty(Subject14_R) == 0 && isempty(Subject14_L) == 0
    B_14R = Subject14_R.B;
    B_14L = Subject14_L.B;
    E_14R = Subject14_R.E;
    E_14L = Subject14_L.E;
    I_14R = Subject14_R.I;
    I_14L = Subject14_L.I;
end

if isempty(Subject15_R) == 0 && isempty(Subject15_L) == 0
    B_15R = Subject15_R.B;
    B_15L = Subject15_L.B;
    E_15R = Subject15_R.E;
    E_15L = Subject15_L.E;
    I_15R = Subject15_R.I;
    I_15L = Subject15_L.I;
end

if isempty(Subject16_R) == 0 && isempty(Subject16_L) == 0
    B_16R = Subject16_R.B;
    B_16L = Subject16_L.B;
    E_16R = Subject16_R.E;
    E_16L = Subject16_L.E;
    I_16R = Subject16_R.I;
    I_16L = Subject16_L.I;
end

if isempty(Subject17_R) == 0 && isempty(Subject17_L) == 0
    B_17R = Subject17_R.B;
    B_17L = Subject17_L.B;
    E_17R = Subject17_R.E;
    E_17L = Subject17_L.E;
    I_17R = Subject17_R.I;
    I_17L = Subject17_L.I;
end

if isempty(Subject18_R) == 0 && isempty(Subject18_L) == 0
    B_18R = Subject18_R.B;
    B_18L = Subject18_L.B;
    E_18R = Subject18_R.E;
    E_18L = Subject18_L.E;
    I_18R = Subject18_R.I;
    I_18L = Subject18_L.I;
end

if isempty(Subject19_R) == 0 && isempty(Subject19_L) == 0
    B_19R = Subject19_R.B;
    B_19L = Subject19_L.B;
    E_19R = Subject19_R.E;
    E_19L = Subject19_L.E;
    I_19R = Subject19_R.I;
    I_19L = Subject19_L.I;
end

if isempty(Subject20_R) == 0 && isempty(Subject20_L) == 0
    B_20R = Subject20_R.B;
    B_20L = Subject20_L.B;
    E_20R = Subject20_R.E;
    E_20L = Subject20_L.E;
    I_20R = Subject20_R.I;
    I_20L = Subject20_L.I;
end

if isempty(Subject21_R) == 0 && isempty(Subject21_L) == 0
    B_21R = Subject21_R.B;
    B_21L = Subject21_L.B;
    E_21R = Subject21_R.E;
    E_21L = Subject21_L.E;
    I_21R = Subject21_R.I;
    I_21L = Subject21_L.I;
end

if isempty(Subject22_R) == 0 && isempty(Subject22_L) == 0
    B_22R = Subject22_R.B;
    B_22L = Subject22_L.B;
    E_22R = Subject22_R.E;
    E_22L = Subject22_L.E;
    I_22R = Subject22_R.I;
    I_22L = Subject22_L.I;
end

if isempty(Subject23_R) == 0 && isempty(Subject23_L) == 0
    B_23R = Subject23_R.B;
    B_23L = Subject23_L.B;
    E_23R = Subject23_R.E;
    E_23L = Subject23_L.E;
    I_23R = Subject23_R.I;
    I_23L = Subject23_L.I;
end

if isempty(Subject24_R) == 0 && isempty(Subject24_L) == 0
    B_24R = Subject24_R.B;
    B_24L = Subject24_L.B;
    E_24R = Subject24_R.E;
    E_24L = Subject24_L.E;
    I_24R = Subject24_R.I;
    I_24L = Subject24_L.I;
end

if isempty(Subject25_R) == 0 && isempty(Subject25_L) == 0
    B_25R = Subject25_R.B;
    B_25L = Subject25_L.B;
    E_25R = Subject25_R.E;
    E_25L = Subject25_L.E;
    I_25R = Subject25_R.I;
    I_25L = Subject25_L.I;
end

if isempty(Subject26_R) == 0 && isempty(Subject26_L) == 0
    B_26R = Subject26_R.B;
    B_26L = Subject26_L.B;
    E_26R = Subject26_R.E;
    E_26L = Subject26_L.E;
    I_26R = Subject26_R.I;
    I_26L = Subject26_L.I;
end

if isempty(Subject27_R) == 0 && isempty(Subject27_L) == 0
    B_27R = Subject27_R.B;
    B_27L = Subject27_L.B;
    E_27R = Subject27_R.E;
    E_27L = Subject27_L.E;
    I_27R = Subject27_R.I;
    I_27L = Subject27_L.I;
end

if isempty(Subject28_R) == 0 && isempty(Subject28_L) == 0
    B_28R = Subject28_R.B;
    B_28L = Subject28_L.B;
    E_28R = Subject28_R.E;
    E_28L = Subject28_L.E;
    I_28R = Subject28_R.I;
    I_28L = Subject28_L.I;
end

if isempty(Subject29_R) == 0 && isempty(Subject29_L) == 0
    B_29R = Subject29_R.B;
    B_29L = Subject29_L.B;
    E_29R = Subject29_R.E;
    E_29L = Subject29_L.E;
    I_29R = Subject29_R.I;
    I_29L = Subject29_L.I;
end

if isempty(Subject30_R) == 0 && isempty(Subject30_L) == 0
    B_30R = Subject30_R.B;
    B_30L = Subject30_L.B;
    E_30R = Subject30_R.E;
    E_30L = Subject30_L.E;
    I_30R = Subject30_R.I;
    I_30L = Subject30_L.I;
end

if isempty(Subject31_R) == 0 && isempty(Subject31_L) == 0
    B_31R = Subject31_R.B;
    B_31L = Subject31_L.B;
    E_31R = Subject31_R.E;
    E_31L = Subject31_L.E;
    I_31R = Subject31_R.I;
    I_31L = Subject31_L.I;
end

if isempty(Subject32_R) == 0 && isempty(Subject32_L) == 0
    B_32R = Subject32_R.B;
    B_32L = Subject32_L.B;
    E_32R = Subject32_R.E;
    E_32L = Subject32_L.E;
    I_32R = Subject32_R.I;
    I_32L = Subject32_L.I;
end

if isempty(Subject33_R) == 0 && isempty(Subject33_L) == 0
    B_33R = Subject33_R.B;
    B_33L = Subject33_L.B;
    E_33R = Subject33_R.E;
    E_33L = Subject33_L.E;
    I_33R = Subject33_R.I;
    I_33L = Subject33_L.I;
end

if isempty(Subject34_R) == 0 && isempty(Subject34_L) == 0
    B_34R = Subject34_R.B;
    B_34L = Subject34_L.B;
    E_34R = Subject34_R.E;
    E_34L = Subject34_L.E;
    I_34R = Subject34_R.I;
    I_34L = Subject34_L.I;
end

if isempty(Subject35_R) == 0 && isempty(Subject35_L) == 0
    B_35R = Subject35_R.B;
    B_35L = Subject35_L.B;
    E_35R = Subject35_R.E;
    E_35L = Subject35_L.E;
    I_35R = Subject35_R.I;
    I_35L = Subject35_L.I;
end

if isempty(Subject36_R) == 0 && isempty(Subject36_L) == 0
    B_36R = Subject36_R.B;
    B_36L = Subject36_L.B;
    E_36R = Subject36_R.E;
    E_36L = Subject36_L.E;
    I_36R = Subject36_R.I;
    I_36L = Subject36_L.I;
end

if isempty(Subject37_R) == 0 && isempty(Subject37_L) == 0
    B_37R = Subject37_R.B;
    B_37L = Subject37_L.B;
    E_37R = Subject37_R.E;
    E_37L = Subject37_L.E;
    I_37R = Subject37_R.I;
    I_37L = Subject37_L.I;
end

if isempty(Subject38_R) == 0 && isempty(Subject38_L) == 0
    B_38R = Subject38_R.B;
    B_38L = Subject38_L.B;
    E_38R = Subject38_R.E;
    E_38L = Subject38_L.E;
    I_38R = Subject38_R.I;
    I_38L = Subject38_L.I;
end

if isempty(Subject39_R) == 0 && isempty(Subject39_L) == 0
    B_39R = Subject39_R.B;
    B_39L = Subject39_L.B;
    E_39R = Subject39_R.E;
    E_39L = Subject39_L.E;
    I_39R = Subject39_R.I;
    I_39L = Subject39_L.I;
end

if isempty(Subject40_R) == 0 && isempty(Subject40_L) == 0
    B_40R = Subject40_R.B;
    B_40L = Subject40_L.B;
    E_40R = Subject40_R.E;
    E_40L = Subject40_L.E;
    I_40R = Subject40_R.I;
    I_40L = Subject40_L.I;
end

if isempty(Subject41_R) == 0 && isempty(Subject41_L) == 0
    B_41R = Subject41_R.B;
    B_41L = Subject41_L.B;
    E_41R = Subject41_R.E;
    E_41L = Subject41_L.E;
    I_41R = Subject41_R.I;
    I_41L = Subject41_L.I;
end

if isempty(Subject42_R) == 0 && isempty(Subject42_L) == 0
    B_42R = Subject42_R.B;
    B_42L = Subject42_L.B;
    E_42R = Subject42_R.E;
    E_42L = Subject42_L.E;
    I_42R = Subject42_R.I;
    I_42L = Subject42_L.I;
end

if isempty(Subject43_R) == 0 && isempty(Subject43_L) == 0
    B_43R = Subject43_R.B;
    B_43L = Subject43_L.B;
    E_43R = Subject43_R.E;
    E_43L = Subject43_L.E;
    I_43R = Subject43_R.I;
    I_43L = Subject43_L.I;
end

if isempty(Subject44_R) == 0 && isempty(Subject44_L) == 0
    B_44R = Subject44_R.B;
    B_44L = Subject44_L.B;
    E_44R = Subject44_R.E;
    E_44L = Subject44_L.E;
    I_44R = Subject44_R.I;
    I_44L = Subject44_L.I;
end

if isempty(Subject45_R) == 0 && isempty(Subject45_L) == 0
    B_45R = Subject45_R.B;
    B_45L = Subject45_L.B;
    E_45R = Subject45_R.E;
    E_45L = Subject45_L.E;
    I_45R = Subject45_R.I;
    I_45L = Subject45_L.I;
end

if isempty(Subject46_R) == 0 && isempty(Subject46_L) == 0
    B_46R = Subject46_R.B;
    B_46L = Subject46_L.B;
    E_46R = Subject46_R.E;
    E_46L = Subject46_L.E;
    I_46R = Subject46_R.I;
    I_46L = Subject46_L.I;
end

if isempty(Subject47_R) == 0 && isempty(Subject47_L) == 0
    B_47R = Subject47_R.B;
    B_47L = Subject47_L.B;
    E_47R = Subject47_R.E;
    E_47L = Subject47_L.E;
    I_47R = Subject47_R.I;
    I_47L = Subject47_L.I;
end

if isempty(Subject48_R) == 0 && isempty(Subject48_L) == 0
    B_48R = Subject48_R.B;
    B_48L = Subject48_L.B;
    E_48R = Subject48_R.E;
    E_48L = Subject48_L.E;
    I_48R = Subject48_R.I;
    I_48L = Subject48_L.I;
end

if isempty(Subject49_R) == 0 && isempty(Subject49_L) == 0
    B_49R = Subject49_R.B;
    B_49L = Subject49_L.B;
    E_49R = Subject49_R.E;
    E_49L = Subject49_L.E;
    I_49R = Subject49_R.I;
    I_49L = Subject49_L.I;
end

if isempty(Subject50_R) == 0 && isempty(Subject50_L) == 0
    B_50R = Subject50_R.B;
    B_50L = Subject50_L.B;
    E_50R = Subject50_R.E;
    E_50L = Subject50_L.E;
    I_50R = Subject50_R.I;
    I_50L = Subject50_L.I;
end

if isempty(Subject51_R) == 0 && isempty(Subject51_L) == 0
    B_51R = Subject51_R.B;
    B_51L = Subject51_L.B;
    E_51R = Subject51_R.E;
    E_51L = Subject51_L.E;
    I_51R = Subject51_R.I;
    I_51L = Subject51_L.I;
end

if isempty(Subject52_R) == 0 && isempty(Subject52_L) == 0
    B_52R = Subject52_R.B;
    B_52L = Subject52_L.B;
    E_52R = Subject52_R.E;
    E_52L = Subject52_L.E;
    I_52R = Subject52_R.I;
    I_52L = Subject52_L.I;
end

if isempty(Subject53_R) == 0 && isempty(Subject53_L) == 0
    B_53R = Subject53_R.B;
    B_53L = Subject53_L.B;
    E_53R = Subject53_R.E;
    E_53L = Subject53_L.E;
    I_53R = Subject53_R.I;
    I_53L = Subject53_L.I;
end

if isempty(Subject54_R) == 0 && isempty(Subject54_L) == 0
    B_54R = Subject54_R.B;
    B_54L = Subject54_L.B;
    E_54R = Subject54_R.E;
    E_54L = Subject54_L.E;
    I_54R = Subject54_R.I;
    I_54L = Subject54_L.I;
end

if isempty(Subject55_R) == 0 && isempty(Subject55_L) == 0
    B_55R = Subject55_R.B;
    B_55L = Subject55_L.B;
    E_55R = Subject55_R.E;
    E_55L = Subject55_L.E;
    I_55R = Subject55_R.I;
    I_55L = Subject55_L.I;
end

if isempty(Subject56_R) == 0 && isempty(Subject56_L) == 0
    B_56R = Subject56_R.B;
    B_56L = Subject56_L.B;
    E_56R = Subject56_R.E;
    E_56L = Subject56_L.E;
    I_56R = Subject56_R.I;
    I_56L = Subject56_L.I;
end

if isempty(Subject57_R) == 0 && isempty(Subject57_L) == 0
    B_57R = Subject57_R.B;
    B_57L = Subject57_L.B;
    E_57R = Subject57_R.E;
    E_57L = Subject57_L.E;
    I_57R = Subject57_R.I;
    I_57L = Subject57_L.I;
end

if isempty(Subject58_R) == 0 && isempty(Subject58_L) == 0
    B_58R = Subject58_R.B;
    B_58L = Subject58_L.B;
    E_58R = Subject58_R.E;
    E_58L = Subject58_L.E;
    I_58R = Subject58_R.I;
    I_58L = Subject58_L.I;
end

if isempty(Subject59_R) == 0 && isempty(Subject59_L) == 0
    B_59R = Subject59_R.B;
    B_59L = Subject59_L.B;
    E_59R = Subject59_R.E;
    E_59L = Subject59_L.E;
    I_59R = Subject59_R.I;
    I_59L = Subject59_L.I;
end

if isempty(Subject60_R) == 0 && isempty(Subject60_L) == 0
    B_60R = Subject60_R.B;
    B_60L = Subject60_L.B;
    E_60R = Subject60_R.E;
    E_60L = Subject60_L.E;
    I_60R = Subject60_R.I;
    I_60L = Subject60_L.I;
end

if isempty(Subject61_R) == 0 && isempty(Subject61_L) == 0
    B_61R = Subject61_R.B;
    B_61L = Subject61_L.B;
    E_61R = Subject61_R.E;
    E_61L = Subject61_L.E;
    I_61R = Subject61_R.I;
    I_61L = Subject61_L.I;
end

if isempty(Subject62_R) == 0 && isempty(Subject62_L) == 0
    B_62R = Subject62_R.B;
    B_62L = Subject62_L.B;
    E_62R = Subject62_R.E;
    E_62L = Subject62_L.E;
    I_62R = Subject62_R.I;
    I_62L = Subject62_L.I;
end

if isempty(Subject63_R) == 0 && isempty(Subject63_L) == 0
    B_63R = Subject63_R.B;
    B_63L = Subject63_L.B;
    E_63R = Subject63_R.E;
    E_63L = Subject63_L.E;
    I_63R = Subject63_R.I;
    I_63L = Subject63_L.I;
end

if isempty(Subject64_R) == 0 && isempty(Subject64_L) == 0
    B_64R = Subject64_R.B;
    B_64L = Subject64_L.B;
    E_64R = Subject64_R.E;
    E_64L = Subject64_L.E;
    I_64R = Subject64_R.I;
    I_64L = Subject64_L.I;
end

if isempty(Subject65_R) == 0 && isempty(Subject65_L) == 0
    B_65R = Subject65_R.B;
    B_65L = Subject65_L.B;
    E_65R = Subject65_R.E;
    E_65L = Subject65_L.E;
    I_65R = Subject65_R.I;
    I_65L = Subject65_L.I;
end

if isempty(Subject66_R) == 0 && isempty(Subject66_L) == 0
    B_66R = Subject66_R.B;
    B_66L = Subject66_L.B;
    E_66R = Subject66_R.E;
    E_66L = Subject66_L.E;
    I_66R = Subject66_R.I;
    I_66L = Subject66_L.I;
end

if isempty(Subject67_R) == 0 && isempty(Subject67_L) == 0
    B_67R = Subject67_R.B;
    B_67L = Subject67_L.B;
    E_67R = Subject67_R.E;
    E_67L = Subject67_L.E;
    I_67R = Subject67_R.I;
    I_67L = Subject67_L.I;
end

if isempty(Subject68_R) == 0 && isempty(Subject68_L) == 0
    B_68R = Subject68_R.B;
    B_68L = Subject68_L.B;
    E_68R = Subject68_R.E;
    E_68L = Subject68_L.E;
    I_68R = Subject68_R.I;
    I_68L = Subject68_L.I;
end

if isempty(Subject69_R) == 0 && isempty(Subject69_L) == 0
    B_69R = Subject69_R.B;
    B_69L = Subject69_L.B;
    E_69R = Subject69_R.E;
    E_69L = Subject69_L.E;
    I_69R = Subject69_R.I;
    I_69L = Subject69_L.I;
end

if isempty(Subject70_R) == 0 && isempty(Subject70_L) == 0
    B_70R = Subject70_R.B;
    B_70L = Subject70_L.B;
    E_70R = Subject70_R.E;
    E_70L = Subject70_L.E;
    I_70R = Subject70_R.I;
    I_70L = Subject70_L.I;
end

if isempty(Subject71_R) == 0 && isempty(Subject71_L) == 0
    B_71R = Subject71_R.B;
    B_71L = Subject71_L.B;
    E_71R = Subject71_R.E;
    E_71L = Subject71_L.E;
    I_71R = Subject71_R.I;
    I_71L = Subject71_L.I;
end

if isempty(Subject72_R) == 0 && isempty(Subject72_L) == 0
    B_72R = Subject72_R.B;
    B_72L = Subject72_L.B;
    E_72R = Subject72_R.E;
    E_72L = Subject72_L.E;
    I_72R = Subject72_R.I;
    I_72L = Subject72_L.I;
end


%%%%Code for cumulative reinforcers esentially the same as cumulative lever
%%%%presses, but with I (reinforcers) instead of B (lever presses)

% ETOH1 - Right*****
ETOH1R_subject = {I_1R,I_2R,I_3R,I_21R,I_23R,I_24R,I_26R,I_28R,I_33R,I_35R,I_37R,I_40R,I_45R,I_47R,I_50R,I_53R,I_56R,I_66R,I_68R,I_69R,I_72R};%puts all subject's (within the group)reinforcer lever press data into a structure 
n_ETOH1R = length(ETOH1R_subject);%number of subjects in group (ETOH_1R)
ETOH1R_zero = zeros(n_ETOH1R,time);%creates empty zeros array (using n and time---nx14400 matrix)
for j = 1:length(ETOH1R_subject)%for as many subjects are in this group (n iterations)...
    for k = 1:(1+length(nonzeros(ETOH1R_subject{j})))%for as many reinforcers per given subject (loop goes in order satrting with subject 1 then 2,3,21,23,24)
        round1 = round(ETOH1R_subject{j});%rounds time stamp to nearest second
        roundI(k) = round1(k);%renames rounded time stamps as variable roundI (I for reinforcers)
    if k == 1
        continue %below section of code goes through each row of the nx14400 matrix and puts a 1 if there is a reinforcer in that second or 0 if there isnt (also adds if there are more than one reinforcer in that second i.e. 2,3 instead of 1)
    elseif ETOH1R_zero((j),roundI(k)) == 0
        ETOH1R_zero((j),roundI(k)) = true;
    else ETOH1R_zero((j),roundI(k)) ~= 0; 
        ETOH1R_zero((j),roundI(k)) = ETOH1R_zero((j),roundI(k))+1;
    end
    end
end

%after code fills in 1 for every reinforcer and 0 for no reinforcer in
%the entire nx14400 matrix, function 'sum' adds up each *column
%(essentially summing the reinforers each second for each subject within the group). 
%This results in a 1x14400 array that is then divided by n to get the group
%average reinforcers for each second. Finally the function 'cumsum' takes
%the cumulative sum of the 1x14400 array leaving the cumulative reinforcers
%defined by the variable RT_ETOH1R (RT for reinforcer time, ETOH1 is the group, 
%and R/L is right or left) 

RT_ETOH1R = (cumsum(sum(ETOH1R_zero)./n_ETOH1R))';

%%%%Code is repeated for other groups with only the subjects and n changing

% ETOH1 - Left*****
ETOH1L_subject = {I_1L,I_2L,I_3L,I_21L,I_23L,I_24L,I_26L,I_28L,I_33L,I_35L,I_37L,I_40L,I_45L,I_47L,I_50L,I_53L,I_56L,I_66L,I_68L,I_69L,I_72L};
n_ETOH1L = length(ETOH1L_subject);
ETOH1L_zero = zeros(n_ETOH1L,time);
for j = 1:length(ETOH1L_subject)
    for k = 1:(1+length(nonzeros(ETOH1L_subject{j})))
        round1 = round(ETOH1L_subject{j});
        roundI(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH1L_zero((j),roundI(k)) == 0
        ETOH1L_zero((j),roundI(k)) = true;
    else ETOH1L_zero((j),roundI(k)) ~= 0; 
        ETOH1L_zero((j),roundI(k)) = ETOH1L_zero((j),roundI(k))+1;
    end
    end
end

RT_ETOH1L = (cumsum(sum(ETOH1L_zero)./n_ETOH1L))';

% ETOH4 - Right*****
ETOH4R_subject = {I_5R,I_6R,I_7R,I_8R,I_17R,I_18R,I_20R,I_25R,I_27R,I_34R,I_36R,I_38R,I_39R,I_46R,I_48R,I_54R,I_55R,I_65R,I_67R,I_70R,I_71R};   
n_ETOH4R = length(ETOH4R_subject);
ETOH4R_zero = zeros(n_ETOH4R,time);
for j = 1:length(ETOH4R_subject)
    for k = 1:(1+length(nonzeros(ETOH4R_subject{j})))
        round1 = round(ETOH4R_subject{j});
        roundI(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH4R_zero((j),roundI(k)) == 0
        ETOH4R_zero((j),roundI(k)) = true;
    else ETOH4R_zero((j),roundI(k)) ~= 0; 
        ETOH4R_zero((j),roundI(k)) = ETOH4R_zero((j),roundI(k))+1;
    end
    end
end

RT_ETOH4R = (cumsum(sum(ETOH4R_zero)./n_ETOH4R))';

% ETOH4 - Left*****
ETOH4L_subject = {I_5L,I_6L,I_7L,I_8L,I_17L,I_18L,I_20L,I_25L,I_27L,I_34L,I_36L,I_38L,I_39L,I_46L,I_48L,I_54L,I_55L,I_65L,I_67L,I_70L,I_71L};   
n_ETOH4L = length(ETOH4L_subject);
ETOH4L_zero = zeros(n_ETOH4L,time);
for j = 1:length(ETOH4L_subject)
    for k = 1:(1+length(nonzeros(ETOH4L_subject{j})))
        round1 = round(ETOH4L_subject{j});
        roundI(k) = round1(k);
    if k == 1
        continue 
    elseif ETOH4L_zero((j),roundI(k)) == 0
        ETOH4L_zero((j),roundI(k)) = true;
    else ETOH4L_zero((j),roundI(k)) ~= 0; 
        ETOH4L_zero((j),roundI(k)) = ETOH4L_zero((j),roundI(k))+1;
    end
    end
end

RT_ETOH4L = (cumsum(sum(ETOH4L_zero)./n_ETOH4L))';

% SAL - Right*****
SALR_subject = {I_9R,I_11R,I_12R,I_13R,I_14R,I_15R,I_16R,I_29R,I_30R,I_31R,I_32R,I_41R,I_42R,I_43R,I_44R,I_57R,I_58R,I_59R,I_60R,I_61R,I_62R,I_64R};%I_63R has no data
n_SALR = length(SALR_subject);
SALR_zero = zeros(n_SALR,time);
for j = 1:length(SALR_subject)
    for k = 1:(1+length(nonzeros(SALR_subject{j})))
        round1 = round(SALR_subject{j});
        roundI(k) = round1(k);
    if k == 1
        continue 
    elseif SALR_zero((j),roundI(k)) == 0
        SALR_zero((j),roundI(k)) = true;
    else SALR_zero((j),roundI(k)) ~= 0; 
        SALR_zero((j),roundI(k)) = SALR_zero((j),roundI(k))+1;
    end
    end
end

RT_SALR = (cumsum(sum(SALR_zero)./n_SALR))';

% SAL - Left*****
SALL_subject = {I_9L,I_11L,I_12L,I_13L,I_14L,I_15L,I_16L,I_29L,I_30L,I_31L,I_32L,I_41L,I_42L,I_43L,I_44L,I_57L,I_58L,I_59L,I_60L,I_61L,I_62L,I_64L};%I_63L has no data
n_SALL = length(SALL_subject);
SALL_zero = zeros(n_SALL,time);
for j = 1:length(SALL_subject)
    for k = 1:(1+length(nonzeros(SALL_subject{j})))
        round1 = round(SALL_subject{j});
        roundI(k) = round1(k);
    if k == 1
        continue 
    elseif SALL_zero((j),roundI(k)) == 0
        SALL_zero((j),roundI(k)) = true;
    else SALL_zero((j),roundI(k)) ~= 0; 
        SALL_zero((j),roundI(k)) = SALL_zero((j),roundI(k))+1;
    end
    end
end

RT_SALL = (cumsum(sum(SALL_zero)./n_SALL))';


% % Lever Press Error
ETOH1R_error = zeros(n_ETOH1R,time);
for i = 1:n_ETOH1R
    ETOH1R_error(i,:) = cumsum(ETOH1R_zeros(i,:));
end
ETOH1R_error = std(ETOH1R_error);
LP_ETOH1R_error = (ETOH1R_error./sqrt(n_ETOH1R))';

ETOH1L_error = zeros(n_ETOH1L,time);
for i = 1:n_ETOH1L
    ETOH1L_error(i,:) = cumsum(ETOH1L_zeros(i,:));
end
ETOH1L_error = std(ETOH1L_error);
LP_ETOH1L_error = (ETOH1L_error./sqrt(n_ETOH1L))';

ETOH4R_error = zeros(n_ETOH4R,time);
for i = 1:n_ETOH4R
    ETOH4R_error(i,:) = cumsum(ETOH4R_zeros(i,:));
end
ETOH4R_error = std(ETOH4R_error);
LP_ETOH4R_error = (ETOH4R_error./sqrt(n_ETOH4R))';

ETOH4L_error = zeros(n_ETOH4L,time);
for i = 1:n_ETOH4L
    ETOH4L_error(i,:) = cumsum(ETOH4L_zeros(i,:));
end
ETOH4L_error = std(ETOH4L_error);
LP_ETOH4L_error = (ETOH4L_error./sqrt(n_ETOH4L))';

SALR_error = zeros(n_SALR,time);
for i = 1:n_SALR
    SALR_error(i,:) = cumsum(SALR_zeros(i,:));
end
SALR_error = std(SALR_error);
LP_SALR_error = (SALR_error./sqrt(n_SALR))';

SALL_error = zeros(n_SALL,time);
for i = 1:7
    SALL_error(i,:) = cumsum(SALL_zeros(i,:));
end
SALL_error = std(SALL_error);
LP_SALL_error = (SALL_error./sqrt(n_SALL))';

% % Reinforcer Error
ETOH1R_error = zeros(n_ETOH1R,time);
for i = 1:n_ETOH1R
    ETOH1R_error(i,:) = cumsum(ETOH1R_zero(i,:));
end
ETOH1R_error = std(ETOH1R_error);
RT_ETOH1R_error = (ETOH1R_error./sqrt(n_ETOH1R))';

ETOH1L_error = zeros(n_ETOH1L,time);
for i = 1:n_ETOH1L
    ETOH1L_error(i,:) = cumsum(ETOH1L_zero(i,:));
end
ETOH1L_error = std(ETOH1L_error);
RT_ETOH1L_error = (ETOH1L_error./sqrt(n_ETOH1L))';

ETOH4R_error = zeros(n_ETOH4R,time);
for i = 1:n_ETOH4R
    ETOH4R_error(i,:) = cumsum(ETOH4R_zero(i,:));
end
ETOH4R_error = std(ETOH4R_error);
RT_ETOH4R_error = (ETOH4R_error./sqrt(n_ETOH4R))';

ETOH4L_error = zeros(n_ETOH4L,time);
for i = 1:n_ETOH4L
    ETOH4L_error(i,:) = cumsum(ETOH4L_zero(i,:));
end
ETOH4L_error = std(ETOH4L_error);
RT_ETOH4L_error = (ETOH4L_error./sqrt(n_ETOH4L))';

SALR_error = zeros(n_SALR,time);
for i = 1:n_SALR
    SALR_error(i,:) = cumsum(SALR_zero(i,:));
end
SALR_error = std(SALR_error);
RT_SALR_error = (SALR_error./sqrt(n_SALR))';

SALL_error = zeros(n_SALL,time);
for i = 1:n_SALL
    SALL_error(i,:) = cumsum(SALL_zero(i,:));
end
SALL_error = std(SALL_error);
RT_SALL_error = (SALL_error./sqrt(n_SALL))';

%PRP Group Averages*****:

%AVG.
PRP_ETOH1R = ((PRP_1R+PRP_2R+PRP_3R+PRP_21R+PRP_23R+PRP_24R+PRP_26R+PRP_28R+PRP_33R+PRP_35R+PRP_37R+PRP_40R+PRP_45R+PRP_47R+PRP_50R+PRP_53R+PRP_56R+PRP_66R+PRP_68R+PRP_69R+PRP_72R)./n_ETOH1R);
PRP_ETOH1L = ((PRP_1L+PRP_2L+PRP_3L+PRP_21L+PRP_23L+PRP_24L+PRP_26L+PRP_28L+PRP_33L+PRP_35L+PRP_37L+PRP_40L+PRP_45L+PRP_47L+PRP_50L+PRP_53L+PRP_56L+PRP_66L+PRP_68L+PRP_69L+PRP_72L)./n_ETOH1L);
%Get rid of zeros
PRP_ETOH1R = PRP_ETOH1R(PRP_ETOH1R>0);
PRP_ETOH1L = PRP_ETOH1L(PRP_ETOH1L>0);
%PRP_ETOH1L = PRP_ETOH1L(1:(end-3)); %removes outliers from data (last 3 values)

%AVG.
PRP_ETOH4R = ((PRP_5R+PRP_6R+PRP_7R+PRP_8R+PRP_17R+PRP_18R+PRP_20R+PRP_25R+PRP_27R+PRP_34R+PRP_36R+PRP_38R+PRP_39R+PRP_46R+PRP_48R+PRP_54R+PRP_55R+PRP_65R+PRP_67R+PRP_70R+PRP_71R)./n_ETOH4R);
PRP_ETOH4L = ((PRP_5L+PRP_6L+PRP_7L+PRP_8L+PRP_17L+PRP_18L+PRP_20L+PRP_25L+PRP_27L+PRP_34L+PRP_36L+PRP_38L+PRP_39L+PRP_46L+PRP_48L+PRP_54L+PRP_55L+PRP_65L+PRP_67L+PRP_70L+PRP_71L)./n_ETOH4L);
%Get rid of zeros
PRP_ETOH4R = PRP_ETOH4R(PRP_ETOH4R>0);
PRP_ETOH4L = PRP_ETOH4L(PRP_ETOH4L>0);

%AVG.
PRP_SALR = ((PRP_9R+PRP_11R+PRP_12R+PRP_13R+PRP_14R+PRP_15R+PRP_16R+PRP_29R+PRP_30R+PRP_31R+PRP_32R+PRP_41R+PRP_42R+PRP_43R+PRP_44R+PRP_57R+PRP_58R+PRP_59R+PRP_60R+PRP_61R+PRP_62R+PRP_63R+PRP_64R)./n_SALR);
PRP_SALL = ((PRP_9L+PRP_11L+PRP_12L+PRP_13L+PRP_14L+PRP_15L+PRP_16L+PRP_29L+PRP_30L+PRP_31L+PRP_32L+PRP_41L+PRP_42L+PRP_43L+PRP_44L+PRP_57L+PRP_58L+PRP_59L+PRP_60L+PRP_61L+PRP_62L+PRP_63L+PRP_64L)./(n_SALL-1));%PRP_12L = 0, so n -1
%Get rid of zeros
PRP_SALR = PRP_SALR(PRP_SALR>0);
PRP_SALL = PRP_SALL(PRP_SALL>0);


%RBRR Group Averages*****:

%AVG.
RBRR_ETOH1R = ((RBRR_1R+RBRR_2R+RBRR_3R+RBRR_21R+RBRR_23R+RBRR_24R+RBRR_26R+RBRR_28R+RBRR_33R+RBRR_35R+RBRR_37R+RBRR_40R+RBRR_45R+RBRR_47R+RBRR_50R+RBRR_53R+RBRR_56R+RBRR_66R+RBRR_68R+RBRR_69R+RBRR_72R)./(n_ETOH1R-1));%RBRR_2R has 0 RBRRs
RBRR_ETOH1L = ((RBRR_1L+RBRR_2L+RBRR_3L+RBRR_21L+RBRR_23L+RBRR_24L+RBRR_26L+RBRR_28L+RBRR_33L+RBRR_35L+RBRR_37L+RBRR_40L+RBRR_45L+RBRR_47L+RBRR_50L+RBRR_53L+RBRR_56L+RBRR_66L+RBRR_68L+RBRR_69L+RBRR_72L)./n_ETOH1L);
%Get rid of zeros
RBRR_ETOH1R = RBRR_ETOH1R(RBRR_ETOH1R>0);
RBRR_ETOH1L = RBRR_ETOH1L(RBRR_ETOH1L>0);
%Put in Responses per minute (from second)
RBRR_ETOH1R = RBRR_ETOH1R.*60;
RBRR_ETOH1L = RBRR_ETOH1L.*60;

%AVG.
RBRR_ETOH4R = ((RBRR_5R+RBRR_6R+RBRR_7R+RBRR_8R+RBRR_17R+RBRR_18R+RBRR_20R+RBRR_25R+RBRR_27R+RBRR_34R+RBRR_36R+RBRR_38R+RBRR_39R+RBRR_46R+RBRR_48R+RBRR_54R+RBRR_55R+RBRR_65R+RBRR_67R+RBRR_70R+RBRR_71R)./(n_ETOH4R-3));%RBRR_7R, RBRR_17R, and RBRR_18R have 0 RBRRs
RBRR_ETOH4L = ((RBRR_5L+RBRR_6L+RBRR_7L+RBRR_8L+RBRR_17L+RBRR_18L+RBRR_20L+RBRR_25L+RBRR_27L+RBRR_34L+RBRR_36L+RBRR_38L+RBRR_39L+RBRR_46L+RBRR_48L+RBRR_54L+RBRR_55L+RBRR_65L+RBRR_67L+RBRR_70L+RBRR_71L)./n_ETOH4L);
%Get rid of zeros
RBRR_ETOH4R = RBRR_ETOH4R(RBRR_ETOH4R>0);
RBRR_ETOH4L = RBRR_ETOH4L(RBRR_ETOH4L>0);
%Put in Responses per minute (from second)
RBRR_ETOH4R = RBRR_ETOH4R.*60;
RBRR_ETOH4L = RBRR_ETOH4L.*60;

%AVG.
RBRR_SALR = ((RBRR_9R+RBRR_11R+RBRR_12R+RBRR_13R+RBRR_14R+RBRR_15R+RBRR_16R+RBRR_29R+RBRR_30R+RBRR_31R+RBRR_32R+RBRR_41R+RBRR_42R+RBRR_43R+RBRR_44R+RBRR_57R+RBRR_58R+RBRR_59R+RBRR_60R+RBRR_61R+RBRR_62R+RBRR_63R+RBRR_64R)./n_SALR);
RBRR_SALL = ((RBRR_9L+RBRR_11L+RBRR_12L+RBRR_13L+RBRR_14L+RBRR_15L+RBRR_16L+RBRR_29L+RBRR_30L+RBRR_31L+RBRR_32L+RBRR_41L+RBRR_42L+RBRR_43L+RBRR_44L+RBRR_57L+RBRR_58L+RBRR_59L+RBRR_60L+RBRR_61L+RBRR_62L+RBRR_63L+RBRR_64L)./(n_SALL-1));%RBRR_12L has 0 RBRRs
%Get rid of zeros
RBRR_SALR = RBRR_SALR(RBRR_SALR>0);
RBRR_SALL = RBRR_SALL(RBRR_SALL>0);
%Put in Responses per minute (from second)
RBRR_SALR = RBRR_SALR.*60;
RBRR_SALL = RBRR_SALL.*60;

%PRP Error*****
allPRP_ETOH1R = [PRP_1R;PRP_2R;PRP_3R;PRP_21R;PRP_23R;PRP_24R;PRP_26R;PRP_28R;PRP_33R;PRP_35R;PRP_37R;PRP_40R;PRP_45R;PRP_47R;PRP_50R;PRP_53R;PRP_56R;PRP_66R;PRP_68R;PRP_69R;PRP_72R];
allPRP_ETOH1L = [PRP_1L;PRP_2L;PRP_3L;PRP_21L;PRP_23L;PRP_24L;PRP_26L;PRP_28L;PRP_33L;PRP_35L;PRP_37L;PRP_40L;PRP_45L;PRP_47L;PRP_50L;PRP_53L;PRP_56L;PRP_66L;PRP_68L;PRP_69L;PRP_72L];

allPRP_ETOH4R = [PRP_5R;PRP_6R;PRP_7R;PRP_8R;PRP_17R;PRP_18R;PRP_20R;PRP_25R;PRP_27R;PRP_34R;PRP_36R;PRP_38R;PRP_39R;PRP_46R;PRP_48R;PRP_54R;PRP_55R;PRP_65R;PRP_67R;PRP_70R;PRP_71R];
allPRP_ETOH4L = [PRP_5L;PRP_6L;PRP_7L;PRP_8L;PRP_17L;PRP_18L;PRP_20L;PRP_25L;PRP_27L;PRP_34L;PRP_36L;PRP_38L;PRP_39L;PRP_46L;PRP_48L;PRP_54L;PRP_55L;PRP_65L;PRP_67L;PRP_70L;PRP_71L];

allPRP_SALR = [PRP_9R;PRP_11R;PRP_12R;PRP_13R;PRP_14R;PRP_15R;PRP_16R;PRP_29R;PRP_30R;PRP_31R;PRP_32R;PRP_41R;PRP_42R;PRP_43R;PRP_44R;PRP_57R;PRP_58R;PRP_59R;PRP_60R;PRP_61R;PRP_62R;PRP_63R;PRP_64R];
allPRP_SALL = [PRP_9L;PRP_11L;PRP_12L;PRP_13L;PRP_14L;PRP_15L;PRP_16L;PRP_29L;PRP_30L;PRP_31L;PRP_32L;PRP_41L;PRP_42L;PRP_43L;PRP_44L;PRP_57L;PRP_58L;PRP_59L;PRP_60L;PRP_61L;PRP_62L;PRP_63L;PRP_64L];

Error_PRP_ETOH1R = std(allPRP_ETOH1R)./sqrt(n_ETOH1R);
Error_PRP_ETOH1L = std(allPRP_ETOH1L)./sqrt(n_ETOH1L);

Error_PRP_ETOH4R = std(allPRP_ETOH4R)./sqrt(n_ETOH4R);
Error_PRP_ETOH4L = std(allPRP_ETOH4L)./sqrt(n_ETOH4L);

Error_PRP_SALR = std(allPRP_SALR)./sqrt(n_SALR);
Error_PRP_SALL = std(allPRP_SALL)./sqrt(n_SALL-1);

%RBRR Error*****
allRBRR_ETOH1R = [RBRR_1R;RBRR_2R;RBRR_3R;RBRR_21R;RBRR_23R;RBRR_24R;RBRR_26R;RBRR_28R;RBRR_33R;RBRR_35R;RBRR_37R;RBRR_40R;RBRR_45R;RBRR_47R;RBRR_50R;RBRR_53R;RBRR_56R;RBRR_66R;RBRR_68R;RBRR_69R;RBRR_72R];
allRBRR_ETOH1L = [RBRR_1L;RBRR_2L;RBRR_3L;RBRR_21L;RBRR_23L;RBRR_24L;RBRR_26L;RBRR_28L;RBRR_33L;RBRR_35L;RBRR_37L;RBRR_40L;RBRR_45L;RBRR_47L;RBRR_50L;RBRR_53L;RBRR_56L;RBRR_66L;RBRR_68L;RBRR_69L;RBRR_72L];

allRBRR_ETOH4R = [RBRR_5R;RBRR_6R;RBRR_7R;RBRR_8R;RBRR_17R;RBRR_18R;RBRR_20R;RBRR_25R;RBRR_27R;RBRR_34R;RBRR_36R;RBRR_38R;RBRR_39R;RBRR_46R;RBRR_48R;RBRR_54R;RBRR_55R;RBRR_65R;RBRR_67R;RBRR_70R;RBRR_71R];
allRBRR_ETOH4L = [RBRR_5L;RBRR_6L;RBRR_7L;RBRR_8L;RBRR_17L;RBRR_18L;RBRR_20L;RBRR_25L;RBRR_27L;RBRR_34L;RBRR_36L;RBRR_38L;RBRR_39L;RBRR_46L;RBRR_48L;RBRR_54L;RBRR_55L;RBRR_65L;RBRR_67L;RBRR_70L;RBRR_71L];

allRBRR_SALR = [RBRR_9R;RBRR_11R;RBRR_12R;RBRR_13R;RBRR_14R;RBRR_15R;RBRR_16R;RBRR_29R;RBRR_30R;RBRR_31R;RBRR_32R;RBRR_41R;RBRR_42R;RBRR_43R;RBRR_44R;RBRR_57R;RBRR_58R;RBRR_59R;RBRR_60R;RBRR_61R;RBRR_62R;RBRR_63R;RBRR_64R];
allRBRR_SALL = [RBRR_9L;RBRR_11L;RBRR_12L;RBRR_13L;RBRR_14L;RBRR_15L;RBRR_16L;RBRR_29L;RBRR_30L;RBRR_31L;RBRR_32L;RBRR_41L;RBRR_42L;RBRR_43L;RBRR_44L;RBRR_57L;RBRR_58L;RBRR_59L;RBRR_60L;RBRR_61L;RBRR_62L;RBRR_63L;RBRR_64L];

Error_RBRR_ETOH1R = (std(allRBRR_ETOH1R)./sqrt(n_ETOH1R-1)).*60;
Error_RBRR_ETOH1L = (std(allRBRR_ETOH1L)./sqrt(n_ETOH1L)).*60;

Error_RBRR_ETOH4R = (std(allRBRR_ETOH4R)./sqrt(n_ETOH4R-3)).*60;
Error_RBRR_ETOH4L = (std(allRBRR_ETOH4L)./sqrt(n_ETOH4L)).*60;

Error_RBRR_SALR = (std(allRBRR_SALR)./sqrt(n_SALR)).*60;
Error_RBRR_SALL = (std(allRBRR_SALL)./sqrt(n_SALL-1)).*60;

%Gets rid of extra zeros for indivdual PRPs
PRP_1R = PRP_1R(PRP_1R>0);
PRP_1L = PRP_1L(PRP_1L>0);

PRP_2R = PRP_2R(PRP_2R>0);
PRP_2L = PRP_2L(PRP_2L>0);

PRP_3R = PRP_3R(PRP_3R>0);
PRP_3L = PRP_3L(PRP_3L>0);

PRP_4R = PRP_4R(PRP_4R>0);
PRP_4L = PRP_4L(PRP_4L>0);

PRP_5R = PRP_5R(PRP_5R>0);
PRP_5L = PRP_5L(PRP_5L>0);

PRP_6R = PRP_6R(PRP_6R>0);
PRP_6L = PRP_6L(PRP_6L>0);

PRP_7R = PRP_7R(PRP_7R>0);
PRP_7L = PRP_7L(PRP_7L>0);

PRP_8R = PRP_8R(PRP_8R>0);
PRP_8L = PRP_8L(PRP_8L>0);

PRP_9R = PRP_9R(PRP_9R>0);
PRP_9L = PRP_9L(PRP_9L>0);

PRP_10R = PRP_10R(PRP_10R>0);
PRP_10L = PRP_10L(PRP_10L>0);

PRP_11R = PRP_11R(PRP_11R>0);
PRP_11L = PRP_11L(PRP_11L>0);

PRP_12R = PRP_12R(PRP_12R>0);
PRP_12L = PRP_12L(PRP_12L>0);

PRP_13R = PRP_13R(PRP_13R>0);
PRP_13L = PRP_13L(PRP_13L>0);

PRP_14R = PRP_14R(PRP_14R>0);
PRP_14L = PRP_14L(PRP_14L>0);

PRP_15R = PRP_15R(PRP_15R>0);
PRP_15L = PRP_15L(PRP_15L>0);

PRP_16R = PRP_16R(PRP_16R>0);
PRP_16L = PRP_16L(PRP_16L>0);

PRP_17R = PRP_17R(PRP_17R>0);
PRP_17L = PRP_17L(PRP_17L>0);

PRP_18R = PRP_18R(PRP_18R>0);
PRP_18L = PRP_18L(PRP_18L>0);

PRP_19R = PRP_19R(PRP_19R>0);
PRP_19L = PRP_19L(PRP_19L>0);

PRP_20R = PRP_20R(PRP_20R>0);
PRP_20L = PRP_20L(PRP_20L>0);

PRP_21R = PRP_21R(PRP_21R>0);
PRP_21L = PRP_21L(PRP_21L>0);

PRP_22R = PRP_22R(PRP_22R>0);
PRP_22L = PRP_22L(PRP_22L>0);

PRP_23R = PRP_23R(PRP_23R>0);
PRP_23L = PRP_23L(PRP_23L>0);

PRP_24R = PRP_24R(PRP_24R>0);
PRP_24L = PRP_24L(PRP_24L>0);

PRP_25R = PRP_25R(PRP_25R>0);
PRP_25L = PRP_25L(PRP_25L>0);

PRP_26R = PRP_26R(PRP_26R>0);
PRP_26L = PRP_26L(PRP_26L>0);

PRP_27R = PRP_27R(PRP_27R>0);
PRP_27L = PRP_27L(PRP_27L>0);

PRP_28R = PRP_28R(PRP_28R>0);
PRP_28L = PRP_28L(PRP_28L>0);

PRP_29R = PRP_29R(PRP_29R>0);
PRP_29L = PRP_29L(PRP_29L>0);

PRP_30R = PRP_30R(PRP_30R>0);
PRP_30L = PRP_30L(PRP_30L>0);

PRP_31R = PRP_31R(PRP_31R>0);
PRP_31L = PRP_31L(PRP_31L>0);

PRP_32R = PRP_32R(PRP_32R>0);
PRP_32L = PRP_32L(PRP_32L>0);

PRP_33R = PRP_33R(PRP_33R>0);
PRP_33L = PRP_33L(PRP_33L>0);

PRP_34R = PRP_34R(PRP_34R>0);
PRP_34L = PRP_34L(PRP_34L>0);

PRP_35R = PRP_35R(PRP_35R>0);
PRP_35L = PRP_35L(PRP_35L>0);

PRP_36R = PRP_36R(PRP_36R>0);
PRP_36L = PRP_36L(PRP_36L>0);

PRP_37R = PRP_37R(PRP_37R>0);
PRP_37L = PRP_37L(PRP_37L>0);

PRP_38R = PRP_38R(PRP_38R>0);
PRP_38L = PRP_38L(PRP_38L>0);

PRP_39R = PRP_39R(PRP_39R>0);
PRP_39L = PRP_39L(PRP_39L>0);

PRP_40R = PRP_40R(PRP_40R>0);
PRP_40L = PRP_40L(PRP_40L>0);

PRP_41R = PRP_41R(PRP_41R>0);
PRP_41L = PRP_41L(PRP_41L>0);

PRP_42R = PRP_42R(PRP_42R>0);
PRP_42L = PRP_42L(PRP_42L>0);

PRP_43R = PRP_43R(PRP_43R>0);
PRP_43L = PRP_43L(PRP_43L>0);

PRP_44R = PRP_44R(PRP_44R>0);
PRP_44L = PRP_44L(PRP_44L>0);

PRP_45R = PRP_45R(PRP_45R>0);
PRP_45L = PRP_45L(PRP_45L>0);

PRP_46R = PRP_46R(PRP_46R>0);
PRP_46L = PRP_46L(PRP_46L>0);

PRP_47R = PRP_47R(PRP_47R>0);
PRP_47L = PRP_47L(PRP_47L>0);

PRP_48R = PRP_48R(PRP_48R>0);
PRP_48L = PRP_48L(PRP_48L>0);

PRP_49R = PRP_49R(PRP_49R>0);
PRP_49L = PRP_49L(PRP_49L>0);

PRP_50R = PRP_50R(PRP_50R>0);
PRP_50L = PRP_50L(PRP_50L>0);

PRP_51R = PRP_51R(PRP_51R>0);
PRP_51L = PRP_51L(PRP_51L>0);

PRP_52R = PRP_52R(PRP_52R>0);
PRP_52L = PRP_52L(PRP_52L>0);

PRP_53R = PRP_53R(PRP_53R>0);
PRP_53L = PRP_53L(PRP_53L>0);

PRP_54R = PRP_54R(PRP_54R>0);
PRP_54L = PRP_54L(PRP_54L>0);

PRP_55R = PRP_55R(PRP_55R>0);
PRP_55L = PRP_55L(PRP_55L>0);

PRP_56R = PRP_56R(PRP_56R>0);
PRP_56L = PRP_56L(PRP_56L>0);

PRP_57R = PRP_57R(PRP_57R>0);
PRP_57L = PRP_57L(PRP_57L>0);

PRP_58R = PRP_58R(PRP_58R>0);
PRP_58L = PRP_58L(PRP_58L>0);

PRP_59R = PRP_59R(PRP_59R>0);
PRP_59L = PRP_59L(PRP_59L>0);

PRP_60R = PRP_60R(PRP_60R>0);
PRP_60L = PRP_60L(PRP_60L>0);

PRP_61R = PRP_61R(PRP_61R>0);
PRP_61L = PRP_61L(PRP_61L>0);

PRP_62R = PRP_62R(PRP_62R>0);
PRP_62L = PRP_62L(PRP_62L>0);

PRP_63R = PRP_63R(PRP_63R>0);
PRP_63L = PRP_63L(PRP_63L>0);

PRP_64R = PRP_64R(PRP_64R>0);
PRP_64L = PRP_64L(PRP_64L>0);

PRP_65R = PRP_65R(PRP_65R>0);
PRP_65L = PRP_65L(PRP_65L>0);

PRP_66R = PRP_66R(PRP_66R>0);
PRP_66L = PRP_66L(PRP_66L>0);

PRP_67R = PRP_67R(PRP_67R>0);
PRP_67L = PRP_67L(PRP_67L>0);

PRP_68R = PRP_68R(PRP_68R>0);
PRP_68L = PRP_68L(PRP_68L>0);

PRP_69R = PRP_69R(PRP_69R>0);
PRP_69L = PRP_69L(PRP_69L>0);

PRP_70R = PRP_70R(PRP_70R>0);
PRP_70L = PRP_70L(PRP_70L>0);

PRP_71R = PRP_71R(PRP_71R>0);
PRP_71L = PRP_71L(PRP_71L>0);

PRP_72R = PRP_72R(PRP_72R>0);
PRP_72L = PRP_72L(PRP_72L>0);

%finds average PRP for each individual subject 
avgPRP_1R = mean(PRP_1R);
avgPRP_1L = mean(PRP_1L);

avgPRP_2R = mean(PRP_2R);
avgPRP_2L = mean(PRP_2L);

avgPRP_3R = mean(PRP_3R);
avgPRP_3L = mean(PRP_3L);

avgPRP_4R = mean(PRP_4R);
avgPRP_4L = mean(PRP_4L);

avgPRP_5R = mean(PRP_5R);
avgPRP_5L = mean(PRP_5L);

avgPRP_6R = mean(PRP_6R);
avgPRP_6L = mean(PRP_6L);

avgPRP_7R = mean(PRP_7R);
avgPRP_7L = mean(PRP_7L);

avgPRP_8R = mean(PRP_8R);
avgPRP_8L = mean(PRP_8L);

avgPRP_9R = mean(PRP_9R);
avgPRP_9L = mean(PRP_9L);

avgPRP_10R = mean(PRP_10R);
avgPRP_10L = mean(PRP_10L);

avgPRP_11R = mean(PRP_11R);
avgPRP_11L = mean(PRP_11L);

avgPRP_12R = mean(PRP_12R);
avgPRP_12L = mean(PRP_12L);

avgPRP_13R = mean(PRP_13R);
avgPRP_13L = mean(PRP_13L);

avgPRP_14R = mean(PRP_14R);
avgPRP_14L = mean(PRP_14L);

avgPRP_15R = mean(PRP_15R);
avgPRP_15L = mean(PRP_15L);

avgPRP_16R = mean(PRP_16R);
avgPRP_16L = mean(PRP_16L);

avgPRP_17R = mean(PRP_17R);
avgPRP_17L = mean(PRP_17L);

avgPRP_18R = mean(PRP_18R);
avgPRP_18L = mean(PRP_18L);

avgPRP_19R = mean(PRP_19R);
avgPRP_19L = mean(PRP_19L);

avgPRP_20R = mean(PRP_20R);
avgPRP_20L = mean(PRP_20L);

avgPRP_21R = mean(PRP_21R);
avgPRP_21L = mean(PRP_21L);

avgPRP_22R = mean(PRP_22R);
avgPRP_22L = mean(PRP_22L);

avgPRP_23R = mean(PRP_23R);
avgPRP_23L = mean(PRP_23L);

avgPRP_24R = mean(PRP_24R);
avgPRP_24L = mean(PRP_24L);

avgPRP_25R = mean(PRP_25R);
avgPRP_25L = mean(PRP_25L);

avgPRP_26R = mean(PRP_26R);
avgPRP_26L = mean(PRP_26L);

avgPRP_27R = mean(PRP_27R);
avgPRP_27L = mean(PRP_27L);

avgPRP_28R = mean(PRP_28R);
avgPRP_28L = mean(PRP_28L);

avgPRP_29R = mean(PRP_29R);
avgPRP_29L = mean(PRP_29L);

avgPRP_30R = mean(PRP_30R);
avgPRP_30L = mean(PRP_30L);

avgPRP_31R = mean(PRP_31R);
avgPRP_31L = mean(PRP_31L);

avgPRP_32R = mean(PRP_32R);
avgPRP_32L = mean(PRP_32L);

avgPRP_33R = mean(PRP_33R);
avgPRP_33L = mean(PRP_33L);

avgPRP_34R = mean(PRP_34R);
avgPRP_34L = mean(PRP_34L);

avgPRP_35R = mean(PRP_35R);
avgPRP_35L = mean(PRP_35L);

avgPRP_36R = mean(PRP_36R);
avgPRP_36L = mean(PRP_36L);

avgPRP_37R = mean(PRP_37R);
avgPRP_37L = mean(PRP_37L);

avgPRP_38R = mean(PRP_38R);
avgPRP_38L = mean(PRP_38L);

avgPRP_39R = mean(PRP_39R);
avgPRP_39L = mean(PRP_39L);

avgPRP_40R = mean(PRP_40R);
avgPRP_40L = mean(PRP_40L);

avgPRP_41R = mean(PRP_41R);
avgPRP_41L = mean(PRP_41L);

avgPRP_42R = mean(PRP_42R);
avgPRP_42L = mean(PRP_42L);

avgPRP_43R = mean(PRP_43R);
avgPRP_43L = mean(PRP_43L);

avgPRP_44R = mean(PRP_44R);
avgPRP_44L = mean(PRP_44L);

avgPRP_45R = mean(PRP_45R);
avgPRP_45L = mean(PRP_45L);

avgPRP_46R = mean(PRP_46R);
avgPRP_46L = mean(PRP_46L);

avgPRP_47R = mean(PRP_47R);
avgPRP_47L = mean(PRP_47L);

avgPRP_48R = mean(PRP_48R);
avgPRP_48L = mean(PRP_48L);

avgPRP_49R = mean(PRP_49R);
avgPRP_49L = mean(PRP_49L);

avgPRP_50R = mean(PRP_50R);
avgPRP_50L = mean(PRP_50L);

avgPRP_51R = mean(PRP_51R);
avgPRP_51L = mean(PRP_51L);

avgPRP_52R = mean(PRP_52R);
avgPRP_52L = mean(PRP_52L);

avgPRP_53R = mean(PRP_53R);
avgPRP_53L = mean(PRP_53L);

avgPRP_54R = mean(PRP_54R);
avgPRP_54L = mean(PRP_54L);

avgPRP_55R = mean(PRP_55R);
avgPRP_55L = mean(PRP_55L);

avgPRP_56R = mean(PRP_56R);
avgPRP_56L = mean(PRP_56L);

avgPRP_57R = mean(PRP_57R);
avgPRP_57L = mean(PRP_57L);

avgPRP_58R = mean(PRP_58R);
avgPRP_58L = mean(PRP_58L);

avgPRP_59R = mean(PRP_59R);
avgPRP_59L = mean(PRP_59L);

avgPRP_60R = mean(PRP_60R);
avgPRP_60L = mean(PRP_60L);

avgPRP_61R = mean(PRP_61R);
avgPRP_61L = mean(PRP_61L);

avgPRP_62R = mean(PRP_62R);
avgPRP_62L = mean(PRP_62L);

avgPRP_63R = mean(PRP_63R);
avgPRP_63L = mean(PRP_63L);

avgPRP_64R = mean(PRP_64R);
avgPRP_64L = mean(PRP_64L);

avgPRP_65R = mean(PRP_65R);
avgPRP_65L = mean(PRP_65L);

avgPRP_66R = mean(PRP_66R);
avgPRP_66L = mean(PRP_66L);

avgPRP_67R = mean(PRP_67R);
avgPRP_67L = mean(PRP_67L);

avgPRP_68R = mean(PRP_68R);
avgPRP_68L = mean(PRP_68L);

avgPRP_69R = mean(PRP_69R);
avgPRP_69L = mean(PRP_69L);

avgPRP_70R = mean(PRP_70R);
avgPRP_70L = mean(PRP_70L);

avgPRP_71R = mean(PRP_71R);
avgPRP_71L = mean(PRP_71L);

avgPRP_72R = mean(PRP_72R);
avgPRP_72L = mean(PRP_72L);

%Gets rid of extra zeros for indivdual RBRRs
RBRR_1R = RBRR_1R(RBRR_1R>0);
RBRR_1L = RBRR_1L(RBRR_1L>0);

RBRR_2R = RBRR_2R(RBRR_2R>0);
RBRR_2L = RBRR_2L(RBRR_2L>0);

RBRR_3R = RBRR_3R(RBRR_3R>0);
RBRR_3L = RBRR_3L(RBRR_3L>0);

RBRR_4R = RBRR_4R(RBRR_4R>0);
RBRR_4L = RBRR_4L(RBRR_4L>0);

RBRR_5R = RBRR_5R(RBRR_5R>0);
RBRR_5L = RBRR_5L(RBRR_5L>0);

RBRR_6R = RBRR_6R(RBRR_6R>0);
RBRR_6L = RBRR_6L(RBRR_6L>0);

RBRR_7R = RBRR_7R(RBRR_7R>0);
RBRR_7L = RBRR_7L(RBRR_7L>0);

RBRR_8R = RBRR_8R(RBRR_8R>0);
RBRR_8L = RBRR_8L(RBRR_8L>0);

RBRR_9R = RBRR_9R(RBRR_9R>0);
RBRR_9L = RBRR_9L(RBRR_9L>0);

RBRR_10R = RBRR_10R(RBRR_10R>0);
RBRR_10L = RBRR_10L(RBRR_10L>0);

RBRR_11R = RBRR_11R(RBRR_11R>0);
RBRR_11L = RBRR_11L(RBRR_11L>0);

RBRR_12R = RBRR_12R(RBRR_12R>0);
RBRR_12L = RBRR_12L(RBRR_12L>0);

RBRR_13R = RBRR_13R(RBRR_13R>0);
RBRR_13L = RBRR_13L(RBRR_13L>0);

RBRR_14R = RBRR_14R(RBRR_14R>0);
RBRR_14L = RBRR_14L(RBRR_14L>0);

RBRR_15R = RBRR_15R(RBRR_15R>0);
RBRR_15L = RBRR_15L(RBRR_15L>0);

RBRR_16R = RBRR_16R(RBRR_16R>0);
RBRR_16L = RBRR_16L(RBRR_16L>0);

RBRR_17R = RBRR_17R(RBRR_17R>0);
RBRR_17L = RBRR_17L(RBRR_17L>0);

RBRR_18R = RBRR_18R(RBRR_18R>0);
RBRR_18L = RBRR_18L(RBRR_18L>0);

RBRR_19R = RBRR_19R(RBRR_19R>0);
RBRR_19L = RBRR_19L(RBRR_19L>0);

RBRR_20R = RBRR_20R(RBRR_20R>0);
RBRR_20L = RBRR_20L(RBRR_20L>0);

RBRR_21R = RBRR_21R(RBRR_21R>0);
RBRR_21L = RBRR_21L(RBRR_21L>0);

RBRR_22R = RBRR_22R(RBRR_22R>0);
RBRR_22L = RBRR_22L(RBRR_22L>0);

RBRR_23R = RBRR_23R(RBRR_23R>0);
RBRR_23L = RBRR_23L(RBRR_23L>0);

RBRR_24R = RBRR_24R(RBRR_24R>0);
RBRR_24L = RBRR_24L(RBRR_24L>0);

RBRR_25R = RBRR_25R(RBRR_25R>0);
RBRR_25L = RBRR_25L(RBRR_25L>0);

RBRR_26R = RBRR_26R(RBRR_26R>0);
RBRR_26L = RBRR_26L(RBRR_26L>0);

RBRR_27R = RBRR_27R(RBRR_27R>0);
RBRR_27L = RBRR_27L(RBRR_27L>0);

RBRR_28R = RBRR_28R(RBRR_28R>0);
RBRR_28L = RBRR_28L(RBRR_28L>0);

RBRR_29R = RBRR_29R(RBRR_29R>0);
RBRR_29L = RBRR_29L(RBRR_29L>0);

RBRR_30R = RBRR_30R(RBRR_30R>0);
RBRR_30L = RBRR_30L(RBRR_30L>0);

RBRR_31R = RBRR_31R(RBRR_31R>0);
RBRR_31L = RBRR_31L(RBRR_31L>0);

RBRR_32R = RBRR_32R(RBRR_32R>0);
RBRR_32L = RBRR_32L(RBRR_32L>0);

RBRR_33R = RBRR_33R(RBRR_33R>0);
RBRR_33L = RBRR_33L(RBRR_33L>0);

RBRR_34R = RBRR_34R(RBRR_34R>0);
RBRR_34L = RBRR_34L(RBRR_34L>0);

RBRR_35R = RBRR_35R(RBRR_35R>0);
RBRR_35L = RBRR_35L(RBRR_35L>0);

RBRR_36R = RBRR_36R(RBRR_36R>0);
RBRR_36L = RBRR_36L(RBRR_36L>0);

RBRR_37R = RBRR_37R(RBRR_37R>0);
RBRR_37L = RBRR_37L(RBRR_37L>0);

RBRR_38R = RBRR_38R(RBRR_38R>0);
RBRR_38L = RBRR_38L(RBRR_38L>0);

RBRR_39R = RBRR_39R(RBRR_39R>0);
RBRR_39L = RBRR_39L(RBRR_39L>0);

RBRR_40R = RBRR_40R(RBRR_40R>0);
RBRR_40L = RBRR_40L(RBRR_40L>0);

RBRR_41R = RBRR_41R(RBRR_41R>0);
RBRR_41L = RBRR_41L(RBRR_41L>0);

RBRR_42R = RBRR_42R(RBRR_42R>0);
RBRR_42L = RBRR_42L(RBRR_42L>0);

RBRR_43R = RBRR_43R(RBRR_43R>0);
RBRR_43L = RBRR_43L(RBRR_43L>0);

RBRR_44R = RBRR_44R(RBRR_44R>0);
RBRR_44L = RBRR_44L(RBRR_44L>0);

RBRR_45R = RBRR_45R(RBRR_45R>0);
RBRR_45L = RBRR_45L(RBRR_45L>0);

RBRR_46R = RBRR_46R(RBRR_46R>0);
RBRR_46L = RBRR_46L(RBRR_46L>0);

RBRR_47R = RBRR_47R(RBRR_47R>0);
RBRR_47L = RBRR_47L(RBRR_47L>0);

RBRR_48R = RBRR_48R(RBRR_48R>0);
RBRR_48L = RBRR_48L(RBRR_48L>0);

RBRR_49R = RBRR_49R(RBRR_49R>0);
RBRR_49L = RBRR_49L(RBRR_49L>0);

RBRR_50R = RBRR_50R(RBRR_50R>0);
RBRR_50L = RBRR_50L(RBRR_50L>0);

RBRR_51R = RBRR_51R(RBRR_51R>0);
RBRR_51L = RBRR_51L(RBRR_51L>0);

RBRR_52R = RBRR_52R(RBRR_52R>0);
RBRR_52L = RBRR_52L(RBRR_52L>0);

RBRR_53R = RBRR_53R(RBRR_53R>0);
RBRR_53L = RBRR_53L(RBRR_53L>0);

RBRR_54R = RBRR_54R(RBRR_54R>0);
RBRR_54L = RBRR_54L(RBRR_54L>0);

RBRR_55R = RBRR_55R(RBRR_55R>0);
RBRR_55L = RBRR_55L(RBRR_55L>0);

RBRR_56R = RBRR_56R(RBRR_56R>0);
RBRR_56L = RBRR_56L(RBRR_56L>0);

RBRR_57R = RBRR_57R(RBRR_57R>0);
RBRR_57L = RBRR_57L(RBRR_57L>0);

RBRR_58R = RBRR_58R(RBRR_58R>0);
RBRR_58L = RBRR_58L(RBRR_58L>0);

RBRR_59R = RBRR_59R(RBRR_59R>0);
RBRR_59L = RBRR_59L(RBRR_59L>0);

RBRR_60R = RBRR_60R(RBRR_60R>0);
RBRR_60L = RBRR_60L(RBRR_60L>0);

RBRR_61R = RBRR_61R(RBRR_61R>0);
RBRR_61L = RBRR_61L(RBRR_61L>0);

RBRR_62R = RBRR_62R(RBRR_62R>0);
RBRR_62L = RBRR_62L(RBRR_62L>0);

RBRR_63R = RBRR_63R(RBRR_63R>0);
RBRR_63L = RBRR_63L(RBRR_63L>0);

RBRR_64R = RBRR_64R(RBRR_64R>0);
RBRR_64L = RBRR_64L(RBRR_64L>0);

RBRR_65R = RBRR_65R(RBRR_65R>0);
RBRR_65L = RBRR_65L(RBRR_65L>0);

RBRR_66R = RBRR_66R(RBRR_66R>0);
RBRR_66L = RBRR_66L(RBRR_66L>0);

RBRR_67R = RBRR_67R(RBRR_67R>0);
RBRR_67L = RBRR_67L(RBRR_67L>0);

RBRR_68R = RBRR_68R(RBRR_68R>0);
RBRR_68L = RBRR_68L(RBRR_68L>0);

RBRR_69R = RBRR_69R(RBRR_69R>0);
RBRR_69L = RBRR_69L(RBRR_69L>0);

RBRR_70R = RBRR_70R(RBRR_70R>0);
RBRR_70L = RBRR_70L(RBRR_70L>0);

RBRR_71R = RBRR_71R(RBRR_71R>0);
RBRR_71L = RBRR_71L(RBRR_71L>0);

RBRR_72R = RBRR_72R(RBRR_72R>0);
RBRR_72L = RBRR_72L(RBRR_72L>0);

%finds average RBRR for each individual subject 
avgRBRR_1R = mean(RBRR_1R);
avgRBRR_1L = mean(RBRR_1L);

avgRBRR_2R = mean(RBRR_2R);
avgRBRR_2L = mean(RBRR_2L);

avgRBRR_3R = mean(RBRR_3R);
avgRBRR_3L = mean(RBRR_3L);

avgRBRR_4R = mean(RBRR_4R);
avgRBRR_4L = mean(RBRR_4L);

avgRBRR_5R = mean(RBRR_5R);
avgRBRR_5L = mean(RBRR_5L);

avgRBRR_6R = mean(RBRR_6R);
avgRBRR_6L = mean(RBRR_6L);

avgRBRR_7R = mean(RBRR_7R);
avgRBRR_7L = mean(RBRR_7L);

avgRBRR_8R = mean(RBRR_8R);
avgRBRR_8L = mean(RBRR_8L);

avgRBRR_9R = mean(RBRR_9R);
avgRBRR_9L = mean(RBRR_9L);

avgRBRR_10R = mean(RBRR_10R);
avgRBRR_10L = mean(RBRR_10L);

avgRBRR_11R = mean(RBRR_11R);
avgRBRR_11L = mean(RBRR_11L);

avgRBRR_12R = mean(RBRR_12R);
avgRBRR_12L = mean(RBRR_12L);

avgRBRR_13R = mean(RBRR_13R);
avgRBRR_13L = mean(RBRR_13L);

avgRBRR_14R = mean(RBRR_14R);
avgRBRR_14L = mean(RBRR_14L);

avgRBRR_15R = mean(RBRR_15R);
avgRBRR_15L = mean(RBRR_15L);

avgRBRR_16R = mean(RBRR_16R);
avgRBRR_16L = mean(RBRR_16L);

avgRBRR_17R = mean(RBRR_17R);
avgRBRR_17L = mean(RBRR_17L);

avgRBRR_18R = mean(RBRR_18R);
avgRBRR_18L = mean(RBRR_18L);

avgRBRR_19R = mean(RBRR_19R);
avgRBRR_19L = mean(RBRR_19L);

avgRBRR_20R = mean(RBRR_20R);
avgRBRR_20L = mean(RBRR_20L);

avgRBRR_21R = mean(RBRR_21R);
avgRBRR_21L = mean(RBRR_21L);

avgRBRR_22R = mean(RBRR_22R);
avgRBRR_22L = mean(RBRR_22L);

avgRBRR_23R = mean(RBRR_23R);
avgRBRR_23L = mean(RBRR_23L);

avgRBRR_24R = mean(RBRR_24R);
avgRBRR_24L = mean(RBRR_24L);

avgRBRR_25R = mean(RBRR_25R);
avgRBRR_25L = mean(RBRR_25L);

avgRBRR_26R = mean(RBRR_26R);
avgRBRR_26L = mean(RBRR_26L);

avgRBRR_27R = mean(RBRR_27R);
avgRBRR_27L = mean(RBRR_27L);

avgRBRR_28R = mean(RBRR_28R);
avgRBRR_28L = mean(RBRR_28L);

avgRBRR_29R = mean(RBRR_29R);
avgRBRR_29L = mean(RBRR_29L);

avgRBRR_30R = mean(RBRR_30R);
avgRBRR_30L = mean(RBRR_30L);

avgRBRR_31R = mean(RBRR_31R);
avgRBRR_31L = mean(RBRR_31L);

avgRBRR_32R = mean(RBRR_32R);
avgRBRR_32L = mean(RBRR_32L);

avgRBRR_33R = mean(RBRR_33R);
avgRBRR_33L = mean(RBRR_33L);

avgRBRR_34R = mean(RBRR_34R);
avgRBRR_34L = mean(RBRR_34L);

avgRBRR_35R = mean(RBRR_35R);
avgRBRR_35L = mean(RBRR_35L);

avgRBRR_36R = mean(RBRR_36R);
avgRBRR_36L = mean(RBRR_36L);

avgRBRR_37R = mean(RBRR_37R);
avgRBRR_37L = mean(RBRR_37L);

avgRBRR_38R = mean(RBRR_38R);
avgRBRR_38L = mean(RBRR_38L);

avgRBRR_39R = mean(RBRR_39R);
avgRBRR_39L = mean(RBRR_39L);

avgRBRR_40R = mean(RBRR_40R);
avgRBRR_40L = mean(RBRR_40L);

avgRBRR_41R = mean(RBRR_41R);
avgRBRR_41L = mean(RBRR_41L);

avgRBRR_42R = mean(RBRR_42R);
avgRBRR_42L = mean(RBRR_42L);

avgRBRR_43R = mean(RBRR_43R);
avgRBRR_43L = mean(RBRR_43L);

avgRBRR_44R = mean(RBRR_44R);
avgRBRR_44L = mean(RBRR_44L);

avgRBRR_45R = mean(RBRR_45R);
avgRBRR_45L = mean(RBRR_45L);

avgRBRR_46R = mean(RBRR_46R);
avgRBRR_46L = mean(RBRR_46L);

avgRBRR_47R = mean(RBRR_47R);
avgRBRR_47L = mean(RBRR_47L);

avgRBRR_48R = mean(RBRR_48R);
avgRBRR_48L = mean(RBRR_48L);

avgRBRR_49R = mean(RBRR_49R);
avgRBRR_49L = mean(RBRR_49L);

avgRBRR_50R = mean(RBRR_50R);
avgRBRR_50L = mean(RBRR_50L);

avgRBRR_51R = mean(RBRR_51R);
avgRBRR_51L = mean(RBRR_51L);

avgRBRR_52R = mean(RBRR_52R);
avgRBRR_52L = mean(RBRR_52L);

avgRBRR_53R = mean(RBRR_53R);
avgRBRR_53L = mean(RBRR_53L);

avgRBRR_54R = mean(RBRR_54R);
avgRBRR_54L = mean(RBRR_54L);

avgRBRR_55R = mean(RBRR_55R);
avgRBRR_55L = mean(RBRR_55L);

avgRBRR_56R = mean(RBRR_56R);
avgRBRR_56L = mean(RBRR_56L);

avgRBRR_57R = mean(RBRR_57R);
avgRBRR_57L = mean(RBRR_57L);

avgRBRR_58R = mean(RBRR_58R);
avgRBRR_58L = mean(RBRR_58L);

avgRBRR_59R = mean(RBRR_59R);
avgRBRR_59L = mean(RBRR_59L);

avgRBRR_60R = mean(RBRR_60R);
avgRBRR_60L = mean(RBRR_60L);

avgRBRR_61R = mean(RBRR_61R);
avgRBRR_61L = mean(RBRR_61L);

avgRBRR_62R = mean(RBRR_62R);
avgRBRR_62L = mean(RBRR_62L);

avgRBRR_63R = mean(RBRR_63R);
avgRBRR_63L = mean(RBRR_63L);

avgRBRR_64R = mean(RBRR_64R);
avgRBRR_64L = mean(RBRR_64L);

avgRBRR_65R = mean(RBRR_65R);
avgRBRR_65L = mean(RBRR_65L);

avgRBRR_66R = mean(RBRR_66R);
avgRBRR_66L = mean(RBRR_66L);

avgRBRR_67R = mean(RBRR_67R);
avgRBRR_67L = mean(RBRR_67L);

avgRBRR_68R = mean(RBRR_68R);
avgRBRR_68L = mean(RBRR_68L);

avgRBRR_69R = mean(RBRR_69R);
avgRBRR_69L = mean(RBRR_69L);

avgRBRR_70R = mean(RBRR_70R);
avgRBRR_70L = mean(RBRR_70L);

avgRBRR_71R = mean(RBRR_71R);
avgRBRR_71L = mean(RBRR_71L);

avgRBRR_72R = mean(RBRR_72R);
avgRBRR_72L = mean(RBRR_72L);


