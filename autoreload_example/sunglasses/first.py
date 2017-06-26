from __future__ import absolute_import, division, print_function
import matplotlib as mpl
from matplotlib import pyplot as plt
from matplotlib.pyplot import GridSpec
import seaborn as sns
import numpy as np
import pandas as pd
import os
import sys
import warnings


def plot_stuff(x, y):
    plt.scatter(x, y)


def plot_stuff2(x, y):
    fig, ax = plt.subplots(figsize=(12, 8))
    ax.scatter(x, y, c='r')
    ax.set_xlabel("x-values")
    ax.set_ylabel("y-values")
    fig.tight_layout()
    plt.show()


def main():
    pass

if __name__ == "__main__":
    main()
