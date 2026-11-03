% AGPL-3.0-or-later
% Read the data.
arffile = fopen('arf_price-filtered.csv', 'r');
arfcol = textscan(arffile, '%s %f', 'Delimiter', ',', 'HeaderLines', 1);
fclose(arffile);
OILfile = fopen('oil_price-filtered.csv', 'r');
OILcol = textscan(OILfile, '%s %f', 'Delimiter', ',', 'HeaderLines', 1);
fclose(OILfile);

% Map the keys and values.
arfkeys = arfcol{1};
arfvalues = arfcol{2};
ARFmap = containers.Map(arfkeys, num2cell(arfvalues));
OILkeys = OILcol{1};
OILvalues = OILcol{2};
OILmap = containers.Map(OILkeys, num2cell(OILvalues));
