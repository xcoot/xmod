.class public abstract Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCurSlotStartTime:[J

.field public final mTimeSlotSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 3
    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 6
    .line 7
    new-array p1, v0, [J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final add(Lcom/android/server/am/BaseAppStateEvents;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    instance-of v2, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    .line 4
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v2

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v4

    if-ge v3, v4, :cond_a

    .line 6
    iget-object v4, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object/from16 v17, v1

    move v2, v3

    goto/16 :goto_5

    .line 8
    :cond_3
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    .line 9
    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    iget-object v7, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    move-object/from16 v17, v1

    move v2, v3

    move-object/from16 v16, v6

    goto/16 :goto_4

    .line 10
    :cond_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 11
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 12
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 13
    aget-wide v11, v6, v3

    .line 14
    aget-wide v13, v7, v3

    .line 15
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v15, v3

    int-to-long v2, v5

    move-object/from16 v16, v6

    iget-wide v5, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    mul-long/2addr v2, v5

    sub-long v2, v11, v2

    .line 16
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v17, v1

    int-to-long v0, v4

    mul-long/2addr v0, v5

    sub-long v0, v13, v0

    .line 17
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    :goto_1
    cmp-long v4, v20, v18

    if-gtz v4, :cond_8

    cmp-long v4, v20, v2

    if-ltz v4, :cond_6

    cmp-long v4, v20, v11

    if-gtz v4, :cond_6

    .line 19
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    cmp-long v22, v20, v0

    if-ltz v22, :cond_7

    cmp-long v22, v20, v13

    if-gtz v22, :cond_7

    .line 20
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto :goto_3

    :cond_7
    const/16 v22, 0x0

    :goto_3
    add-int v4, v4, v22

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long v20, v20, v5

    goto :goto_1

    :cond_8
    move-object/from16 v4, p0

    .line 22
    iget-object v0, v4, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v8, v0, v15

    cmp-long v0, v11, v13

    if-gez v0, :cond_9

    .line 23
    aget-wide v0, v7, v15

    aput-wide v0, v16, v15

    .line 24
    :cond_9
    aget-wide v0, v16, v15

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v0

    move v2, v15

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(IJ)V

    move-object v0, v4

    goto :goto_5

    .line 25
    :goto_4
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v1, v2

    .line 26
    aget-wide v3, v7, v2

    aput-wide v3, v16, v2

    :goto_5
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final addEvent(J)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 2
    .line 3
    rem-long v2, p1, v0

    .line 4
    .line 5
    sub-long v2, p1, v2

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    aget-object v4, v4, v5

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 20
    .line 21
    aput-object v4, v6, v5

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 28
    .line 29
    const/4 v8, 0x1

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    aget-wide v9, v7, v5

    .line 41
    .line 42
    :goto_0
    cmp-long v6, v9, v2

    .line 43
    .line 44
    if-gez v6, :cond_2

    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-long/2addr v9, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v8

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    aput-wide v2, v7, v5

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(IJ)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public getCurrentSlotStartTime(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 2
    .line 3
    aget-wide p0, p0, p1

    .line 4
    .line 5
    return-wide p0
.end method

.method public final getTotalEventsSince(JJ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 16
    .line 17
    rem-long v4, p1, v2

    .line 18
    .line 19
    sub-long/2addr p1, v4

    .line 20
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 21
    .line 22
    aget-wide v4, p0, v1

    .line 23
    .line 24
    cmp-long v6, p1, v4

    .line 25
    .line 26
    if-lez v6, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    rem-long v6, p3, v2

    .line 30
    .line 31
    sub-long/2addr p3, v6

    .line 32
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p3

    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    aget-wide v4, p0, v1

    .line 41
    .line 42
    :goto_0
    cmp-long p0, v4, p1

    .line 43
    .line 44
    if-ltz p0, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    cmp-long v6, v4, p3

    .line 63
    .line 64
    if-gtz v6, :cond_2

    .line 65
    .line 66
    add-int/2addr v1, p0

    .line 67
    :cond_2
    sub-long/2addr v4, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    return v1
.end method

.method public final trimEvents(IJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 15
    .line 16
    rem-long v3, p2, v1

    .line 17
    .line 18
    sub-long/2addr p2, v3

    .line 19
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 20
    .line 21
    aget-wide p0, p0, p1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/lit8 v3, v3, -0x1

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    mul-long/2addr v3, v1

    .line 31
    sub-long/2addr p0, v3

    .line 32
    :goto_0
    cmp-long v3, p0, p2

    .line 33
    .line 34
    if-gez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-lez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    add-long/2addr p0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return-void
.end method
