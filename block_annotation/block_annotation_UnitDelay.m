function block_annotation_UnitDelay
% 最上位のSimulinkシステムのハンドルを取得する
modelH = get_param(bdroot, 'Handle');

CblockH = find_system(modelH, 'BlockType', 'UnitDelay');

% パラメータを設定する
for i = 1:length(CblockH)
    set_param(CblockH(i), 'AttributesFormatString', 'InitCond : %<InitialCondition>');
end

end
