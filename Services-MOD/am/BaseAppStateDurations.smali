.class public abstract Lcom/android/server/am/BaseAppStateDurations;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 19

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 8
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iget-wide v5, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide v7, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v5, v12

    if-nez v14, :cond_2

    cmp-long v14, v7, v12

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    return-object v4

    :cond_2
    :goto_1
    const/4 v14, 0x1

    if-eqz v10, :cond_3

    if-nez v11, :cond_3

    move v15, v14

    goto :goto_2

    :cond_3
    move v15, v9

    :goto_2
    cmp-long v16, v5, v7

    if-nez v16, :cond_5

    xor-int/lit8 v10, v10, 0x1

    xor-int/lit8 v11, v11, 0x1

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 11
    iget-wide v6, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_3

    :cond_4
    move-object v5, v2

    move-wide v6, v12

    .line 12
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 13
    iget-wide v12, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_6

    :cond_5
    if-gez v16, :cond_7

    xor-int/lit8 v10, v10, 0x1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 15
    iget-wide v12, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    move-wide/from16 v17, v7

    move-wide v6, v12

    move-wide/from16 v12, v17

    goto :goto_6

    :cond_7
    xor-int/lit8 v11, v11, 0x1

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 17
    iget-wide v12, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_5

    :cond_8
    move-object v7, v3

    :goto_5
    move-wide/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v7

    move-wide/from16 v6, v17

    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    move v14, v9

    :goto_7
    if-eq v15, v14, :cond_b

    .line 18
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v12

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-object p0
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 19

    .line 1
    if-eqz p2, :cond_10

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_a

    .line 11
    :cond_0
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 19
    goto/16 :goto_9

    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 41
    new-instance v4, Ljava/util/LinkedList;

    .line 43
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 46
    iget-wide v5, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 48
    iget-wide v7, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 50
    const/4 v9, 0x0

    .line 51
    move v10, v9

    .line 52
    move v11, v10

    .line 53
    :goto_0
    const-wide v12, 0x7fffffffffffffffL

    .line 58
    cmp-long v14, v5, v12

    .line 60
    if-nez v14, :cond_3

    .line 62
    cmp-long v14, v7, v12

    .line 64
    if-eqz v14, :cond_2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    return-object v4

    .line 68
    :cond_3
    :goto_1
    const/4 v14, 0x1

    .line 69
    if-nez v10, :cond_5

    .line 71
    if-eqz v11, :cond_4

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v15, v9

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    :goto_2
    move v15, v14

    .line 77
    :goto_3
    cmp-long v16, v5, v7

    .line 79
    if-nez v16, :cond_7

    .line 81
    xor-int/lit8 v10, v10, 0x1

    .line 83
    xor-int/lit8 v11, v11, 0x1

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_6

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 97
    iget-wide v6, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move-object v5, v2

    .line 101
    move-wide v6, v12

    .line 102
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_b

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 114
    iget-wide v12, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 116
    goto :goto_7

    .line 117
    :cond_7
    if-gez v16, :cond_9

    .line 119
    xor-int/lit8 v10, v10, 0x1

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_8

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 133
    iget-wide v12, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    move-object v5, v2

    .line 137
    :goto_5
    move-wide/from16 v17, v7

    .line 139
    move-wide v6, v12

    .line 140
    move-wide/from16 v12, v17

    .line 142
    goto :goto_7

    .line 143
    :cond_9
    xor-int/lit8 v11, v11, 0x1

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_a

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 157
    iget-wide v12, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 159
    goto :goto_6

    .line 160
    :cond_a
    move-object v7, v3

    .line 161
    :goto_6
    move-wide/from16 v17, v5

    .line 163
    move-object v5, v2

    .line 164
    move-object v2, v3

    .line 165
    move-object v3, v7

    .line 166
    move-wide/from16 v6, v17

    .line 168
    :cond_b
    :goto_7
    if-nez v10, :cond_d

    .line 170
    if-eqz v11, :cond_c

    .line 172
    goto :goto_8

    .line 173
    :cond_c
    move v14, v9

    .line 174
    :cond_d
    :goto_8
    if-eq v15, v14, :cond_e

    .line 176
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 182
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_e
    move-object v2, v5

    .line 186
    move-wide v5, v6

    .line 187
    move-wide v7, v12

    .line 188
    goto/16 :goto_0

    .line 190
    :cond_f
    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/util/LinkedList;

    .line 196
    return-object v0

    .line 197
    :cond_10
    :goto_a
    return-object p1
