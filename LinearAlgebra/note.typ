= Chapter 1.1 - 1.4
Linear Equation: $c_1 x_1 + c_2 +x_2 + ... + c_v x_v = b$ 형태

Matrix Equation: $mat(delim:"[",a_1,a_2,...,a_n) mat(
  delim:"[",x_1;x_2;...;x_3)$ 형태

$A X = [m times n][m times o]->[m times o]$ form

Example 1)\
Linear Eq \

$
x_1 + 2x_2 - x_3 = 4 \
-5x_2 +3x_3 =1
$

Vector Eq \
$
x_1 mat(delim:"[",1;0) + x_2mat(delim:"[",2;-5) + x_3mat(delim:"[",-1;3)=mat(delim:"[",4;1)
$
Matrix Eq \
$
mat(delim: "[", 
1,2,-1;0,-5,3
) mat(delim: "[", x_1; x_2; x_3) = mat(delim:"[", 4;1)
$

If $A =m times n$ matrix, Everything below is equivalent.\
($A$ is coefficient matrix, not augmented matrix)\
[m equations; n unknowns; n columns; b in $RR ^m$]\
1. For each b in $RR^m$ $A x=B$ has "a"(at least one) solution.
2. Each b in $RR^m$ is linear combination of columns of $A$\
3. The columns of $A$ span $RR^m$
4. Matrix $A$ has pivot position in every row

= 선형성 \
$A(u+v) = A(u) + A(v)$\
$A(c u) = c(A u)$\

#pagebreak()

= Chapter 1.5 - 1.9\
== Homogeneous Linear System\
$A x = b$ 꼴\
$x=0$ means trivial solution\
if non-zero vector $x$ exist, that is non-trivial solution.\

For Homogeneous Equation(Ax=b),\
if free variable exists, Ax=b has nontrivial solution.

- non-trivial solution has some zero entries, so long as not all of its entries are zero.\

$x=mat(delim:"[", x_1;x_2;x_3)=x_2mat(delim:"[",0.3;1;0) x_3 mat(delim:"[",0.2;0;1)=x_2 u + x_3 v$ \
Solution set is $s p  a n{u, v}$
- $u, v$ are not scalar multiple of the other, the solution set is plane through the origin.

= Parametric Vector Form
Parametric Equation: $upright(x = s u + t v space (s,t in RR))$\
General Solution for Non-Homogeneous Equation ($upright(A x = b)$)\
$upright(b = p + t v_h)$
- $upright(t)$ as general parameter
- For homogeneous, $upright(b = t v_h space (t in RR))$
- Non-Homogeneous => Solution of Homogenous Eq + vector $p$

- RREF 를 통하여 basic/free variables 를 구한 뒤,  general solution 꼴로  표현
- $upright(x = p + v_h)$에서 $upright(p)$ 는 parameter 포함 X, $upright(v_h)$는 parameter을 포함

= Linear Dependency
#grid(
  columns:(30%, 30%),
  gutter: 10pt,
  "Linearly dependent",
  "Linearly Independent",
  "Non-Trivial Solution",
  "Trivial Solution",
  "Det(A) == 0",
  "Det(A) != 0",
  "At least one is linear combination of others",
  "Nothing is linear combination of others",
  "p>n",
  "Depend on",
  "Zero vector in row vector",
  "Depend on"
)
- If $upright(A x = 0 )$ has only trivial solution, columns of A is linearly independent.
- Linearly dependent: 한 평면에 존재
- Linearly independent: 한 평면에 존재 X

= Linear Transformation
- $RR^n "to" RR_m"," RR^n "is called Domain of" T, RR^m "is codomain"$

- trivial(linearly independent) means one-to-one
- T maps $RR^n "onto" RR^m "if and only if columns of" A "span" RR^m$
- onto means Existence question, one-to-one means Uniqueness question.
- $T "is one-to-one" upright(T(x) = b) "has unique solution or none of all."$


#pagebreak()

= Matrix Operations

Matrix addtion: $upright(A + B)$
- They should have same size $m times n$
$A = m times n, B = n times o -> A B = m times o$
- $A B != B A$
- $(A^T)^T = A$
- $(A+B)^T = A^T+B^T$
- $(r A)^T = r A^T$
- $(A B)^T = B^T A^T$ (Remember reverse order)

