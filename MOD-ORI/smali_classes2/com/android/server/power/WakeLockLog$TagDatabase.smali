.class public final Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field public mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

.field public final mInvalidIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x80

    .line 8
    .line 9
    invoke-static {p1, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    new-array v0, p1, [Lcom/android/server/power/WakeLockLog$TagData;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final findOrCreateTag(ILjava/lang/String;)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/power/WakeLockLog$TagData;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p2

    .line 9
    .line 10
    iput-object v2, v1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 11
    .line 12
    move/from16 v2, p1

    .line 13
    .line 14
    iput v2, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    move v6, v3

    .line 19
    move v8, v6

    .line 20
    move-object v7, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    iget-object v9, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 23
    .line 24
    array-length v10, v9

    .line 25
    if-ge v5, v10, :cond_4

    .line 26
    .line 27
    aget-object v9, v9, v5

    .line 28
    .line 29
    invoke-virtual {v1, v9}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_0

    .line 34
    .line 35
    return-object v9

    .line 36
    :cond_0
    if-eqz v9, :cond_2

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    iget-wide v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 41
    .line 42
    iget-wide v12, v7, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 43
    .line 44
    cmp-long v10, v10, v12

    .line 45
    .line 46
    if-gez v10, :cond_3

    .line 47
    .line 48
    :cond_1
    move v8, v5

    .line 49
    move-object v7, v9

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-ne v6, v3, :cond_3

    .line 52
    .line 53
    move v6, v5

    .line 54
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    if-ne v6, v3, :cond_9

    .line 58
    .line 59
    iget-object v5, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 60
    .line 61
    if-eqz v5, :cond_9

    .line 62
    .line 63
    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Lcom/android/server/power/WakeLockLog$TheLog;

    .line 66
    .line 67
    iget v7, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 68
    .line 69
    iget v10, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 70
    .line 71
    if-ne v7, v10, :cond_5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    iget-wide v10, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 75
    .line 76
    new-instance v12, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 77
    .line 78
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    :goto_2
    iget v13, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 82
    .line 83
    if-eq v7, v13, :cond_8

    .line 84
    .line 85
    invoke-virtual {v5, v7, v10, v11, v12}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    if-nez v13, :cond_6

    .line 90
    .line 91
    const-string v2, "Entry is unreadable - Unexpected @ "

    .line 92
    .line 93
    const-string v4, "PowerManagerService.WLLog"

    .line 94
    .line 95
    invoke-static {v7, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    iget-object v14, v13, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 100
    .line 101
    iget-object v15, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 102
    .line 103
    iget-object v2, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 104
    .line 105
    if-eqz v14, :cond_7

    .line 106
    .line 107
    iget v14, v14, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 108
    .line 109
    if-ne v14, v8, :cond_7

    .line 110
    .line 111
    iput-object v4, v13, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 112
    .line 113
    iget-object v14, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 114
    .line 115
    invoke-virtual {v2, v13, v14, v10, v11}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-lez v10, :cond_7

    .line 120
    .line 121
    const/4 v11, 0x0

    .line 122
    :goto_3
    if-ge v11, v10, :cond_7

    .line 123
    .line 124
    add-int v16, v7, v11

    .line 125
    .line 126
    array-length v3, v15

    .line 127
    rem-int v16, v16, v3

    .line 128
    .line 129
    aget-byte v3, v14, v11

    .line 130
    .line 131
    aput-byte v3, v15, v16

    .line 132
    .line 133
    add-int/lit8 v11, v11, 0x1

    .line 134
    .line 135
    const/4 v3, -0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    iget-wide v10, v13, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 138
    .line 139
    move-wide/from16 v16, v10

    .line 140
    .line 141
    const-wide/16 v10, 0x0

    .line 142
    .line 143
    invoke-virtual {v2, v13, v4, v10, v11}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    add-int/2addr v2, v7

    .line 148
    array-length v3, v15

    .line 149
    rem-int v7, v2, v3

    .line 150
    .line 151
    move-wide/from16 v10, v16

    .line 152
    .line 153
    const/4 v3, -0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_8
    :goto_4
    const/4 v2, -0x1

    .line 156
    goto :goto_5

    .line 157
    :cond_9
    move v2, v3

    .line 158
    :goto_5
    if-eq v6, v2, :cond_a

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_a
    move v6, v8

    .line 162
    :goto_6
    if-ltz v6, :cond_d

    .line 163
    .line 164
    array-length v2, v9

    .line 165
    if-lt v6, v2, :cond_b

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_b
    aget-object v2, v9, v6

    .line 169
    .line 170
    if-eqz v2, :cond_c

    .line 171
    .line 172
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 173
    .line 174
    iput v0, v2, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 175
    .line 176
    :cond_c
    aput-object v1, v9, v6

    .line 177
    .line 178
    iput v6, v1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 179
    .line 180
    :cond_d
    :goto_7
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Tag Database: size("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    move v4, v3

    .line 23
    move v5, v4

    .line 24
    :goto_0
    if-ge v3, v1, :cond_3

    .line 25
    .line 26
    aget-object v6, p0, v3

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    iget-object v6, v6, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    move v7, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    mul-int/lit8 v7, v7, 0x2

    .line 45
    .line 46
    :goto_1
    add-int/lit8 v7, v7, 0x18

    .line 47
    .line 48
    add-int/2addr v7, v5

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    :cond_1
    move v5, v7

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p0, ", entries: "

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, ", Bytes used: "

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
