# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts
"SELECT projects.title, sum(pledges.amount) FROM projects JOIN pledges on projects.id = pledges.project_id GROUP BY projects.id ORDER BY projects.title ASC"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"SELECT users.name,users.age, sum(pledges.amount) FROM pledges JOIN users on pledges.user_id=users.id GROUP BY users.id ORDER BY users.name ASC"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title, (sum(pledges.amount)-projects.funding_goal) as over_goal FROM projects join pledges on projects.id=pledges.project_id GROUP BY projects.id HAVING (sum(pledges.amount)-projects.funding_goal >= 0) ORDER BY projects.title ASC"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"SELECT users.name, sum(pledges.amount) FROM users JOIN pledges on users.id = pledges.user_id GROUP BY users.id ORDER BY sum(pledges.amount) ASC, users.name ASC"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category, pledges.amount FROM pledges join projects on pledges.project_id = projects.id where projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"SELECT projects.category, sum(pledges.amount) FROM projects JOIN pledges on projects.id = pledges.project_id where projects.category = 'books'" 
end
