.class public final Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public static prioritizeExistenceOver(III)I
    .locals 0

    .line 1
    if-le p1, p0, :cond_0

    .line 2
    .line 3
    if-gt p2, p0, :cond_1

    .line 4
    .line 5
    :cond_0
    if-gt p1, p0, :cond_2

    .line 6
    .line 7
    if-gt p2, p0, :cond_2

    .line 8
    .line 9
    :cond_1
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_2
    if-le p1, p0, :cond_3

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_3
    const/4 p0, 0x1

    .line 16
    return p0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    iget-object v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 27
    .line 28
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 29
    .line 30
    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 39
    .line 40
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 41
    .line 42
    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_2
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 51
    .line 52
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 53
    .line 54
    const/16 v2, 0x27

    .line 55
    .line 56
    invoke-static {v2, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    .line 64
    .line 65
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    .line 66
    .line 67
    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 75
    .line 76
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 77
    .line 78
    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 86
    .line 87
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 88
    .line 89
    const/16 v2, 0x22

    .line 90
    .line 91
    invoke-static {v2, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    iget-wide v2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 99
    .line 100
    iget-wide v4, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 101
    .line 102
    cmp-long p0, v2, v4

    .line 103
    .line 104
    const/4 v0, -0x1

    .line 105
    if-gez p0, :cond_7

    .line 106
    .line 107
    :goto_0
    move p0, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    const/4 v2, 0x1

    .line 110
    if-lez p0, :cond_8

    .line 111
    .line 112
    :goto_1
    move p0, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget-wide v3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 115
    .line 116
    iget-wide v5, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 117
    .line 118
    cmp-long p0, v3, v5

    .line 119
    .line 120
    if-gez p0, :cond_9

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_9
    if-lez p0, :cond_a

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_a
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 127
    .line 128
    iget v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 129
    .line 130
    if-eq p0, v3, :cond_b

    .line 131
    .line 132
    sub-int p0, v3, p0

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_b
    iget-wide p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 136
    .line 137
    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 138
    .line 139
    cmp-long p0, p0, v3

    .line 140
    .line 141
    if-gez p0, :cond_c

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_c
    if-lez p0, :cond_d

    .line 145
    .line 146
    move v1, v2

    .line 147
    :cond_d
    move p0, v1

    .line 148
    :goto_2
    return p0
.end method
