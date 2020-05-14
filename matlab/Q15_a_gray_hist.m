
img = imread('rice.png');

imshow(img);
figure;
  
[a, b] = size(img); 
  
  
freq= 1 : 256; 

counter = 0; 
  
for i = 1 : 256 
    for j = 1 : a
        for k = 1 : b 
  
            if img(j, k) == i-1 
                    counter = counter + 1; 
            end
        end
    end
    freq(i) = counter; 
  
    counter = 0; 
  
end
  
  
n = 0 : 255; 

stem(n, freq); 
  
grid on; 
ylabel('Number of pixels with such intensity levels ----->'); 
xlabel('Intensity levels  ----->'); 
title('Histogram of the Image'); 