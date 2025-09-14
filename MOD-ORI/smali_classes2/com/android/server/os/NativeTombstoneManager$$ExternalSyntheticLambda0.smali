.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/NativeTombstoneManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/CompletableFuture;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$3:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget v6, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$5:I

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/CompletableFuture;

    .line 16
    .line 17
    iget-object v7, v1, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v7

    .line 20
    :try_start_0
    iget-object v8, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    :goto_0
    if-ge v10, v8, :cond_8

    .line 29
    .line 30
    iget-object v12, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    check-cast v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    invoke-static {v13}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    invoke-virtual {v12, v13, v14}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eqz v13, :cond_0

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget v13, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 63
    .line 64
    if-eq v13, v4, :cond_1

    .line 65
    .line 66
    :cond_0
    move-object/from16 v16, v1

    .line 67
    .line 68
    move v9, v2

    .line 69
    goto :goto_4

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    const/4 v14, 0x0

    .line 78
    :goto_1
    if-ge v14, v13, :cond_6

    .line 79
    .line 80
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    check-cast v15, Landroid/app/ApplicationExitInfo;

    .line 85
    .line 86
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    move-object/from16 v16, v1

    .line 91
    .line 92
    const/4 v1, 0x5

    .line 93
    if-eq v9, v1, :cond_2

    .line 94
    .line 95
    :goto_2
    move v9, v2

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 102
    .line 103
    if-eq v1, v9, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iget v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 111
    .line 112
    if-eq v1, v9, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 116
    .line 117
    .line 118
    move-result-wide v17

    .line 119
    move v9, v2

    .line 120
    iget-wide v1, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 121
    .line 122
    sub-long v17, v17, v1

    .line 123
    .line 124
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    const-wide/16 v17, 0x2710

    .line 129
    .line 130
    cmp-long v1, v1, v17

    .line 131
    .line 132
    if-lez v1, :cond_5

    .line 133
    .line 134
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 135
    .line 136
    move v2, v9

    .line 137
    move-object/from16 v1, v16

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    iget-object v1, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    .line 141
    .line 142
    invoke-virtual {v15, v1}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move-object/from16 v16, v1

    .line 147
    .line 148
    move v9, v2

    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-ge v1, v6, :cond_7

    .line 154
    .line 155
    invoke-virtual {v12}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->toAppExitInfo()Landroid/app/ApplicationExitInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    const/4 v11, 0x1

    .line 163
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 164
    .line 165
    move v2, v9

    .line 166
    move-object/from16 v1, v16

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_8
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v11, :cond_9

    .line 172
    .line 173
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    .line 180
    .line 181
    :cond_9
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :goto_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    throw v0
.end method
