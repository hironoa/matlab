function block_annotation_UnitDelay
% �ŏ�ʂ�Simulink�V�X�e���̃n���h�����擾����
modelH = get_param(bdroot, 'Handle');

CblockH = find_system(modelH, 'BlockType', 'UnitDelay');

% �p�����[�^��ݒ肷��
for i = 1:length(CblockH)
    set_param(CblockH(i), 'AttributesFormatString', 'InitCond : %<InitialCondition>');
end

end
