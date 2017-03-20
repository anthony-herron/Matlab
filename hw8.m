file = fopen('hw8file.data', 'r')
test = fscanf(file, '%c, %d, %d, %d, %d\n', [5 inf]);
a1 = test(:, 1:end);
a2 = test(1:end, :);
a3 = test(1:end, :);
a4 = test(1:end, :);
a5 = test(1:end, :);
d1 = [0, 1, 1, 0, 0];
d2 = [1, 1, 1, 1, 0];
d3 = [0, 1, 1, 0, 1];
d4 = [1, 1, 1, 0, 1];
d5 = [1, 0, 0, 1, 0];
w1 = [.004, .004, .004, .004, .004];
w2 = [.004, .004, .004, .004, .004];
w3 = [.004, .004, .004, .004, .004];
w4 = [.004, .004, .004, .004, .004];
w5 = [.004, .004, .004, .004, .004];
lr = 1;
a = 0;
MSE = 0;

while a < 2
  misclass = 0; % Look for misclassified example
  i = 2;
	while i <= 5   
    		y = sign (w1 * a1(:, i)); % Computation of actual response
    if y ~= d1(1,i)
        misclass = misclass + 1;
	    w1 = w1 + lr * (d1(1,i) - y)' * a1(:,i);  % Adaptation of weight vector
     end
     MSE = MSE + ((d1(1,i) * d1(1,i)) - y);
	    i = i + 1;
	end
  
  
  a = a + 1;
end  % while 1

misclass1 = misclass
classerror = (misclass1 / 25) * 100;
classerror = classerror
MSE = 0;
while a < 2
  misclass2 = 0; % Look for misclassified example
  i = 2;
	while i <= 5   
    		y = sign (w2 * a2(:, i)); % Computation of actual response
    if y ~= d2(1,i)
        misclass2 = misclass2 + 1;
	    w2 = w2 + lr * (d2(1,i) - y)' * a2(:,i);  % Adaptation of weight vector
     end
     MSE = MSE + ((d2(1,i) * d2(1,i)) - y);
	    i = i + 1;
	end
  
  
  a = a + 1;
end  % while 1

misclass2 = misclass2
classerror = (misclass2 / 25) * 100;
classerror = classerror
MSE = 0;

while a < 2
  misclass3 = 0; % Look for misclassified example
  i = 2;
	while i <= 5   
    		y = sign (w3 * a3(:, i)); % Computation of actual response
    if y ~= d3(1,i)
        misclass3 = misclass3 + 1;
	    w3 = w3 + lr * (d3(1,i) - y)' * a3(:,i);  % Adaptation of weight vector
     end
     MSE = MSE + ((d3(1,i) * d3(1,i)) - y);
	    i = i + 1;
	end
  
  
  a = a + 1;
end  % while 1

misclass3 = misclass3
classerror = (misclass3 / 25) * 100;
classerror = classerror
MSE = 0;

while a < 2
  misclass4 = 0; % Look for misclassified example
  i = 2;
	while i <= 5   
    		y = sign (w4 * a4(:, i)); % Computation of actual response
    if y ~= d4(1,i)
        misclass4 = misclass4 + 1;
	    w4 = w4 + lr * (d4(1,i) - y)' * a4(:,i);  % Adaptation of weight vector
     end
     MSE = MSE + ((d4(1,i) * d4(1,i)) - y);
	    i = i + 1;
	end
  
  
  a = a + 1;
end  % while 1

misclass4 = misclass4
classerror = (misclass4 / 25) * 100;
classerror = classerror
MSE = 0;

while a < 2
  misclass5 = 0; % Look for misclassified example
  i = 2;
	while i <= 5   
    		y = sign (w5 * a5(:, i)); % Computation of actual response
    if y ~= d5(1,i)
        misclass5 = misclass5 + 1;
	    w5 = w5 + lr * (d5(1,i) - y)' * a5(:,i);  % Adaptation of weight vector
     end
     MSE = MSE + ((d5(1,i) * d5(1,i)) - y);
	    i = i + 1;
	end
  
  
  a = a + 1;
end  % while 1

misclass5 = misclass5
classerror = (misclass5 / 25) * 100;
classerror = classerror
MSE = 0;
