for i=1:9
  l = abs(5-i);
  for j=1:l
      fprintf(" ");
  end
  for j=1:5-l
      fprintf("* ");
  end
  fprintf("\n");
end