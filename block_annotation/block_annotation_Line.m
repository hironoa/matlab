sys = get_param(bdroot, 'Handle');
l = find_system(sys, 'FindAll', 'on', 'type', 'line');
for i=1:length(l)
      %set(l(i),'signalPropagation','off'); % OFF �ɂ���ꍇ
      set(l(i),'signalPropagation','on') % ON �ɂ���ꍇ
end 