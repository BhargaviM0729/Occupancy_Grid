clear all 

 %%Defining maximum size of the map
 % size of map on x-axis 
 x_max = 10;
 % size of map along y-axis 
 y_max = 10;
 % x-coordinate of the start position 
 x_s = 1;
 % y-coordinate of the start position
 y_s = 5;
 % x-coordinate  of the target point 
 x_t = 10;
 % y-ccordinate of the target point 
 y_t = 5;
 
 % create a matrix filled with zeros 
 Map = zeros(x_max, y_max)
 % Define obstacle's origin 
 % Here we have two obstacles 
 obstacle_origin_1 = [3,3];
 obstacle_origin_2 = [7,2];
 % size of the obstacle 
 obstacle_size_1 = [2,2];
 obstacle_size_2 = [2,4];
 
%  Fill the map with the obstacles 
 for i = obstacle_origin_1(1) : obstacle_origin_1(1) + obstacle_size_1(1)      
     for j = obstacle_origin_1(2) : obstacle_origin_1(2) + obstacle_size_1(2)
        Map(i,j) = 1;
     end
 end
 for a = obstacle_origin_2(1) : obstacle_origin_2(1) + obstacle_size_2(1)      
     for b = obstacle_origin_2(2) : obstacle_origin_2(2) + obstacle_size_2(2)
        Map(a,b) = 1;
     end
 end
 
 % Fill the map with the start point 
 Map(x_s, y_s) = 2;
 % Fill the map with the target pointb
 Map(x_t, y_t) = 3;
 % Plot the map along with obstacle, start point and target  point
 figure 
 grid on 
 hold on
 
 % patch(x,y) draws a solid shape specified by the coordinate vectors x and y. 
 % The color of the shape is the current foreground color.
 % Drawing the obstacle using patch command 
 patch( [obstacle_origin_1(1) obstacle_origin_1(1)+obstacle_size_1(1) obstacle_origin_1(1)+obstacle_size_1(1) obstacle_origin_1(1)], [obstacle_origin_1(2) obstacle_origin_1(2) obstacle_origin_1(2)+obstacle_size_1(2) obstacle_origin_1(2)+obstacle_size_1(2)],'k');
 patch( [obstacle_origin_2(1) obstacle_origin_2(1)+obstacle_size_2(1) obstacle_origin_2(1)+obstacle_size_2(1) obstacle_origin_2(1)], [obstacle_origin_2(2) obstacle_origin_2(2) obstacle_origin_2(2)+obstacle_size_2(2) obstacle_origin_2(2)+obstacle_size_2(2)],'k');
 
  % Draw the location of start point 
  scatter(x_s,y_s,'o','r','filled');
  % Draw the target point 
  scatter(x_t,y_t,'o','g','filled');
  % Making the grid cells fixed length 
  set(gca,'xtick',0:1:x_max)
  set(gca,'ytick',0:1:y_max)
  
  % Define start and ending of axis 
  axis([0 x_max 0 y_max])
  
