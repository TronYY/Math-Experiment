%打印当前渡河方案
function PrintWay(step,boating)
fprintf('Across river %d:',step);
if boating(1) fprintf('man,');end
if boating(2) fprintf('cat,');end
if boating(3) fprintf('hen,');end
if boating(4) fprintf('rice,');end
if mod(step,2) fprintf('from this bank to the opposite bank.\n')
else fprintf('from the opposite bank to this bank.\n')
end




end

