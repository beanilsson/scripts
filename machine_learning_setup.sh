echo Starting setup
echo Upgrading pip
python -m pip install --upgrade pip
echo Installing the SciPy stack
pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
echo Installing sklearn
pip install --user scikit-learn
echo Done!
