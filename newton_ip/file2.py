import pylab as pl
import numpy as np

data=np.loadtxt("value2.dat")
N=np.log10(data[0:6,0])  #discritization points
er4=np.log10(data[0:6,1]) #error for order 4
er9=np.log10(data[6:12,1]) #error for order 9 
pl.xlim(0,7)
pl.ylim(0,-7)
pl.xlabel('Number of Discritization Points (log10)')
pl.ylabel('Mean Error (log10)')
pl.title('Error in Interpolation (Newton Divided Polynomial)')
pl.plot(N,er4,'ro-',label='4th Order')
pl.plot(N,er9,'bo-',label='9th Order')
pl.legend()
pl.savefig('value2dat.png')
pl.show()

