.class public final Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"


# instance fields
.field public mElapsedDuration:J

.field public mElapsedSnapshot:J

.field public final mIdleHistory:Landroid/util/SparseArray;

.field public mScreenOn:Z

.field public mScreenOnDuration:J

.field public mScreenOnSnapshot:J

.field public final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    .line 28
    .line 29
    new-instance p3, Ljava/io/FileReader;

    .line 30
    .line 31
    invoke-direct {p3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 62
    .line 63
    .line 64
    :catch_0
    :goto_0
    return-void
.end method

.method public static getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 14
    .line 15
    .line 16
    const-wide/32 v1, -0x80000000

    .line 17
    .line 18
    .line 19
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 20
    .line 21
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 22
    .line 23
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 24
    .line 25
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 26
    .line 27
    const/16 p2, 0x32

    .line 28
    .line 29
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 30
    .line 31
    const/16 p2, 0x100

    .line 32
    .line 33
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 34
    .line 35
    const/4 p2, -0x1

    .line 36
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 37
    .line 38
    const-wide/high16 v1, -0x8000000000000000L

    .line 39
    .line 40
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object v0
.end method

.method public static insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseLongArray;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 18
    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "<uninitialized>"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-long/2addr p1, p3

    .line 14
    invoke-static {p1, p2, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    const-string v1, "item"

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "bucket"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, -0x1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_1
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    const-string v1, "AppIdleHistory"

    .line 42
    .line 43
    const-string v2, "Error reading the buckets expiry times"

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v3, "expiry"

    .line 50
    .line 51
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    :goto_2
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    return-void
.end method


# virtual methods
.method public final dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_0
    if-ge v5, v3, :cond_c

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 12
    .line 13
    .line 14
    aget v6, v2, v5

    .line 15
    .line 16
    const-string v7, "User "

    .line 17
    .line 18
    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 22
    .line 23
    .line 24
    const-string v7, " App Standby States:"

    .line 25
    .line 26
    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 30
    .line 31
    .line 32
    iget-object v7, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v10

    .line 48
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const/4 v15, 0x0

    .line 63
    :goto_1
    if-ge v15, v14, :cond_a

    .line 64
    .line 65
    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    move-object/from16 v4, v16

    .line 70
    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    move-object/from16 v2, v16

    .line 78
    .line 79
    check-cast v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 80
    .line 81
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-nez v16, :cond_1

    .line 86
    .line 87
    move/from16 v16, v3

    .line 88
    .line 89
    move-object/from16 v3, p3

    .line 90
    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v17

    .line 95
    if-nez v17, :cond_2

    .line 96
    .line 97
    move-object/from16 v17, v7

    .line 98
    .line 99
    move/from16 v18, v14

    .line 100
    .line 101
    move v7, v15

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_1
    move/from16 v16, v3

    .line 105
    .line 106
    move-object/from16 v3, p3

    .line 107
    .line 108
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    move-object/from16 v17, v7

    .line 111
    .line 112
    const-string/jumbo v7, "package="

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v7, " u="

    .line 131
    .line 132
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v7, " bucket="

    .line 148
    .line 149
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 153
    .line 154
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v7, " reason="

    .line 158
    .line 159
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 163
    .line 164
    invoke-static {v7}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v3, " used="

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    move v3, v14

    .line 184
    move v7, v15

    .line 185
    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 186
    .line 187
    invoke-static {v1, v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 188
    .line 189
    .line 190
    const-string v14, " usedByUser="

    .line 191
    .line 192
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 196
    .line 197
    invoke-static {v1, v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 198
    .line 199
    .line 200
    const-string v14, " usedScr="

    .line 201
    .line 202
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 206
    .line 207
    invoke-static {v1, v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 208
    .line 209
    .line 210
    const-string v14, " lastPred="

    .line 211
    .line 212
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 216
    .line 217
    invoke-static {v1, v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 218
    .line 219
    .line 220
    const-string v14, " expiryTimes="

    .line 221
    .line 222
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 226
    .line 227
    if-eqz v14, :cond_3

    .line 228
    .line 229
    invoke-virtual {v14}, Landroid/util/SparseLongArray;->size()I

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    if-nez v14, :cond_4

    .line 234
    .line 235
    :cond_3
    move/from16 v18, v3

    .line 236
    .line 237
    move-object v14, v4

    .line 238
    goto :goto_3

    .line 239
    :cond_4
    const-string v14, "("

    .line 240
    .line 241
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 245
    .line 246
    invoke-virtual {v14}, Landroid/util/SparseLongArray;->size()I

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    const/4 v15, 0x0

    .line 251
    :goto_2
    if-ge v15, v14, :cond_6

    .line 252
    .line 253
    move/from16 v18, v3

    .line 254
    .line 255
    iget-object v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 256
    .line 257
    invoke-virtual {v3, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    move/from16 v19, v14

    .line 262
    .line 263
    iget-object v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 264
    .line 265
    invoke-virtual {v14, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 266
    .line 267
    .line 268
    move-result-wide v20

    .line 269
    if-eqz v15, :cond_5

    .line 270
    .line 271
    const-string v14, ","

    .line 272
    .line 273
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v3, ":"

    .line 285
    .line 286
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    move-object v14, v4

    .line 297
    sub-long v3, v12, v20

    .line 298
    .line 299
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 300
    .line 301
    .line 302
    add-int/lit8 v15, v15, 0x1

    .line 303
    .line 304
    move-object v4, v14

    .line 305
    move/from16 v3, v18

    .line 306
    .line 307
    move/from16 v14, v19

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_6
    move/from16 v18, v3

    .line 311
    .line 312
    move-object v14, v4

    .line 313
    const-string v3, ")"

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :goto_3
    const-string v3, "<none>"

    .line 320
    .line 321
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :goto_4
    const-string v3, " lastJob="

    .line 325
    .line 326
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-wide v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 330
    .line 331
    sub-long v3, v12, v3

    .line 332
    .line 333
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 334
    .line 335
    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v4, " lastInformedBucket="

    .line 339
    .line 340
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-wide v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 356
    .line 357
    const-wide/16 v19, 0x0

    .line 358
    .line 359
    cmp-long v3, v3, v19

    .line 360
    .line 361
    if-lez v3, :cond_7

    .line 362
    .line 363
    const-string v3, " lastRestrictAttempt="

    .line 364
    .line 365
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-wide v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 369
    .line 370
    sub-long v3, v12, v3

    .line 371
    .line 372
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 373
    .line 374
    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v4, " lastRestrictReason="

    .line 378
    .line 379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 383
    .line 384
    invoke-static {v4}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_7
    iget-wide v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 399
    .line 400
    cmp-long v3, v3, v19

    .line 401
    .line 402
    if-lez v3, :cond_8

    .line 403
    .line 404
    const-string v3, " nextEstimatedLaunchTime="

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-wide v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 410
    .line 411
    sub-long/2addr v2, v8

    .line 412
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 413
    .line 414
    .line 415
    :cond_8
    move-object v2, v14

    .line 416
    invoke-virtual {v0, v6, v2, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_9

    .line 421
    .line 422
    const-string/jumbo v2, "y"

    .line 423
    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_9
    const-string/jumbo v2, "n"

    .line 427
    .line 428
    .line 429
    :goto_5
    const-string v3, " idle="

    .line 430
    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 439
    .line 440
    .line 441
    :goto_6
    add-int/lit8 v15, v7, 0x1

    .line 442
    .line 443
    move-object/from16 v2, p2

    .line 444
    .line 445
    move/from16 v3, v16

    .line 446
    .line 447
    move-object/from16 v7, v17

    .line 448
    .line 449
    move/from16 v14, v18

    .line 450
    .line 451
    goto/16 :goto_1

    .line 452
    .line 453
    :cond_a
    move/from16 v16, v3

    .line 454
    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 456
    .line 457
    .line 458
    const-string/jumbo v2, "totalElapsedTime="

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 465
    .line 466
    .line 467
    move-result-wide v2

    .line 468
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 472
    .line 473
    .line 474
    const-string/jumbo v2, "totalScreenOnTime="

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-wide v2, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 481
    .line 482
    iget-boolean v4, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 483
    .line 484
    if-eqz v4, :cond_b

    .line 485
    .line 486
    iget-wide v6, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 487
    .line 488
    sub-long/2addr v10, v6

    .line 489
    add-long/2addr v2, v10

    .line 490
    :cond_b
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 497
    .line 498
    .line 499
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 500
    .line 501
    move-object/from16 v2, p2

    .line 502
    .line 503
    move/from16 v3, v16

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :cond_c
    return-void
.end method

.method public final getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public final getElapsedTime(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 5
    .line 6
    add-long/2addr p1, v0

    .line 7
    return-wide p1
.end method

.method public getScreenOnTimeFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 4
    .line 5
    const-string/jumbo v1, "screen_on_time"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public getUserFile(I)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 8
    .line 9
    const-string/jumbo v3, "users"

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p0, "app_idle_stats.xml"

    .line 23
    .line 24
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final getUserHistory(I)Landroid/util/ArrayMap;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/util/ArrayMap;

    .line 12
    .line 13
    if-nez v2, :cond_14

    .line 14
    .line 15
    new-instance v2, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "Unable to read app idle file for user "

    .line 26
    .line 27
    const-string v4, "AppIdleHistory"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    :try_start_0
    new-instance v6, Landroid/util/AtomicFile;

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v6, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v8, 0x1

    .line 61
    const/4 v9, 0x2

    .line 62
    if-eq v0, v9, :cond_0

    .line 63
    .line 64
    if-eq v0, v8, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-eq v0, v9, :cond_1

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto/16 :goto_f

    .line 88
    .line 89
    :catchall_0
    move-exception v0

    .line 90
    move-object v5, v6

    .line 91
    goto/16 :goto_13

    .line 92
    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object v5, v6

    .line 95
    goto/16 :goto_10

    .line 96
    .line 97
    :catch_1
    move-object v5, v6

    .line 98
    goto/16 :goto_12

    .line 99
    .line 100
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string/jumbo v10, "packages"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    goto/16 :goto_f

    .line 114
    .line 115
    :cond_2
    const-string/jumbo v0, "version"

    .line 116
    .line 117
    .line 118
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_1
    move v10, v0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eq v0, v8, :cond_13

    .line 137
    .line 138
    if-ne v0, v9, :cond_4

    .line 139
    .line 140
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string/jumbo v11, "package"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_12

    .line 152
    .line 153
    const-string/jumbo v0, "name"

    .line 154
    .line 155
    .line 156
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    new-instance v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 161
    .line 162
    invoke-direct {v12}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v0, "elapsedIdleTime"

    .line 166
    .line 167
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 176
    .line 177
    const-string v0, "lastUsedByUserElapsedTime"

    .line 178
    .line 179
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v13

    .line 190
    :goto_3
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 191
    .line 192
    const-string/jumbo v0, "screenIdleTime"

    .line 193
    .line 194
    .line 195
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v13

    .line 203
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 204
    .line 205
    const-string v0, "lastPredictedTime"

    .line 206
    .line 207
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-nez v0, :cond_6

    .line 212
    .line 213
    const-wide/16 v13, 0x0

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v15

    .line 220
    move-wide v13, v15

    .line 221
    :goto_4
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 222
    .line 223
    const-string v0, "appLimitBucket"

    .line 224
    .line 225
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const/16 v13, 0xa

    .line 230
    .line 231
    if-nez v0, :cond_7

    .line 232
    .line 233
    move v0, v13

    .line 234
    goto :goto_5

    .line 235
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    :goto_5
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 240
    .line 241
    const-string v0, "bucketReason"

    .line 242
    .line 243
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v14, "lastJobRunTime"

    .line 248
    .line 249
    invoke-interface {v7, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    if-nez v14, :cond_8

    .line 254
    .line 255
    const-wide/high16 v14, -0x8000000000000000L

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_8
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v14

    .line 262
    :goto_6
    iput-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 263
    .line 264
    const/16 v14, 0x100

    .line 265
    .line 266
    iput v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .line 268
    const/16 v14, 0x10

    .line 269
    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    :try_start_2
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :catch_2
    move-exception v0

    .line 280
    :try_start_3
    const-string v15, "Unable to read bucketing reason"

    .line 281
    .line 282
    invoke-static {v4, v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    :cond_9
    :goto_7
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 286
    .line 287
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-nez v0, :cond_a

    .line 292
    .line 293
    const-wide/16 v8, 0x0

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v15

    .line 300
    move-wide v8, v15

    .line 301
    :goto_8
    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 302
    .line 303
    const-string v0, "lastRestrictionAttemptReason"

    .line 304
    .line 305
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    if-eqz v0, :cond_b

    .line 310
    .line 311
    :try_start_4
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :catch_3
    move-exception v0

    .line 319
    :try_start_5
    const-string v8, "Unable to read last restrict reason"

    .line 320
    .line 321
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .line 323
    .line 324
    :cond_b
    :goto_9
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    .line 325
    .line 326
    .line 327
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-nez v0, :cond_c

    .line 332
    .line 333
    const-wide/16 v8, 0x0

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 337
    .line 338
    .line 339
    move-result-wide v8

    .line 340
    :goto_a
    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 341
    .line 342
    invoke-static {}, Lcom/android/server/usage/Flags;->avoidIdleCheck()Z

    .line 343
    .line 344
    .line 345
    const/4 v0, -0x1

    .line 346
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 347
    .line 348
    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    const/4 v8, 0x1

    .line 352
    if-lt v10, v8, :cond_e

    .line 353
    .line 354
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    :cond_d
    :goto_b
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    if-eqz v9, :cond_12

    .line 363
    .line 364
    const-string v9, "expiryTimes"

    .line 365
    .line 366
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    if-eqz v9, :cond_d

    .line 375
    .line 376
    invoke-static {v7, v12}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V

    .line 377
    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_e
    const-string v0, "activeTimeoutTime"

    .line 381
    .line 382
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    if-nez v0, :cond_f

    .line 387
    .line 388
    const-wide/16 v14, 0x0

    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 392
    .line 393
    .line 394
    move-result-wide v14

    .line 395
    :goto_c
    const-string/jumbo v0, "workingSetTimeoutTime"

    .line 396
    .line 397
    .line 398
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    if-nez v0, :cond_10

    .line 403
    .line 404
    const-wide/16 v8, 0x0

    .line 405
    .line 406
    :goto_d
    const-wide/16 v16, 0x0

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 410
    .line 411
    .line 412
    move-result-wide v18

    .line 413
    move-wide/from16 v8, v18

    .line 414
    .line 415
    goto :goto_d

    .line 416
    :goto_e
    cmp-long v0, v14, v16

    .line 417
    .line 418
    if-nez v0, :cond_11

    .line 419
    .line 420
    cmp-long v0, v8, v16

    .line 421
    .line 422
    if-eqz v0, :cond_12

    .line 423
    .line 424
    :cond_11
    invoke-static {v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    .line 425
    .line 426
    .line 427
    const/16 v0, 0x14

    .line 428
    .line 429
    invoke-static {v12, v0, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    .line 431
    .line 432
    :cond_12
    const/4 v8, 0x1

    .line 433
    const/4 v9, 0x2

    .line 434
    goto/16 :goto_2

    .line 435
    .line 436
    :cond_13
    :goto_f
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 437
    .line 438
    .line 439
    goto :goto_14

    .line 440
    :catchall_1
    move-exception v0

    .line 441
    goto :goto_13

    .line 442
    :catch_4
    move-exception v0

    .line 443
    :goto_10
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 459
    .line 460
    .line 461
    :goto_11
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 462
    .line 463
    .line 464
    goto :goto_14

    .line 465
    :catch_5
    :goto_12
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v3, "App idle file for user "

    .line 471
    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, " does not exist"

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 488
    .line 489
    .line 490
    goto :goto_11

    .line 491
    :goto_13
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 492
    .line 493
    .line 494
    throw v0

    .line 495
    :cond_14
    :goto_14
    return-object v2
.end method

.method public final isIdle(ILjava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 11
    .line 12
    const/16 p2, 0x28

    .line 13
    .line 14
    if-lt p0, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    move-wide/from16 v3, p6

    .line 7
    .line 8
    move-wide/from16 v5, p8

    .line 9
    .line 10
    const/16 v7, 0x300

    .line 11
    .line 12
    move/from16 v8, p5

    .line 13
    .line 14
    or-int/2addr v8, v7

    .line 15
    const v9, 0xff00

    .line 16
    .line 17
    .line 18
    and-int v10, v8, v9

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    const/4 v12, 0x0

    .line 22
    if-ne v10, v7, :cond_1

    .line 23
    .line 24
    and-int/lit16 v7, v8, 0xff

    .line 25
    .line 26
    const/4 v10, 0x3

    .line 27
    if-eq v7, v10, :cond_0

    .line 28
    .line 29
    const/4 v10, 0x4

    .line 30
    if-ne v7, v10, :cond_1

    .line 31
    .line 32
    :cond_0
    move v12, v11

    .line 33
    :cond_1
    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 34
    .line 35
    const/16 v10, 0x2d

    .line 36
    .line 37
    if-ne v7, v10, :cond_2

    .line 38
    .line 39
    if-nez v12, :cond_2

    .line 40
    .line 41
    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 42
    .line 43
    and-int v13, v7, v9

    .line 44
    .line 45
    const/16 v14, 0x200

    .line 46
    .line 47
    if-eq v13, v14, :cond_2

    .line 48
    .line 49
    move v8, v7

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    cmp-long v7, v5, v3

    .line 52
    .line 53
    if-lez v7, :cond_6

    .line 54
    .line 55
    invoke-virtual {p0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    iget-object v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 60
    .line 61
    if-nez v7, :cond_3

    .line 62
    .line 63
    new-instance v7, Landroid/util/SparseLongArray;

    .line 64
    .line 65
    invoke-direct {v7}, Landroid/util/SparseLongArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 69
    .line 70
    :cond_3
    iget-object v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 71
    .line 72
    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->get(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v13

    .line 76
    iget-object v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 77
    .line 78
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    invoke-virtual {v7, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    iget-object v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 90
    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    sub-int/2addr v7, v11

    .line 99
    :goto_0
    if-ltz v7, :cond_6

    .line 100
    .line 101
    iget-object v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 102
    .line 103
    invoke-virtual {v10, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    cmp-long v10, v10, v5

    .line 108
    .line 109
    if-gez v10, :cond_5

    .line 110
    .line 111
    iget-object v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 112
    .line 113
    invoke-virtual {v10, v7}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 114
    .line 115
    .line 116
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    :goto_1
    move v10, v2

    .line 120
    :goto_2
    const-wide/16 v5, 0x0

    .line 121
    .line 122
    cmp-long v2, v3, v5

    .line 123
    .line 124
    if-eqz v2, :cond_9

    .line 125
    .line 126
    iget-wide v5, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 127
    .line 128
    iget-wide v13, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 129
    .line 130
    sub-long v13, v3, v13

    .line 131
    .line 132
    add-long/2addr v13, v5

    .line 133
    iput-wide v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 134
    .line 135
    if-eqz v12, :cond_7

    .line 136
    .line 137
    iput-wide v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 138
    .line 139
    :cond_7
    iget-wide v5, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 140
    .line 141
    iget-boolean v2, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 142
    .line 143
    if-eqz v2, :cond_8

    .line 144
    .line 145
    iget-wide v11, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 146
    .line 147
    sub-long v2, v3, v11

    .line 148
    .line 149
    add-long/2addr v5, v2

    .line 150
    :cond_8
    iput-wide v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 151
    .line 152
    :cond_9
    iget v0, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 153
    .line 154
    if-lt v0, v10, :cond_b

    .line 155
    .line 156
    if-le v0, v10, :cond_a

    .line 157
    .line 158
    iput v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 159
    .line 160
    and-int v0, v8, v9

    .line 161
    .line 162
    and-int/lit16 v2, v8, 0xff

    .line 163
    .line 164
    const/16 v3, 0x102

    .line 165
    .line 166
    move/from16 p4, v3

    .line 167
    .line 168
    move-object/from16 p5, p2

    .line 169
    .line 170
    move/from16 p6, p3

    .line 171
    .line 172
    move/from16 p7, v10

    .line 173
    .line 174
    move/from16 p8, v0

    .line 175
    .line 176
    move/from16 p9, v2

    .line 177
    .line 178
    invoke-static/range {p4 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iput v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 182
    .line 183
    :cond_b
    return-void
.end method

.method public final setAppStandbyBucket(IIIJLjava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p6, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 11
    .line 12
    if-eq v2, p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 17
    .line 18
    iput p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 19
    .line 20
    invoke-virtual {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p4

    .line 24
    const p0, 0xff00

    .line 25
    .line 26
    .line 27
    and-int v6, p3, p0

    .line 28
    .line 29
    const/16 p0, 0x500

    .line 30
    .line 31
    if-ne v6, p0, :cond_1

    .line 32
    .line 33
    iput-wide p4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 34
    .line 35
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 36
    .line 37
    :cond_1
    if-eqz p7, :cond_2

    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    .line 44
    .line 45
    .line 46
    :cond_2
    if-eqz v1, :cond_3

    .line 47
    .line 48
    and-int/lit16 v7, p3, 0xff

    .line 49
    .line 50
    const/16 v2, 0x102

    .line 51
    .line 52
    move-object v3, p6

    .line 53
    move v4, p1

    .line 54
    move v5, p2

    .line 55
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final updateDisplay(JZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 16
    .line 17
    sub-long v2, p1, v2

    .line 18
    .line 19
    add-long/2addr v2, v0

    .line 20
    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 25
    .line 26
    sub-long v2, p1, v2

    .line 27
    .line 28
    add-long/2addr v2, v0

    .line 29
    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final writeAppIdleTimes(IJ)V
    .locals 21

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    const-string v1, "expiryTimes"

    .line 4
    .line 5
    const-string/jumbo v2, "package"

    .line 6
    .line 7
    .line 8
    const-string v3, "AppIdleHistory"

    .line 9
    .line 10
    const-string/jumbo v4, "packages"

    .line 11
    .line 12
    .line 13
    new-instance v5, Landroid/util/AtomicFile;

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 27
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    .line 28
    .line 29
    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .line 31
    .line 32
    new-instance v9, Lcom/android/internal/util/jobs/FastXmlSerializer;

    .line 33
    .line 34
    invoke-direct {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v6, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v8, "version"

    .line 61
    .line 62
    .line 63
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v9, v6, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    move-object/from16 v8, p0

    .line 71
    .line 72
    move-wide/from16 v10, p2

    .line 73
    .line 74
    invoke-virtual {v8, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 83
    .line 84
    .line 85
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 86
    const/4 v14, 0x0

    .line 87
    :goto_0
    if-ge v14, v12, :cond_7

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    check-cast v15, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 94
    .line 95
    if-nez v15, :cond_0

    .line 96
    .line 97
    :try_start_3
    const-string v15, "Skipping App Idle write for unexpected null package"

    .line 98
    .line 99
    invoke-static {v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    .line 101
    .line 102
    move-object/from16 v16, v7

    .line 103
    .line 104
    move-object/from16 p2, v8

    .line 105
    .line 106
    move-object v7, v9

    .line 107
    move-wide/from16 v17, v10

    .line 108
    .line 109
    move-object v8, v5

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object v8, v5

    .line 114
    move-object v6, v7

    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :cond_0
    :try_start_4
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    move-object/from16 v13, v16

    .line 122
    .line 123
    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 124
    .line 125
    invoke-virtual {v9, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    .line 127
    .line 128
    move-object/from16 p2, v8

    .line 129
    .line 130
    const-string/jumbo v8, "name"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v6, v8, v15}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    .line 135
    .line 136
    const-string v8, "elapsedIdleTime"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    .line 138
    move-object/from16 v16, v7

    .line 139
    .line 140
    :try_start_5
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 141
    .line 142
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    .line 149
    .line 150
    const-string v6, "lastUsedByUserElapsedTime"

    .line 151
    .line 152
    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 153
    .line 154
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const/4 v8, 0x0

    .line 159
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    .line 161
    .line 162
    const-string/jumbo v6, "screenIdleTime"

    .line 163
    .line 164
    .line 165
    move-object v7, v9

    .line 166
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 167
    .line 168
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const/4 v9, 0x0

    .line 173
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    .line 175
    .line 176
    const-string v6, "lastPredictedTime"

    .line 177
    .line 178
    move-wide/from16 v17, v10

    .line 179
    .line 180
    iget-wide v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 181
    .line 182
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    const/4 v9, 0x0

    .line 187
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    .line 189
    .line 190
    const-string v6, "appLimitBucket"

    .line 191
    .line 192
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 193
    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    const-string v6, "bucketReason"

    .line 202
    .line 203
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 204
    .line 205
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .line 211
    .line 212
    iget-wide v10, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 213
    .line 214
    const-wide/high16 v19, -0x8000000000000000L

    .line 215
    .line 216
    cmp-long v6, v10, v19

    .line 217
    .line 218
    if-eqz v6, :cond_1

    .line 219
    .line 220
    const-string v6, "lastJobRunTime"

    .line 221
    .line 222
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    move-object v8, v5

    .line 232
    :goto_1
    move-object/from16 v6, v16

    .line 233
    .line 234
    goto/16 :goto_8

    .line 235
    .line 236
    :cond_1
    :goto_2
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 237
    .line 238
    const-wide/16 v10, 0x0

    .line 239
    .line 240
    cmp-long v6, v8, v10

    .line 241
    .line 242
    if-lez v6, :cond_2

    .line 243
    .line 244
    const-string v6, "lastRestrictionAttemptElapsedTime"

    .line 245
    .line 246
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    const/4 v9, 0x0

    .line 251
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    .line 253
    .line 254
    :cond_2
    const-string v6, "lastRestrictionAttemptReason"

    .line 255
    .line 256
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 257
    .line 258
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    const/4 v9, 0x0

    .line 263
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 264
    .line 265
    .line 266
    move-object v8, v5

    .line 267
    :try_start_6
    iget-wide v5, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 268
    .line 269
    cmp-long v10, v5, v10

    .line 270
    .line 271
    if-lez v10, :cond_3

    .line 272
    .line 273
    const-string/jumbo v10, "nextEstimatedAppLaunchTime"

    .line 274
    .line 275
    .line 276
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v7, v9, v10, v5}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :catch_2
    move-exception v0

    .line 285
    goto :goto_1

    .line 286
    :cond_3
    :goto_3
    iget-object v5, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 287
    .line 288
    if-eqz v5, :cond_6

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-virtual {v7, v5, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    .line 293
    .line 294
    iget-object v5, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 295
    .line 296
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    const/4 v6, 0x0

    .line 301
    :goto_4
    if-ge v6, v5, :cond_5

    .line 302
    .line 303
    iget-object v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 304
    .line 305
    invoke-virtual {v9, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 306
    .line 307
    .line 308
    move-result-wide v9

    .line 309
    cmp-long v11, v9, v17

    .line 310
    .line 311
    if-gez v11, :cond_4

    .line 312
    .line 313
    move/from16 p3, v5

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_4
    iget-object v11, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 317
    .line 318
    invoke-virtual {v11, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    const/4 v15, 0x0

    .line 323
    invoke-virtual {v7, v15, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    .line 325
    .line 326
    const-string v15, "bucket"

    .line 327
    .line 328
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    move/from16 p3, v5

    .line 333
    .line 334
    const/4 v5, 0x0

    .line 335
    invoke-virtual {v7, v5, v15, v11}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    .line 337
    .line 338
    const-string v11, "expiry"

    .line 339
    .line 340
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-virtual {v7, v5, v11, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v5, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    .line 349
    .line 350
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 351
    .line 352
    move/from16 v5, p3

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_5
    const/4 v5, 0x0

    .line 356
    invoke-virtual {v7, v5, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    .line 358
    .line 359
    :cond_6
    const/4 v5, 0x0

    .line 360
    invoke-virtual {v7, v5, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 361
    .line 362
    .line 363
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 364
    .line 365
    move-object v9, v7

    .line 366
    move-object v5, v8

    .line 367
    move-object/from16 v7, v16

    .line 368
    .line 369
    move-wide/from16 v10, v17

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    move-object/from16 v8, p2

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :catch_3
    move-exception v0

    .line 377
    move-object v8, v5

    .line 378
    move-object/from16 v16, v7

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_7
    move-object v8, v5

    .line 383
    move-object v1, v6

    .line 384
    move-object/from16 v16, v7

    .line 385
    .line 386
    move-object v7, v9

    .line 387
    :try_start_7
    invoke-virtual {v7, v1, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 391
    .line 392
    .line 393
    move-object/from16 v1, v16

    .line 394
    .line 395
    :try_start_8
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :catch_4
    move-exception v0

    .line 400
    :goto_7
    move-object v6, v1

    .line 401
    goto :goto_8

    .line 402
    :catch_5
    move-exception v0

    .line 403
    move-object/from16 v1, v16

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :catch_6
    move-exception v0

    .line 407
    move-object v8, v5

    .line 408
    move-object v1, v7

    .line 409
    goto :goto_7

    .line 410
    :catch_7
    move-exception v0

    .line 411
    move-object v8, v5

    .line 412
    move-object v1, v6

    .line 413
    :goto_8
    invoke-virtual {v8, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v2, "Error writing app idle file for user "

    .line 419
    .line 420
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    move/from16 v2, p1

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .line 434
    .line 435
    :goto_9
    return-void
.end method

.method public final writeScreenOnTime()V
    .locals 6

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    new-instance v1, Landroid/util/AtomicFile;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 34
    .line 35
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    const/4 v2, 0x0

    .line 61
    :catch_1
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
