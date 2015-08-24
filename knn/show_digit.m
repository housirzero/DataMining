function X = show_digit( img, row, col )
% 显示数字图像
    X = zeros(row, col);
    for i = 1 : row
        for j = 1 : col
            X(i,j) = img((i-1)*row+j);
        end
    end
    
    imwrite(X,'myPic.bmp');%写图片
    imshow('myPic.bmp')%显示你写的图片
%     display(X);

end
