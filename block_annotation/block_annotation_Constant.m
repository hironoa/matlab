function block_annotation_Constant
% �ŏ�ʂ�Simulink�V�X�e���̃n���h�����擾����
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

% �p�����[�^��ݒ肷��
for i = 1:length(CblockH)
    set_param(CblockH(i), 'InitFcn', param);
end

end