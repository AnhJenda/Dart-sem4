
void main(){
  List<int> numList = [1, 5, 2, 3, 4, 0, 9,11,10];
  print("List ban đầu: ");
  print(numList);
  bubbleSort(numList);

  List<int> numList2 = [1, 5, 2, 3, 4, 0, 9,11,10];
  print("List ban đầu:");
  print(numList2);
  insertionSort(numList2);
}

void bubbleSort(List<int> lsNum){
  print("Bubble Sort: ");
  int temp;
  for(int i = 0; i < lsNum.length; i++){
    for(int j = i+1; j < lsNum.length; j++){
      if(lsNum[i] < lsNum[j]){
        temp = lsNum[i];
        lsNum[i] = lsNum[j];
        lsNum[j] = temp;
      }
    }
  }
  print("List đã sắp xếp: ");
  print(lsNum);
}

void insertionSort (List<int> lsNum){
  print("Insertion Sort: ");

  int i, j, key;
  for(i = 1; i < lsNum.length; i++){
    key = lsNum[i];        
    print("key: $key");         
    j = i - 1;
    while(j >= 0 && lsNum[j] > key ){
      lsNum[j+1] = lsNum[j];
      j--;
    }
    lsNum[j+1] = key;
    print(lsNum);
  }

  print("List đã sắp xếp: ");
  print(lsNum);
}
