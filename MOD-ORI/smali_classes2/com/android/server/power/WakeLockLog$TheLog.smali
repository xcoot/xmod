.class public final Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:[B

.field public mChangeCount:J

.field public mEnd:I

.field public mLatestTime:J

.field public final mReadWriteTempBuffer:[B

.field public final mSavedAcquisitions:Ljava/util/List;

.field public mStart:I

.field public mStartTime:J

.field public final mTempBuffer:[B

.field public final mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$TheLog$1;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x2800

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    new-array p1, p1, [B

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 43
    .line 44
    new-instance p1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p3, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 50
    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 18
    .line 19
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v1, -0x2

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 31
    .line 32
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v4, v0

    .line 38
    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 45
    .line 46
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_2
    const/16 v1, 0x9

    .line 51
    .line 52
    if-gt v0, v1, :cond_e

    .line 53
    .line 54
    if-gtz v0, :cond_3

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 59
    .line 60
    array-length v4, v1

    .line 61
    add-int/lit8 v5, v0, 0x1

    .line 62
    .line 63
    if-ge v4, v5, :cond_4

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    :goto_0
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 67
    .line 68
    iget v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 69
    .line 70
    if-le v4, v6, :cond_5

    .line 71
    .line 72
    array-length v7, v1

    .line 73
    sub-int v8, v4, v6

    .line 74
    .line 75
    sub-int/2addr v7, v8

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    if-ge v4, v6, :cond_6

    .line 78
    .line 79
    sub-int v7, v6, v4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    array-length v7, v1

    .line 83
    :goto_1
    const/4 v8, 0x0

    .line 84
    const-wide/16 v9, 0x1

    .line 85
    .line 86
    if-ge v7, v5, :cond_b

    .line 87
    .line 88
    if-ne v6, v4, :cond_7

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    iget-wide v11, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0, v6, v11, v12, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget v7, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 99
    .line 100
    const/4 v11, 0x1

    .line 101
    if-ne v7, v11, :cond_8

    .line 102
    .line 103
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 104
    .line 105
    check-cast v7, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_8
    const/4 v11, 0x2

    .line 112
    if-ne v7, v11, :cond_a

    .line 113
    .line 114
    :goto_2
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 115
    .line 116
    check-cast v7, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ge v8, v7, :cond_a

    .line 123
    .line 124
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 125
    .line 126
    check-cast v7, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 133
    .line 134
    iget-object v7, v7, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 135
    .line 136
    iget-object v11, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 137
    .line 138
    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_9

    .line 143
    .line 144
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 145
    .line 146
    check-cast v7, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    :goto_3
    iget-wide v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 156
    .line 157
    invoke-virtual {v2, v6, v4, v7, v8}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    iget v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 162
    .line 163
    add-int/2addr v7, v4

    .line 164
    array-length v4, v1

    .line 165
    rem-int/2addr v7, v4

    .line 166
    iput v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 167
    .line 168
    iget-wide v6, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 169
    .line 170
    iput-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 171
    .line 172
    iget-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 173
    .line 174
    add-long/2addr v6, v9

    .line 175
    iput-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_b
    :goto_4
    if-ge v8, v0, :cond_c

    .line 179
    .line 180
    add-int v2, v4, v8

    .line 181
    .line 182
    array-length v5, v1

    .line 183
    rem-int/2addr v2, v5

    .line 184
    aget-byte v5, v3, v8

    .line 185
    .line 186
    aput-byte v5, v1, v2

    .line 187
    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_c
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 192
    .line 193
    add-int/2addr v2, v0

    .line 194
    array-length v0, v1

    .line 195
    rem-int/2addr v2, v0

    .line 196
    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 197
    .line 198
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 199
    .line 200
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 201
    .line 202
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 203
    .line 204
    if-eqz p1, :cond_d

    .line 205
    .line 206
    iput-wide v0, p1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 207
    .line 208
    :cond_d
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 209
    .line 210
    add-long/2addr v0, v9

    .line 211
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 212
    .line 213
    return-void

    .line 214
    :cond_e
    :goto_5
    const-string p0, "Log entry size is out of expected range: "

    .line 215
    .line 216
    const-string p1, "PowerManagerService.WLLog"

    .line 217
    .line 218
    invoke-static {v0, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 4
    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    add-int v4, p1, v1

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 12
    .line 13
    array-length v6, v5

    .line 14
    rem-int/2addr v4, v6

    .line 15
    iget v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 16
    .line 17
    if-ne v4, v6, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    aget-byte v3, v5, v4

    .line 21
    .line 22
    aput-byte v3, v2, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    if-eqz v2, :cond_11

    .line 34
    .line 35
    array-length v1, v2

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_2
    if-eqz p4, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    new-instance p4, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 44
    .line 45
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_2
    aget-byte v1, v2, v0

    .line 49
    .line 50
    shr-int/lit8 v4, v1, 0x6

    .line 51
    .line 52
    and-int/lit8 v5, v4, 0x3

    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    and-int/2addr v4, v6

    .line 56
    if-ne v4, v6, :cond_4

    .line 57
    .line 58
    move v5, v6

    .line 59
    :cond_4
    const/4 v4, 0x3

    .line 60
    const/4 v7, 0x1

    .line 61
    if-eqz v5, :cond_f

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 66
    .line 67
    if-eq v5, v7, :cond_a

    .line 68
    .line 69
    if-eq v5, v6, :cond_5

    .line 70
    .line 71
    const-string p0, "Type not recognized ["

    .line 72
    .line 73
    const-string p2, "]"

    .line 74
    .line 75
    invoke-static {v5, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p2, Ljava/lang/Exception;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string p3, "PowerManagerService.WLLog"

    .line 85
    .line 86
    invoke-static {p3, p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_5
    array-length v3, v2

    .line 92
    if-ge v3, v6, :cond_6

    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_6
    and-int/lit8 v1, v1, 0x7f

    .line 97
    .line 98
    if-ltz v1, :cond_8

    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 101
    .line 102
    array-length v4, v3

    .line 103
    if-ge v1, v4, :cond_9

    .line 104
    .line 105
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 106
    .line 107
    if-ne v1, p0, :cond_7

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    aget-object p1, v3, v1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :cond_9
    :goto_3
    aget-byte p0, v2, v7

    .line 117
    .line 118
    and-int/lit16 p0, p0, 0xff

    .line 119
    .line 120
    int-to-long v1, p0

    .line 121
    add-long/2addr v1, p2

    .line 122
    iput-wide v1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 123
    .line 124
    iput v6, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 125
    .line 126
    iput-object p1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 127
    .line 128
    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 129
    .line 130
    :goto_4
    move-object p1, p4

    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_a
    array-length v0, v2

    .line 134
    if-ge v0, v4, :cond_b

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_b
    and-int/lit8 v0, v1, 0x3f

    .line 139
    .line 140
    aget-byte v1, v2, v7

    .line 141
    .line 142
    and-int/lit8 v1, v1, 0x7f

    .line 143
    .line 144
    if-ltz v1, :cond_d

    .line 145
    .line 146
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 147
    .line 148
    array-length v4, v3

    .line 149
    if-ge v1, v4, :cond_e

    .line 150
    .line 151
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 152
    .line 153
    if-ne v1, p0, :cond_c

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_c
    aget-object p1, v3, v1

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    :cond_e
    :goto_5
    aget-byte p0, v2, v6

    .line 163
    .line 164
    and-int/lit16 p0, p0, 0xff

    .line 165
    .line 166
    int-to-long v1, p0

    .line 167
    add-long/2addr v1, p2

    .line 168
    iput-wide v1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 169
    .line 170
    iput v7, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 171
    .line 172
    iput-object p1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 173
    .line 174
    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_f
    array-length p0, v2

    .line 178
    if-ge p0, v3, :cond_10

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_10
    aget-byte p0, v2, v7

    .line 182
    .line 183
    int-to-long p2, p0

    .line 184
    const-wide/16 v7, 0xff

    .line 185
    .line 186
    and-long/2addr p2, v7

    .line 187
    const/16 p0, 0x38

    .line 188
    .line 189
    shl-long/2addr p2, p0

    .line 190
    aget-byte p0, v2, v6

    .line 191
    .line 192
    int-to-long v5, p0

    .line 193
    and-long/2addr v5, v7

    .line 194
    const/16 p0, 0x30

    .line 195
    .line 196
    shl-long/2addr v5, p0

    .line 197
    or-long/2addr p2, v5

    .line 198
    aget-byte p0, v2, v4

    .line 199
    .line 200
    int-to-long v3, p0

    .line 201
    and-long/2addr v3, v7

    .line 202
    const/16 p0, 0x28

    .line 203
    .line 204
    shl-long/2addr v3, p0

    .line 205
    or-long/2addr p2, v3

    .line 206
    const/4 p0, 0x4

    .line 207
    aget-byte p0, v2, p0

    .line 208
    .line 209
    int-to-long v3, p0

    .line 210
    and-long/2addr v3, v7

    .line 211
    const/16 p0, 0x20

    .line 212
    .line 213
    shl-long/2addr v3, p0

    .line 214
    or-long/2addr p2, v3

    .line 215
    const/4 p0, 0x5

    .line 216
    aget-byte p0, v2, p0

    .line 217
    .line 218
    int-to-long v3, p0

    .line 219
    and-long/2addr v3, v7

    .line 220
    const/16 p0, 0x18

    .line 221
    .line 222
    shl-long/2addr v3, p0

    .line 223
    or-long/2addr p2, v3

    .line 224
    const/4 p0, 0x6

    .line 225
    aget-byte p0, v2, p0

    .line 226
    .line 227
    int-to-long v3, p0

    .line 228
    and-long/2addr v3, v7

    .line 229
    const/16 p0, 0x10

    .line 230
    .line 231
    shl-long/2addr v3, p0

    .line 232
    or-long/2addr p2, v3

    .line 233
    const/4 p0, 0x7

    .line 234
    aget-byte p0, v2, p0

    .line 235
    .line 236
    int-to-long v3, p0

    .line 237
    and-long/2addr v3, v7

    .line 238
    const/16 p0, 0x8

    .line 239
    .line 240
    shl-long/2addr v3, p0

    .line 241
    or-long/2addr p2, v3

    .line 242
    aget-byte p0, v2, p0

    .line 243
    .line 244
    int-to-long v1, p0

    .line 245
    and-long/2addr v1, v7

    .line 246
    or-long/2addr p2, v1

    .line 247
    iput-wide p2, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 248
    .line 249
    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 250
    .line 251
    iput-object p1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 252
    .line 253
    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_11
    :goto_6
    return-object p1
.end method