.end method

.method public final addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 3
    aget-object v1, v0, p3

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    aput-object v1, v0, p3

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 16
    aget-object v0, v0, p3

    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 21
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 24
    move-result v1

    .line 25
    if-eq p1, v1, :cond_1

    .line 27
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    iget-wide p1, p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 35
    move-result-wide p1

    .line 36
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(IJ)V

    .line 39
    return-void
.end method

.method public final formatEventSummary(IJ)Ljava/lang/String;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 6
    move-result-wide v4

    .line 7
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move-wide v6, p2

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    .line 13
    move-result-wide p0

    .line 14
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getTotalDurationsSince(IJJ)J
    .locals 16

    .line 1
    move-wide/from16 v0, p2

    .line 3
    move-object/from16 v2, p0

    .line 5
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 7
    aget-object v2, v2, p1

    .line 9
    const-wide/16 v3, 0x0

    .line 11
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x1

    .line 25
    move-wide v7, v3

    .line 26
    move-wide v9, v7

    .line 27
    move v11, v6

    .line 28
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v12

    .line 32
    if-eqz v12, :cond_3

    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 40
    iget-wide v12, v12, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 42
    cmp-long v14, v12, v0

    .line 44
    if-ltz v14, :cond_2

    .line 46
    if-eqz v11, :cond_1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 52
    move-result-wide v14

    .line 53
    sub-long/2addr v12, v14

    .line 54
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 57
    move-result-wide v12

    .line 58
    add-long/2addr v7, v12

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    move-wide v9, v12

    .line 61
    :goto_2
    xor-int/lit8 v11, v11, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 67
    move-result v2

    .line 68
    and-int/2addr v2, v6

    .line 69
    if-ne v2, v6, :cond_4

    .line 71
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 74
    move-result-wide v0

    .line 75
    sub-long v0, p4, v0

    .line 77
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v0

    .line 81
    add-long/2addr v7, v0

    .line 82
    :cond_4
    return-wide v7

    .line 83
    :cond_5
    :goto_3
    return-wide v3
.end method

.method public final isActive(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 3
    aget-object p0, p0, p1

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 10
    move-result p0

    .line 11
    const/4 p1, 0x1

    .line 12
    and-int/2addr p0, p1

    .line 13
    if-ne p0, p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v0, p0

    if-le v0, p2, :cond_1

    aget-object v0, p0, p2

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    aput-object p1, p0, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 18
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " isActive[0]="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v3}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " totalDurations[0]="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v6

    .line 47
    const-wide/16 v1, 0x0

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 52
    move-result-wide v4

    .line 53
    move-object v2, p0

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final trimEvents(IJ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 3
    aget-object p0, p0, p1

    .line 5
    if-nez p0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le p1, v1, :cond_3

    .line 16
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 22
    iget-wide v2, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 24
    cmp-long p1, v2, p2

    .line 26
    if-ltz p1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 35
    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 37
    cmp-long p1, v1, p2

    .line 39
    if-lez p1, :cond_2

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 61
    move-result p1

    .line 62
    if-ne p1, v1, :cond_4

    .line 64
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 70
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 76
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 78
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 81
    move-result-wide p2

    .line 82
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    .line 85
    :cond_4
    :goto_1
    return-void
.end method
