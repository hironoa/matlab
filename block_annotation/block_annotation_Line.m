sys = get_param(bdroot, 'Handle');
l = find_system(sys, 'FindAll', 'on', 'type', 'line');
for i=1:length(l)
      %set(l(i),'signalPropagation','off'); % OFF にする場合
      set(l(i),'signalPropagation','on') % ON にする場合
end 