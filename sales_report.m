categories = {'Web', 'Móvil', 'Automatización', 'Web'};
amounts = [1200, 850, 650, 450];
fprintf('Total: %.2f\nPromedio: %.2f\n', sum(amounts), mean(amounts));
[unique_categories, ~, groups] = unique(categories);
totals = accumarray(groups(:), amounts(:));
disp(table(unique_categories(:), totals, 'VariableNames', {'Categoria', 'Total'}));
bar(totals); set(gca, 'XTickLabel', unique_categories); title('Ventas por categoría'); ylabel('Importe'); grid on;
saveas(gcf, 'sales-report.png');
