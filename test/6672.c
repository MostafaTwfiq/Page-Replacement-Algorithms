#include <stdio.h>
#include <stdlib.h>
#include "string.h"

//gcc 6672.c -o lab4
//cat inputfile | ./lab4 | diff outputfile -

int *addPage(int *pageRef, int *len, int *size, int element) {
    if (*len == *size) {
        *size *= 2;
        pageRef = (int *) realloc(pageRef, sizeof(int) * (*size));
    }

    pageRef[(*len)++] = element;

    return pageRef;
}

void printPageBuff(int buff[], int len) {
    for (int i = 0; i < len; i++)
        fprintf(stdout, buff[i] < 10 ? "0%d " : "%d ", buff[i]);

}


short buffContains(const int buff[], int len, int element) {
    for (int i = 0; i < len; i++) {
        if (buff[i] == element)
            return 1;

    }

    return 0;
}

int getOptimalToReplace(int buff[], int buffSize, int *pageRef, int len, int startIndex) {
    int finalIndex = -1;
    for (int i = 0; i < buffSize; i++) {
        int index = -1;
        for (int j = startIndex; j < len; j++) {
            if (pageRef[j] == buff[i]) {
                index = j;
                break;
            } else if (j == len - 1) {
                return i;
            }
        }

        if (index > finalIndex)
            finalIndex = index;

    }

    for (int i = 0; i < buffSize; i++) {
        if (pageRef[finalIndex] == buff[i])
            return i;
    }

    return -1;

}


