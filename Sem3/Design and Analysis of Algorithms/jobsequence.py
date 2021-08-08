def jobscheduling(jobs,num):
    n = len(jobs)
    for i in range(n):
        for j in range(n - 1 - i):
            if jobs[j][2] < jobs[j+1][2]:
                jobs[j], jobs[j+1] = jobs[j+1],jobs[j]
    res = [False] * num
    job = ['-1']*num
    for i in range(n):
        for j in range(min(num-1, jobs[i][1] - 1),-1,-1):
            if res[j] is False:
                res[j] = True
                job[j] = jobs[i][0]
                break
    print(job)
    total_profit(job,jobs)
def total_profit(job,jobs):
    _ = []
    for i in jobs:
        for j in job:
            if i[0] == j:
                _.append(i[2])
    print(sum(_))
arr = [['6', 2, 99],
       ['3', 3, 67],
       ['4', 1, 45],
       ['2', 4, 34],
       ['5', 5, 23],
       ['1',3,17]]
jobscheduling(arr,5)