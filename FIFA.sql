Analysis on FIFA World cup 2022 for the football matches held in Qatar containing      
information about matches, penalty, teams, goals, wins, loss, assists, possession, 
red cards, yellow cards, passes etc using MYSQL.

Tools: MYSQL, Dbeaver (Database), MS-Excel 

use fifa;
select * from fifa_1 ;
select * from fifa_2;

#1. WRITE a sql query to show all the UNIQUE team names
select distinct team from fifa_1;

#2. Write a SQL query to show name of team which has rank 1 from group 7
select team from fifa_2 where `rank` in (1) and `group` in (7);

#3. WRITE a sql query to show c o u n t o f all team
select  distinct count(team) from fifa_1;

#4 . Write a SQL query to show matches_played by each team
select team,sum(matches_played) from fifa_2 group by team;

#5. Write a SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team,(wins/matches_played)*100 as percent_of_wins from fifa_2 group by team;


#6. Write a SQL query to show which team has maximum goals_scored and how much
select team,goals_scored from fifa_2 where goals_scored in ( select max(goals_scored ) from fifa_2);

#7. Write a SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team,(draws/matches_played)*100 as percent_of_draws from fifa_2;

#8. Write a SQL query to show which team has minimum goals_scored and how much
select team,goals_scored from fifa_2 where goals_scored in ( select min(goals_scored ) from fifa_2);

#9. Write a SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team,(losses /matches_played)*100 as percent_of_draws from fifa_2;

#10.Write a SQL query to show the average goal_difference
select avg(goal_difference) from fifa_2;

#11. Write a SQL query to show name of the team where points are 0
select team,points from fifa_2 where points in (0);

#12.Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from fifa_2 where expected_goal_scored<exp_goal_conceded ;

#13.Write a SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from fifa_2  where exp_goal_difference between -0.5 and 0.5;

#14.Write a SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from fifa_2 order by exp_goal_difference_per_90 asc;

#15.Write a SQL query to show team which has maximum number of players_used
select team,players_used from fifa_1 where players_used in (select max(players_used) from fifa_1);

#16.Write a SQL query to show each team name and avg_age in ascending order by avg_age
select team,avg_age  from fifa_1 order by avg_age asc;

#17.WRITE a sql query to show average possession of teams
select team,avg(possession) from fifa_1 group by team;

#18.Write a SQL query to show team which has played atleast 5 games
select team,games from fifa_1 where games>=5;

#19.Write a SQL query to show all data for which minutes is greater than 600
select team,minutes  from fifa_1 where minutes>600;

#20.Write a SQL query to show team, goals, assists in ascending order by goals
select team,goals,assists from fifa_1 order by goals;

#21.Write a SQL query to show team, pens_made, pens_att in descending order by pens_made
select team,pens_made,pens_att  from fifa_1 order by pens_made ;

#22.Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow\
select team,cards_yellow,cards_red from fifa_1 where cards_red in (1) order by cards_yellow asc;

#23.Write a SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90
select team,goals_per90,goals_assists_per90 from fifa_1 order by goals_assists_per90 desc;


#24.Write a SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90
select team,goals_pens_per90,goals_assists_pens_per90  from fifa_1 order by goals_assists_pens_per90;

#25.Write a SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct
select team,shots,shots_on_target,shots_on_target_pct  from fifa_1 where shots_on_target_pct<30 order by shots_on_target_pct;

#26.Write a SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team,shots_per90,shots_on_target_per90 from fifa_1 where team in ('Belgium');


#27.Write a SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance
select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance  from fifa_1 order by average_shot_distance desc;

#28.Write a SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team,errors,touches  from fifa_1 where errors in (0) and touches<1500

#29.Write a SQL query to show team, fouls which has maximum number of fouls
select team,fouls  from fifa_1  where fouls in (select max(fouls) from fifa_1);

#30.Write a SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team,offsides  from  fifa_1 where offsides between 10 and 20;

#31.Write a SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct
select team, aerials_won, aerials_lost, aerials_won_pct from fifa_1 order by aerials_won_pct desc;

#32.WRITE a sql query to show number of teams each group has
select * from fifa_2;
#33.Write a SQL query to show team names group 6 has
select team,`group`  from fifa_2 where `group` in (6);
#34.Write a SQL query to show Australia belongs to which group
select team,`group`  from fifa_2 where team in ('Australia');
#35.Write a SQL query to show group, average wins by each group
select avg(wins),`group`  from fifa_2 group by `group` ;
#36.Write a SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select `group`,max(expected_goal_scored) from fifa_2 group by `group` order by goals_scored;
#37.Write a SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded
select `group`,min(exp_goal_conceded)  from fifa_2 group by `group` order by exp_goal_conceded desc;
#38.Write a SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90
select `group`,avg(exp_goal_difference_per_90)  from fifa_2 group by `group` order by exp_goal_difference_per_90  asc;
#39.WRITE a query to show which team has equal number of goals_scored and goals_against
select team,goals ,on_goals_against  from fifa_1 where goals=on_goals_against ; 
#40.WRITE a query to show which team has maximum players_used
select team,players_used from fifa_1 where players_used in (select max(players_used) from fifa_1) ;
#41.WRITE a query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200
select team,players_used,avg_age,games,minutes  from fifa_1 where minutes between 200 and 500; 

#42. WRITE a query to show all data of group_stats in ascending order BY points
select `group`,points from fifa_2 order by points  ;
#43.WRITE a query to show ALL UNIQUE team in ascending order by team
select distinct team from fifa_1 order by team asc;
#44. WRITE a query to show average avg_age of each group and arrange it in descending order by avg_age.
select avg(f.avg_age) ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team  group by f2.`group` order by f.avg_age  desc;
#45.WRITE a query to show sum of fouls for each group and arrange it in ascending order by fouls.
select f.fouls,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team order by f.fouls asc; 
#46.WRITE a query to how total number of games for each group and arrange it in descending order by games.
select f.games ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team order by f.games  desc;
#47.WRITE a query to show total number of players_used for each group and arrange it in ascending order by players_used.
select f.team ,f.players_used ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team order by f.players_used  asc;

#48.WRITE a query to show total number of offsides for each group and arrange it in ascending order by offsides.
select f.offsides ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team order by f.offsides  asc;
#49.WRITE a query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select avg(f.passes_pct) ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team  group by f2.`group` order by f.passes_pct  desc;
#50.WRITE a query to show average goals_per90 for each group and arrange it in ascending order by goals_per90
select avg(f.goals_per90) ,f2.`group`  from fifa_1 f join fifa_2 f2 on f.team =f2.team  group by f2.`group` order by f.goals_per90  desc;
