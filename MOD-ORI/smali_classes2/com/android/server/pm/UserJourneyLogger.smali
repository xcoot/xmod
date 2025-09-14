.class public final Lcom/android/server/pm/UserJourneyLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToUserJourneyMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method

.method public static getUserJourneyKey(II)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x64

    .line 2
    .line 3
    add-int/2addr p0, p1

    .line 4
    return p0
.end method

.method public static getUserTypeForStatsd(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v9, -0x1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    sparse-switch v10, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string v10, "android.os.usertype.profile.CLONE"

    .line 25
    .line 26
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    move v9, v0

    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_1
    const-string v10, "android.os.usertype.full.DEMO"

    .line 38
    .line 39
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    move v9, v1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v10, "android.os.usertype.full.RESTRICTED"

    .line 50
    .line 51
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v9, v2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v10, "android.os.usertype.full.SECONDARY"

    .line 61
    .line 62
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v9, v3

    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v10, "android.os.usertype.full.SYSTEM"

    .line 72
    .line 73
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move v9, v4

    .line 81
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v10, "android.os.usertype.system.HEADLESS"

    .line 83
    .line 84
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v9, v5

    .line 92
    goto :goto_0

    .line 93
    :sswitch_6
    const-string v10, "android.os.usertype.profile.MANAGED"

    .line 94
    .line 95
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    move v9, v6

    .line 103
    goto :goto_0

    .line 104
    :sswitch_7
    const-string v10, "android.os.usertype.full.GUEST"

    .line 105
    .line 106
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    move v9, v7

    .line 114
    goto :goto_0

    .line 115
    :sswitch_8
    const-string v10, "android.os.usertype.profile.PRIVATE"

    .line 116
    .line 117
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    move v9, v8

    .line 125
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    return v8

    .line 129
    :pswitch_0
    return v0

    .line 130
    :pswitch_1
    return v4

    .line 131
    :pswitch_2
    return v3

    .line 132
    :pswitch_3
    return v6

    .line 133
    :pswitch_4
    return v7

    .line 134
    :pswitch_5
    return v1

    .line 135
    :pswitch_6
    return v2

    .line 136
    :pswitch_7
    return v5

    .line 137
    :pswitch_8
    const/16 p0, 0x9

    .line 138
    .line 139
    return p0

    .line 140
    nop

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x4e0e8e80 -> :sswitch_8
        -0x41cc9709 -> :sswitch_7
        -0x986a464 -> :sswitch_6
        0x206d3ba -> :sswitch_5
        0x1cf29ad0 -> :sswitch_4
        0x3825fd13 -> :sswitch_3
        0x65fcf07c -> :sswitch_2
        0x6939dec4 -> :sswitch_1
        0x7534089a -> :sswitch_0
    .end sparse-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static journeyToEvent(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_0
    const/16 p0, 0xa

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x9

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0x8

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_3
    const/4 p0, 0x7

    .line 16
    return p0

    .line 17
    :pswitch_4
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :pswitch_5
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :pswitch_6
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget v3, v2, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 19
    .line 20
    invoke-static {v3}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x4

    .line 25
    const/4 v8, 0x2

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, v2

    .line 28
    move v5, p1

    .line 29
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 30
    .line 31
    .line 32
    const/4 v6, -0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, -0x1

    .line 35
    const/4 v10, 0x2

    .line 36
    move-object v3, p0

    .line 37
    move-object v4, v2

    .line 38
    move v5, p2

    .line 39
    move v7, p1

    .line 40
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v2

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    monitor-exit v0

    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 5
    .line 6
    const/16 v4, 0x9

    .line 7
    .line 8
    invoke-static {v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v6, p2, Landroid/content/pm/UserInfo;->id:I

    .line 24
    .line 25
    iget-object v2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget v8, p2, Landroid/content/pm/UserInfo;->flags:I

    .line 32
    .line 33
    move-object v2, p0

    .line 34
    move v5, p1

    .line 35
    move v9, p3

    .line 36
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final logNullUserJourneyError(IIIILjava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v9, v0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v9

    .line 5
    move v7, p1

    .line 6
    move/from16 v8, p3

    .line 7
    .line 8
    :try_start_0
    invoke-static {v8, p1}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    iget-object v1, v0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v11, v1

    .line 19
    check-cast v11, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x4

    .line 27
    move-object v1, p0

    .line 28
    move-object v2, v11

    .line 29
    move/from16 v3, p3

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 32
    .line 33
    .line 34
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v12, 0x4

    .line 39
    move-object v1, p0

    .line 40
    move-object v2, v11

    .line 41
    move v3, p1

    .line 42
    move v4, p2

    .line 43
    move/from16 v5, p3

    .line 44
    .line 45
    move/from16 v7, p4

    .line 46
    .line 47
    move v8, v12

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    .line 55
    .line 56
    monitor-exit v9

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0
.end method

.method public final logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    const-wide v3, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v10, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 24
    .line 25
    invoke-direct {v10, v0, v1, p2}, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;-><init>(JI)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {p2, v3, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget p2, v10, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 34
    .line 35
    invoke-static {p2}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x1

    .line 40
    const/4 v9, -0x1

    .line 41
    move-object v4, p0

    .line 42
    move-object v5, v10

    .line 43
    move v6, p1

    .line 44
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 45
    .line 46
    .line 47
    monitor-exit v2

    .line 48
    return-object v10

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v9

    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq v8, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v8, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    :cond_0
    :goto_0
    move v5, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    :try_start_0
    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    .line 20
    .line 21
    move/from16 v10, p3

    .line 22
    .line 23
    invoke-static {v1, v10}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    iget-object v1, v0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v12, v1

    .line 34
    check-cast v12, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 35
    .line 36
    if-eqz v12, :cond_2

    .line 37
    .line 38
    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    .line 39
    .line 40
    iget v1, v12, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 41
    .line 42
    invoke-static {v1}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    move-object v1, p0

    .line 47
    move-object v2, v12

    .line 48
    move/from16 v6, p4

    .line 49
    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 51
    .line 52
    .line 53
    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    iget-object v1, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iget v7, v7, Landroid/content/pm/UserInfo;->flags:I

    .line 62
    .line 63
    move-object v1, p0

    .line 64
    move-object v2, v12

    .line 65
    move/from16 v3, p3

    .line 66
    .line 67
    move v4, p1

    .line 68
    move/from16 v8, p4

    .line 69
    .line 70
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    .line 77
    .line 78
    monitor-exit v9

    .line 79
    return-object v12

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    monitor-exit v9

    .line 83
    const/4 v0, 0x0

    .line 84
    return-object v0

    .line 85
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw v0
.end method

.method public final logUserLifecycleEvent(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    div-int/lit8 v4, v3, 0x64

    .line 20
    .line 21
    if-ne v4, p1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    :goto_1
    move-object v3, v1

    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const/4 v1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :goto_2
    const/4 v7, -0x1

    .line 43
    move-object v2, p0

    .line 44
    move v4, p1

    .line 45
    move v5, p2

    .line 46
    move v6, p3

    .line 47
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 v5, 0x4

    .line 5
    const/4 v6, 0x0

    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move/from16 v3, p2

    .line 10
    .line 11
    move/from16 v4, p3

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v8, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 18
    .line 19
    move-object v7, p0

    .line 20
    move/from16 v10, p2

    .line 21
    .line 22
    move/from16 v11, p3

    .line 23
    .line 24
    move/from16 v12, p4

    .line 25
    .line 26
    move/from16 v13, p5

    .line 27
    .line 28
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-wide/16 v9, -0x1

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    move/from16 v3, p2

    .line 13
    .line 14
    move/from16 v4, p3

    .line 15
    .line 16
    move/from16 v5, p4

    .line 17
    .line 18
    move/from16 v6, p5

    .line 19
    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-wide v3, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    .line 31
    .line 32
    sub-long v14, v1, v3

    .line 33
    .line 34
    iget-wide v6, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 35
    .line 36
    move-object/from16 v5, p0

    .line 37
    .line 38
    move/from16 v8, p2

    .line 39
    .line 40
    move/from16 v9, p3

    .line 41
    .line 42
    move/from16 v10, p4

    .line 43
    .line 44
    move/from16 v11, p5

    .line 45
    .line 46
    move/from16 v12, p6

    .line 47
    .line 48
    move/from16 v13, p7

    .line 49
    .line 50
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v5, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    monitor-exit v0

    .line 48
    return-object p0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public writeUserLifecycleEventOccurred(JIIII)V
    .locals 7

    .line 1
    const/16 v0, 0x109

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move v6, p6

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public writeUserLifecycleJourneyReported(JIIIIIIJ)V
    .locals 11

    .line 1
    const/16 v0, 0x108

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move/from16 v5, p5

    .line 7
    .line 8
    move/from16 v6, p6

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    move-wide/from16 v9, p9

    .line 15
    .line 16
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
