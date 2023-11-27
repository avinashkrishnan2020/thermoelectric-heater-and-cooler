model = 'fairly_accurate_model_trimming_latest';
op = operspec(model);
op.Outputs.Known = true;

% Operating points

temp = [18];

for i = 1:length(temp)
    op.Outputs.y = temp(i);
    opoint = findop(model, op, findopOptions('DisplayReport','off'));
    plant = linearize(model, opoint);
end

bode(plant);



