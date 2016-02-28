%some piece of codes I frequently evaluate

clear all;
clc; close all;

load('LexicalityExp_preorder');

%nruns = 12; %number of runs to make
blankframe = zeros(nruns,20*4); % 20 frames/trial, we want to 4 trials blank
frameorder = horzcat(blankframe,frameorder,blankframe);

%% Create fixation task
for rn = 1 : nruns
    [fixorder(rn,:), fixcolor] = CreateFixationTask_Luminance(size(frameorder,2));
end

%% Save it out
desc = ' img is the image stack \n sc denotes the contrast of each image\n sl denotes the lexicality level\n stimcat denotes the category\n stimorder gives the order of the stimulus for each run\n'
save LexicalityExp img sc sl stimcat desc stimorder stimorder_cat frameorder fixorder fixcolor

clear all;close all;clc
%run_LexicalityExp;



