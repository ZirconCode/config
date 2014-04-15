
# / ZirconCode

# Note:
# It usually defeats the purpose of git to auto-commit
# Since a day is the smallest atomic unit in my diary, and since I am lazy, this is fine

# !Assumes no enter usr/pwd

# CONFIG ---
repos = []
repos << '/home/simon/Desktop/Writting'   # Mostly Diary 
repos << '/home/simon/Desktop/ChessStats' # Chess Games & Puzzles
# CONFIG ---

def push_git_repo(path)
	Dir.chdir(path){
		if(!`git status -s`.empty?)
			name = 'Auto: '+Time.now.day.to_s+'/'+Time.now.month.to_s+'/'+Time.now.year.to_s
			`git add .`
			`git commit -am '#{name}'`
			`git push origin master` #Assumption...
		end 
	}
end

repos.each {|r| push_git_repo(r)}
