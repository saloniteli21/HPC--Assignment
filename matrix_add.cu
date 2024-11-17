#include <stdio.h>
#include <stdlib.h>

void matrixAdd(int *A, int *B, int *C, int rows, int cols) {
    // Perform element-wise matrix addition
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            C[i * cols + j] = A[i * cols + j] + B[i * cols + j];
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
    // Define the dimensions of matrix A and matrix B (both 3x3 for example)
    int rows = 3, cols = 3;

    // Allocate memory for matrices A, B, and C (the result matrix)
    int *A = (int *)malloc(rows * cols * sizeof(int));
    int *B = (int *)malloc(rows * cols * sizeof(int));
    int *C = (int *)malloc(rows * cols * sizeof(int));

    // Initialize matrix A (3x3)
    A[0] = 1; A[1] = 2; A[2] = 3;
    A[3] = 4; A[4] = 5; A[5] = 6;
    A[6] = 7; A[7] = 8; A[8] = 9;

    // Initialize matrix B (3x3)
    B[0] = 9; B[1] = 8; B[2] = 7;
    B[3] = 6; B[4] = 5; B[5] = 4;
    B[6] = 3; B[7] = 2; B[8] = 1;

    // Perform matrix addition
    matrixAdd(A, B, C, rows, cols);

    // Print the result matrix C
    printf("Result matrix C (A + B):\n");
    printMatrix(C, rows, cols);

    // Free the allocated memory
    free(A);
    free(B);
    free(C);

    return 0;
}
