struct firsttype {
    int f0;
};


constant struct firsttype myglobal = {1234};



kernel void test_union1(global float* data) {
    label0:;
    struct firsttype v0 = (&myglobal)[0];
}

kernel void test_union(global float* data) {
    label0:;
    float v0 = (((constant float*)(&myglobal)))[0];
}
