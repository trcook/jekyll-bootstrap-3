# build and deploy
task :deploy do
%x{jekyll build
cd _site
git add .
git commit -m  "#{Date.today.to_s}"
git status
git push deploy master
}
end