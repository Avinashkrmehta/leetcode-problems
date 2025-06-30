# include<bits/stdc++.h>
using namespace std;

void setZeros(int i, int j, vector<vector<int>>& matrix) {
    int n = matrix.size();
    int m = matrix[0].size();

    // Mark the row and column, skip cells that are already 0 or a special marker (e.g., INT_MIN)
    for (int k = 0; k < m; k++) {
        if (matrix[i][k] != 0 && matrix[i][k] != INT_MIN) {
            matrix[i][k] = INT_MIN; // Use INT_MIN as a unique marker
        }
    }
    for (int k = 0; k < n; k++) {
        if (matrix[k][j] != 0 && matrix[k][j] != INT_MIN) {
            matrix[k][j] = INT_MIN;
        }
    }
}

void setMatrixZeroes(vector<vector<int>>& matrix) {
    int n = matrix.size();
    int m = matrix[0].size();
    
    // First pass to mark the rows and columns
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (matrix[i][j] == 0) {
                setZeros(i, j, matrix);
            }
        }
    }

    // Second pass to set the marked rows and columns to zero
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (matrix[i][j] == INT_MIN) {
                matrix[i][j] = 0; // Set marked cells to zero
            }
        }
    }


    // No need to return anything as we modify the matrix in place
}



// void setMatrixZeroes(vector<vector<int>>& matrix) {
//     int n = matrix.size();
//     int m = matrix[0].size();
//     vector<bool> rowZero(n, false);
//     vector<bool> colZero(m, false);

//     // First pass to find which rows and columns need to be zeroed
//     for (int i = 0; i < n; i++) {
//         for (int j = 0; j < m; j++) {
//             if (matrix[i][j] == 0) {
//                 rowZero[i] = true;
//                 colZero[j] = true;
//             }
//         }
//     }

//     // Second pass to set the rows and columns to zero
//     for (int i = 0; i < n; i++) {
//         for (int j = 0; j < m; j++) {
//             if (rowZero[i] || colZero[j]) {
//                 matrix[i][j] = 0;
//             }
//         }
//     }
// }



int main() {
    vector<vector<int>> matrix = {
        {1, 1, 1},
        {1, 0, 1},
        {1, 1, 1}
    };
    cout << "Original matrix:" << endl;
    int n = matrix.size();
    int m = matrix[0].size();
    cout << n << " " << m << endl;
    setMatrixZeroes(matrix);

    // Print the modified matrix
    for (const auto& row : matrix) {
        for (int val : row) {
            cout << val << " ";
        }
        cout << endl;
    }

    return 0;
}