import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import PolynomialFeatures

# getting data

df = pd.read_csv('testdata.csv') # need to change to the path for the upladed daata

x = df['wavenumber'].values
y = df['intensity'].values


x = x.reshape(-1, 1)

# smoothing the dataset
sm_pol = 4 # this is the input gotten from the user in the website to which degree is the smothing polynomial
smothed_wl = np.convolve(df['wavenumber'], np.ones((sm_pol)), mode ='same')
smothed_wl /= sm_pol


#plotting the dataset for comparison between raw data and smoothed data
plt.plot(x,y, color='blue')
plt.plot(smothed_wl, y, color='red')

#putting new smoothed data into a dataframe
new_df = pd.DataFrame(columns = ['wavenumbers', 'intensity'])
new_df['wavenumbers'] = smothed_wl
new_df['intensity'] = df['intensity']

#new_df

# saving the new dataframe with preprocessed data into a new .csv file
new_df.to_csv('preprocessed_data.csv', index=False)
