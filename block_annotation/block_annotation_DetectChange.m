function block_annotation_DetectChange
% 最上位のSimulinkシステムのハンドルを取得する
modelH = get_param(bdroot, 'Handle');

CblockH = find_system(modelH, 'MaskType', 'Detect Change');

% パラメータを設定する
for i = 1:length(CblockH)
    set_param(CblockH(i), 'AttributesFormatString', 'InitCond : %<vinit>');
end

end
