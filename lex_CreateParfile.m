function lex_CreateParfile(stimorder_cat,reststart,restend)
% Create parfiles based on stimorder_cat

if ~exist('reststart','var')
    reststart = 8;
end
if ~exist('restend','var')
    restend = 18;
end
if ~exist('block','var')
    block = 4;
end
for ii = 1:size(stimorder_cat,1)
    fid = fopen(sprintf('run%d.par',ii),'w')
    fprintf(fid,'0\t0\tcat0\n');
    t = reststart-block;
    for jj = 1:size(stimorder_cat,2)
        t = t+block;
        fprintf(fid,'%d\t %d\t cat%s\n',t,stimorder_cat(ii,jj),num2str(stimorder_cat(ii,jj)));
    end
    t = t+block;
    fprintf(fid,'0\t0\tcat0\n');

    fclose(fid);
end