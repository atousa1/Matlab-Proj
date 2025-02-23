backgroundSize = 100; %Background image size
squareSize = 50;
leftImg = floor(rand(backgroundSize)+.5);

row = 25;
col = 25;
shift = 5; %pixels

squareImg = leftImg(row:(row+squareSize-1),col:(col+squareSize-1)); %'copy' the central square
rightImg = insertMatrix(leftImg,squareImg,row,col+shift); %'paste' the square, shifted rightward

figure(3)
clf

subplot(1,2,1)
image(leftImg*256);
colormap(gray(256));
axis equal
axis off

subplot(1,2,2)
image(rightImg*256);
colormap(gray(256));
axis equal
axis off
