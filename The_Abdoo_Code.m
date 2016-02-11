
% Code by Abdoo ELHariry - iamxdesigns@gmail.com

k1 = 2.03
k2 = 0.455
n1 = 4
d1 = [1 4]
sys1 = tf(n1, d1)
n2 = [1.156 0.3435]
d2 = [1 0.741 0.9272]
sys2 = tf(n2, d2)
sys3 = series(sys1, sys2)
sys4 = feedback(sys3, k1)
n3 = 1
d3 = [1 0]
sys5 = tf(n3, d3)
sys6 = sys4*sys5*k2
sys7 = feedback(sys6, 1)
n4 = [-2 1]
d4 = [1 0]
sys8 = tf(n4, d4)
sys9 = series(sys7, sys8)
rlocus(sys9)