= Inverse of the Matrix
$A^(-1) A = I$
- Invertible(가역)  : Singular matrix(특이 행렬)
- Non-Invertible(비가역): Non-Singular Matrix(정칙 행렬)
- If $thin("Det" A) != 0$, Matrix $A$ is invertible.
- $(A^(-1))^(-1) = A$
- $(A B)^(-1) = B^(-1) A^(-1)$
- $(A^T)^(-1) = (A^(-1))^T$
- to find $A^(-1), "use Identity Matrix." mat(delim:"[", A, I) "or" mat(delim:"[", I, A) $

= Characterizations of Invertible Matrices
== IMT (Invertible Matric Theorem) for $n times n$ matrix
- A is invertible Matrix
- A is row equivalent to $n times n$ identity Matrix $I_n$
- n has n pivot positions
- $upright(A x = 0)$ has only trivial solution.
- Columns of A form linearly independent set
- Linear transformation $upright(x -> A x)$ is one-to-one
- $upright(A x = b)$ has at least one solution for each b in $RR^n$
- Columns of A span $RR^n$
- Linear transformation $upright(x -> A x)$ is onto
- There is $n times n$ Matrix C/D such that $C A = I, A D=I$
- $A^T$ is invertible matrix

= LU Decomposition (factorization)
- Matrix multiplication involves synthesis of data
- Matrix decompostion involves analysis of data
- $U (m times n)$ is echelon form of matrix $A$
- $L (m times m)$ is unit lower triangular matrix
- $upright(A x = b -> L (U x) = b)$, $upright( "solve y through L y = b, and get x through Ly = b")$
- U is upper triangular form (echelon form of A)
- L is unit lower triangular form (You can get L while finding U)

#pagebreak()

= Subspace of $RR^n$
- Col A : All Linear combinations of Column of A
- Nul A : All Solutions of homogeneous equation $upright(A x = 0)$
- Basis of subspace H : Linearly independent set in H that spans H

== Subspace of $RR^n$
- Zero vector is in H
- For each u and v in H, u+v is in H
- For each u and each scalar c, cu is in H
- {0} and $RR^n$ is subspace of $RR^n$

== Col A
- Column space of matrix A is the set Col A of all linear combinations of columns of A
- If A = $mat(a_1, ..., a_n) "with columns of" RR^m, "Col A is same as span"{a_1,...,a_n}$
- If $upright(A x = b)" is consistent, " upright(b) "is in Col" A$

== Nul A 
- Null space of matrix A is set of Nul A of all solutions of homogeneous equation $upright(A x=0)$
- Zero vector is in Nul A ($A 0 = 0$)
- $upright(A u = 0 "," A v = 0", then " A(u+v) = 0)$

= Basis for Subspace
- Basis for Subspace H of $RR^n$ is linearly independent set in H that spans H.
- Pivot Columns of matrix A forms basis of Column space of a

#pagebreak()

= Dimension of Subspace
- Dimension of vector subspace H: $upright(dim H)$
- count of vector that consists Basis
- $H = {0} -> "dim" H  = 0$
- 직선: 1, 평면: 2, 공간: 3

= Rank
- $upright("Rank" A " means dimension of Column space of matrix A")$
- Counts of Pivot Columns
- Rank A = Rank A|b -> Consistent
  - Rank A = Rank A|b = unknowns -> Unique
  - Rank A = Rank A|b $!=$ unknowns -> Infinite Solutions
- Rank A $!=$ Rank A|b -> No Solution

= Theorem's about subspace
- n = rank A + dim(Nul A) [Rank theorem]
- Let H be a p-dimensional subspace of $RR^n$
  - Any linearly independent set of p elements in H is basis for H
  - any p elements of H that spans on H is basis for H

= Extended IMT (Invertible Matric Theorem)
- The columns of A forms a basis of $RR^n$
- Col A = $RR^n$
- dim(Col A) = n 
- rank A = n
- Nul A = {0}
- dim(Nul A) = 0

#pagebreak()

= Determinant

Determinant
- $2 times 2 "matrix:" A = mat(a_11,a_12;a_21,a_22) -> |A| = a_11a_22 - a_12a_21$ 
- $3 times 3 "matrix: submatrix" A_(i j) <- " exclude i-th row, j-th column"$
#image("assets/2024-04-12-13-38-58.png")
- $det A = Sigma_(j=1)^n (-1)^(1+j)a_(1 j)det A_(1 j)$
- 일반화: $det A = |A| = Delta =  Sigma_(j=1)^n (-1)^(i+j)a_(i j)det A_(i j) = Sigma_(j=1)^n a_(i j)C_(i j) $
- i 의 값이 달라도 det A의 값은 똑같음.
- $n times n "matrix" ,_ "submatrix" A_(i j) (n - 1 times n - 1) $
- $det A != 0 -> "Invertible matrix"$
- Cofactor: $C_(i j) = (-1)^(i+j)det A_(i j)$
- If $A "is" n times n "matrix, " det A "=  product of entries of main diagonals of " A$
- $-n p <= det A <= n p [n times n "matrix", p = "abs(n largest elements in matrix" A)]$

