function block_annotation_Constant
% 最上位のSimulinkシステムのハンドルを取得する
modelH = get_param(bdroot, 'Handle');

%find_system(modelH, 'type', 'block');

CblockH = find_system(modelH, 'BlockType', 'Constant');

param = "v = get_param(gcbh, 'Value');";
param = param + newline + "s = '';";
param = param + newline + "for dd = eval(v)";
param = param + newline + "  s = s + sprintf(""%g "", dd);";
param = param + newline + "end";
param = param + newline + "set_param(gcb, 'AttributesFormatString', 'value : ' + s);";
param = param + newline + "clear v s dd";

% パラメータを設定する
for i = 1:length(CblockH)
    set_param(CblockH(i), 'InitFcn', param);
end

end