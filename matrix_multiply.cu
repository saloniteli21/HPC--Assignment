#include <stdio.h>
#include <stdlib.h>

void matrixMultiply(int *A, int *B, int *C, int A_rows, int A_cols, int B_cols) {
    // Multiply A (A_rows x A_cols) with B (A_cols x B_cols) and store result in C (A_rows x B_cols)
    for (int i = 0; i < A_rows; i++) {
        for (int j = 0; j < B_cols; j++) {
            C[i * B_cols + j] = 0;
            for (int k = 0; k < A_cols; k++) {
                C[i * B_cols + j] += A[i * A_cols + k] * B[k * B_cols + j];
            }
        }
    }
}

void printMatrix(int *matrix, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

int main() {
    // Define the dimensions of matrix A (2x3) and matrix B (3x2)
    int A_rows = 2, A_cols = 3;
    int B_rows = 3, B_cols = 2;

    // Allocate memory for matrices A, B, and C
    int *A = (int *)malloc(A_rows * A_cols * sizeof(int));
    int *B = (int *)malloc(B_rows * B_cols * sizeof(int));
    int *C = (int *)malloc(A_rows * B_cols * sizeof(int));

    // Initialize matrix A (2x3)
    A[0] = 1; A[1] = 2; A[2] = 3;
    A[3] = 4; A[4] = 5; A[5] = 6;

    // Initialize matrix B (3x2)
    B[0] = 7; B[1] = 8;
    B[2] = 9; B[3] = 10;
    B[4] = 11; B[5] = 12;

    // Call matrix multiplication function
    matrixMultiply(A, B, C, A_rows, A_cols, B_cols);

    // Output the result matrix C
    printf("Result matrix C (A * B):\n");
    printMatrix(C, A_rows, B_cols);

    // Free dynamically allocated memory
    free(A);
    free(B);
    free(C);

    return 0;
}