#pagebreak()

= Properties of Determinants

== Theorem 3
- $A~U~I_n$ (If $A$ is invertible)
- Replacement: $A -> B: det A = det B$
- Interchange: $A <->B : det B = - det A$
- Scaling: $det B = k det A$
- zero column/row $-> det A = 0$ 
- $"Col 1" = k"Col b" -> det A = 0$
- $det(k A) = k^n det A$

- $det A = (-1)^("count of interchange") det U$
- $det U = U_(11)+U_(22)+...+U_(n n)$
-  if A = invertible $-> det U != 0$
-  $det A = 0 ->$ rows/columns of A is linearly dependent
-
= Column Operations
- $det A^T = det A$
- $det A B = det A det B$
- $det(A+B) != det A + det B$

#pagebreak()

= Cramer's rule
- $A_i (b) = mat(delim:"[",a_1,a_2,...,b,...a_n)$

- $x_i = (det A_i (b)) / (det A) (i=1,2,3,...,n)$
- $A I_i (x) = A[e_1...x...e_n] = [a_1...b...a_n] = A_i (b)$
- $(det A)(det I_i (x)) = det(A_i (b))$

= A Fomula for $A^(-1)$

- $A^(-1) = (1) / (det A) "adj" A$ 
- adjugate matrix is transpose of matrix of cofactors




#pagebreak()

= Questions
1    선형 방정식, 벡터 방정식, 행렬 방정식의 차이점을 설명하고, 각각의 예시를 들어주세요.

 2   선형 시스템이 적어도 하나의 해를 가지기 위한 충분조건을 설명해주세요. 이때, 계수 행렬의 특성에 대해 언급해주세요.

  3 선형 독립과 선형 종속의 개념을 설명하고, 이들의 특징을 비교해주세요. 또한, 행렬식(determinant)과의 관계에 대해 설명해주세요.

 4   선형 변환(linear transformation)이란 무엇인가요? 선형 변환이 일대일 대응(one-to-one)이거나 전사함수(onto)가 되기 위한 조건을 설명해주세요.

5    행렬의 곱셈에 대해 설명하고, 행렬 곱셈의 성질 중 3가지를 예시와 함께 설명해주세요.

6    가역행렬(invertible matrix)이란 무엇인가요? 가역행렬이 되기 위한 필요충분조건을 3가지 이상 나열해주세요.

7    LU 분해(LU decomposition)에 대해 설명하고, LU 분해를 이용하여 선형 시스템을 푸는 과정을 간단히 설명해주세요.

8    $RR^n$ 공간의 부분공간(subspace)에 대해 설명하고, Col A와 Nul A의 의미를 각각 설명해주세요.


#pagebreak()

#let mathbf(text) = text
#let bm(body) = mathbf(body)

= 선형대수학 문제

    다음 선형 시스템을 행렬 형태로 나타내고, 가우스 소거법을 사용하여 해를 구하세요. $ 2x_1 + 3x_2 - x_3 = 5\
    x_1 - 2x_2 + 4x_3 = 3\
    3x_1 + x_2 - 2x_3 = 4 $
    다음 벡터들이 선형 독립인지 판별하세요. $bm(v_1) = (1, 2, -1)$ $bm(v_2) = (2, 1, 3)$ $bm(v_3) = (3, 5, 1)$
    다음 행렬 A의 LU 분해를 구하세요. $ bm(A) = mat( 2, 1, -1; -3, -1, 2; -2, 1, 2 ) $
    다음 행렬 A가 가역행렬인지 판별하고, 가역행렬이라면 역행렬을 구하세요. $ bm(A) = mat( 1, 2, 1; 0, 1, -1; 2, 3, 4 ) $
    다음 선형 변환 T가 일대일 대응이면서 전사함수인지 판별하세요. $ T : RR^3 -> RR^3, quad T(x_1, x_2, x_3) = (x_1 + x_2, x_2 + x_3, x_1 + x_3) $
    다음 행렬 A의 열공간($C o l bm(A)$)과 영공간($N u l bm(A)$)의 기저를 구하세요. $ bm(A) = mat( 1, 0, 2; -1, 2, 3; 2, -4, -3 ) $