void optimalAlgo(int buff[], int buffSize, int *pageRef, int pageRefLen) {
    int numOfPageFaults = 0;
    int buffCurr = 0;

    fprintf(stdout, "Replacement Policy = OPTIMAL\n");
    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Page   Content of Frames\n");
    fprintf(stdout, "----   -----------------\n");

    for (int i = 0; i < pageRefLen; i++) {
        fprintf(stdout, pageRef[i] < 10 ? "0%d " : "%d ", pageRef[i]);
        if (buffCurr == buffSize) {

            if (!buffContains(buff, buffCurr, pageRef[i])) {
                fprintf(stdout, "F");
                numOfPageFaults++;
                //--------------------------------------
                int optimalToReplace = getOptimalToReplace(buff, buffSize, pageRef, pageRefLen, i + 1);
                buff[optimalToReplace] = pageRef[i];
                //---------------------------------------
                fprintf(stdout, "   ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            } else {
                fprintf(stdout, "    ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            }



        } else {
            if (!buffContains(buff, buffCurr, pageRef[i]))
                buff[buffCurr++] = pageRef[i];

            fprintf(stdout, "    ");
            printPageBuff(buff, buffCurr);
            fprintf(stdout, "\n");
        }
    }

    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Number of page faults = %d\n", numOfPageFaults);

}



void fifoAlgo(int buff[], int buffSize, int *pageRef, int pageRefLen) {
    int numOfPageFaults = 0;
    int buffCurr = 0;
    int toBeReplaced = 0;

    fprintf(stdout, "Replacement Policy = FIFO\n");
    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Page   Content of Frames\n");
    fprintf(stdout, "----   -----------------\n");

    for (int i = 0; i < pageRefLen; i++) {
        fprintf(stdout, pageRef[i] < 10 ? "0%d " : "%d ", pageRef[i]);
        if (buffCurr == buffSize) {
            if (!buffContains(buff, buffCurr, pageRef[i])) {
                fprintf(stdout, "F");
                numOfPageFaults++;
                buff[toBeReplaced % buffSize] = pageRef[i];
                toBeReplaced++;
                fprintf(stdout, "   ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            } else {
                fprintf(stdout, "    ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            }



        } else {
            if (!buffContains(buff, buffCurr, pageRef[i]))
                buff[buffCurr++] = pageRef[i];

            fprintf(stdout, "    ");
            printPageBuff(buff, buffCurr);
            fprintf(stdout, "\n");
        }
    }

    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Number of page faults = %d\n", numOfPageFaults);

}

int getLastOccurrence(int *arr, int len, int element) {

    int index = -1;

    for (int i = 0; i < len; i++) {
        if (arr[i] == element)
            index = i;

    }

    return index;

}

int getLRU(int buff[], int buffSize, int *pageRef, int currPage) {
    int indexOfLRU = currPage;

    for (int i = 0, temp; i < buffSize; i++) {
        temp = getLastOccurrence(pageRef, currPage, buff[i]);
        indexOfLRU = indexOfLRU > temp ? temp : indexOfLRU;
    }

    for (int i = 0; i < buffSize; i++) {
        if (buff[i] == pageRef[indexOfLRU])
            return i;

    }

    return -1;

}

void lruAlgo(int buff[], int buffSize, int *pageRef, int pageRefLen) {
    int numOfPageFaults = 0;
    int buffCurr = 0;

    fprintf(stdout, "Replacement Policy = LRU\n");
    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Page   Content of Frames\n");
    fprintf(stdout, "----   -----------------\n");

    for (int i = 0; i < pageRefLen; i++) {
        fprintf(stdout, pageRef[i] < 10 ? "0%d " : "%d ", pageRef[i]);
        if (buffCurr == buffSize) {

            if (!buffContains(buff, buffCurr, pageRef[i])) {
                fprintf(stdout, "F");
                numOfPageFaults++;
                //--------------------------------------
                int lruIndex = getLRU(buff, buffSize, pageRef, i);
                buff[lruIndex] = pageRef[i];
                //---------------------------------------
                fprintf(stdout, "   ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            } else {
                fprintf(stdout, "    ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            }



        } else {
            if (!buffContains(buff, buffCurr, pageRef[i]))
                buff[buffCurr++] = pageRef[i];

            fprintf(stdout, "    ");
            printPageBuff(buff, buffCurr);
            fprintf(stdout, "\n");
        }
    }

    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Number of page faults = %d\n", numOfPageFaults);

}




void clockAlgo(int buff[], int buffSize, int *pageRef, int pageRefLen) {
    int numOfPageFaults = 0;
    int buffCurr = 0;
    int useBit[buffSize];
    int point = 0;

    fprintf(stdout, "Replacement Policy = CLOCK\n");
    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Page   Content of Frames\n");
    fprintf(stdout, "----   -----------------\n");

    for (int i = 0; i < pageRefLen; i++) {
        fprintf(stdout, pageRef[i] < 10 ? "0%d " : "%d ", pageRef[i]);
        if (buffCurr == buffSize) {

            if (!buffContains(buff, buffCurr, pageRef[i])) {
                fprintf(stdout, "F");
                numOfPageFaults++;
                //--------------------------------------
                while (useBit[point] != 0) {
                    useBit[point] = 0;
                    point = (point + 1) % buffSize;
                }

                buff[point] = pageRef[i];
                useBit[point] = 1;
                point = (point + 1) % buffSize;
                //---------------------------------------
                fprintf(stdout, "   ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            } else {
                int index = -1;
                for (int j = 0; j < buffSize; j++) {
                    if (buff[j] == pageRef[j]) {
                        index = j;
                        break;
                    }
                }
                useBit[index] = 1;
                fprintf(stdout, "    ");
                printPageBuff(buff, buffCurr);
                fprintf(stdout, "\n");
            }



        } else {
            if (!buffContains(buff, buffCurr, pageRef[i]))
                buff[buffCurr++] = pageRef[i];

            useBit[buffCurr - 1] = 1;
            fprintf(stdout, "    ");
            printPageBuff(buff, buffCurr);
            fprintf(stdout, "\n");
        }
    }

    fprintf(stdout, "-------------------------------------\n");
    fprintf(stdout, "Number of page faults = %d\n", numOfPageFaults);

}



int main() {

    int *pageRef = (int *) malloc(sizeof(int) * 10);
    int pageRefSize = 10;
    int pageRefLen = 0;

    char input[10];
    fgets(input, 10, stdin);
    input[strlen(input) - 1] = '\0';

    int buffSize = atoi(input);
    int buff[buffSize];

    fgets(input, 10, stdin);
    input[strlen(input) - 1] = '\0';

    char algoType[10];
    strcpy(algoType, input);

    while (fgets(input, 10, stdin)) {
        input[strlen(input) - 1] = '\0';
        if (atoi(input) == -1) {
            break;
        }

        pageRef = addPage(pageRef, &pageRefLen, &pageRefSize, atoi(input));
    }

    if (!strcmp(algoType, "OPTIMAL")) {
        optimalAlgo(buff, buffSize, pageRef, pageRefLen);
    } else if (!strcmp(algoType, "FIFO")) {
        fifoAlgo(buff, buffSize, pageRef, pageRefLen);
    } else if (!strcmp(algoType, "LRU")) {
        lruAlgo(buff, buffSize, pageRef, pageRefLen);
    } else if (!strcmp(algoType, "CLOCK")) {
        clockAlgo(buff, buffSize, pageRef, pageRefLen);
    }


    return 0;
}
