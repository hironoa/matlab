function block_annotation_DetectChange
% �ŏ�ʂ�Simulink�V�X�e���̃n���h�����擾����
modelH = get_param(bdroot, 'Handle');

CblockH = find_system(modelH, 'MaskType', 'Detect Change');

% �p�����[�^��ݒ肷��
for i = 1:length(CblockH)
    set_param(CblockH(i), 'AttributesFormatString', 'InitCond : %<vinit>');
end

end
