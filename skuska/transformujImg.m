function transformujImg(fileName, option)
    imgFrame = imread(fileName);
    
    
    switch option
        case 1
            %Show original
            imshow(imgFrame);
            
        case 2
            %Show gray
            imshow(rgb2gray(imgFrame));
            
        case 3
            %Show gray and blocks
            imgFrameGray = rgb2gray(imgFrame);
            [m, n] = size(imgFrameGray);
            for i=32:32:m
               for j=32:32:n
                   block = imgFrameGray((i-31):i, (j-31):j);
                   meanValue = mean(mean(block));
                   imgFrameGray((i-31):i, (j-31):j) = meanValue;
               end
            end
            
            imshow(imgFrameGray);
    end
end

