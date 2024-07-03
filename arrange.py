import random
import json


def split_test_train(label, source_file, desired_sample_size, seed):
    random.seed(seed)
    class1 = []
    train = []
    test = []
    buffer = []

    #open file and list the file into memory under class1 variable
    with open(source_file) as file_in:
        for line in file_in:
            class1.append(line.strip('\n\r'))

    while len(buffer) != desired_sample_size:
        rand = random.randint(0,len(class1)-1)
        if not rand in buffer:
            buffer.append(rand)

    #append the values of random data in the test array
    for x in buffer:
        test.append(class1[x].strip('\n\r'))


    #remove the remaining values to form the train data array
    train = [x for x in class1 if x not in test]

    return (label, test, train)

def create_val(label, train_data, split_val):
    print(label,": ", len(train_data))
    buffer = []
    new_train = []
    val = []
 
    while len(buffer) != int(len(train_data)*split_val):
        rand = random.randint(0,len(train_data)-1)
        if not rand in buffer:
            buffer.append(rand)

    for x in buffer:
        val.append(train_data[x])

    new_train = [x for x in train_data if x not in val]
    print(label,": ", len(new_train),"\n")
    return (label, val, new_train)

def convert_json(meta, test_file, train_file, val_file):
    #content = []
    #with open("test.txt") as file_in:
    #    for line in file_in:
    #        content.append(line.strip('\n\r'))
   # 
    #print(content)
    test = {}
    for key, value in meta[0].items():
        test.update({key: value}) 

    # convert into JSON:
    test_json = json.dumps(test)
    
    file = open(test_file, 'a')
    #Append content to the file
    for line in test_json:
        file.write(line)

    train = {}
    for key, value in meta[1].items():
        train.update({key: value}) 

    # convert into JSON:
    train_json = json.dumps(train)

    file = open(train_file, 'a')
    #Append content to the file
    for line in train_json:
        file.write(line)

    val = {}
    for key, value in meta[2].items():
        val.update({key: value}) 

    # convert into JSON:
    val_json = json.dumps(val)

    file = open(val_file, 'a')
    #Append content to the file
    for line in val_json:
        file.write(line)


(label1, atest, atrain) = split_test_train("underaged","class1.txt",20,4532423)
(label2, btest, btrain) = split_test_train("excellent","class2.txt",20,4363466)
(label3, ctest, ctrain) = split_test_train("overaged","class3.txt",20,87687)

(val_label1, val_1, new_train1) = create_val("underaged",atrain,0.15)
(val_label2, val_2, new_train2) = create_val("excellent",btrain,0.15)
(val_label3, val_3, new_train3) = create_val("overaged",ctrain,0.15)

#test_files = ["test1.txt","test2.txt","test3.txt"]
#train_files = ["train1.txt","train2.txt","train3.txt"]
#combine(test_files,train_files,"test.txt","train.txt")


convert_json([{label1:atest, label2:btest, label3:ctest},
              {label1:new_train1,label2:new_train2,label3:new_train3},
              {label1:val_1,label2:val_2,label3:val_3}
              ],
              "meta/test.json",
              "meta/train.json",
              "meta/val.json")


#set a 20 test samples 17 26 10
#set b 47 test samples 4532423 4363466 87687
#set c 100 test samples