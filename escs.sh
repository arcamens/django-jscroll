##############################################################################
# Push changes.

cd ~/projects/django-jscroll-code
git status
git add *
git commit -a
git push
##############################################################################
# Create releases.
git tag -a v1.0.0 -m 'First stable release.'
git push origin : v1.0.0

git tag -a v2.0.0 -m 'Running on django 2.'
git push origin : v2.0.0

##############################################################################
# Create staging branch.
cd ~/projects/django-jscroll-code
git branch -a
git checkout -b staging
git push --set-upstream origin staging

##############################################################################
# merge staging into master
git checkout master
git merge staging
git push -u origin master
git checkout staging

