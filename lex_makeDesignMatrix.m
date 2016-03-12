function X = lex_makeDesignMatrix(matfile)
% Create a design matrix for lexicality exp
%
% X = lex_makeDesignMatrix(matfile)

if ~exist('matfile','var') || isempty(matfile)
    matfile = which('LexicalityExp.mat')
end
load(matfile);

% Get unique conditions
c = unique(stimorder_cat(:));

% Loop over runs
for r = 1:size(stimorder_cat,1)
    % Preallocate X
    X{r} = zeros(size(stimorder_cat, 2).*4, length(c));
    ind = 0; % Counter
    for ii = 1:size(stimorder_cat, 2)
        ind = max(ind)+1;
        ind = ind:(ind+3);
        X(ind, stimorder_cat(r,ii)+1)= 1;
    end
end