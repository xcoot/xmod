.class public final Lcom/android/server/power/WakeLockLog$TheLog$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 11

    .line 1
    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 2
    .line 3
    const-wide/16 v1, 0xff

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    const/4 v7, -0x2

    .line 12
    const/4 v8, -0x1

    .line 13
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 16
    .line 17
    if-eq v0, v6, :cond_6

    .line 18
    .line 19
    if-ne v0, v5, :cond_5

    .line 20
    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    array-length v0, p2

    .line 24
    if-lt v0, v5, :cond_4

    .line 25
    .line 26
    iget-wide v9, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 27
    .line 28
    cmp-long v0, v9, p3

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    move v7, v8

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sub-long/2addr v9, p3

    .line 35
    cmp-long p3, v9, v1

    .line 36
    .line 37
    if-lez p3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    long-to-int v7, v9

    .line 41
    :goto_0
    if-gez v7, :cond_2

    .line 42
    .line 43
    return v7

    .line 44
    :cond_2
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 55
    .line 56
    :goto_1
    or-int/lit16 p0, p0, 0x80

    .line 57
    .line 58
    int-to-byte p0, p0

    .line 59
    aput-byte p0, p2, v4

    .line 60
    .line 61
    and-int/lit16 p0, v7, 0xff

    .line 62
    .line 63
    int-to-byte p0, p0

    .line 64
    aput-byte p0, p2, v6

    .line 65
    .line 66
    :cond_4
    move v3, v5

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p3, "Unknown type "

    .line 74
    .line 75
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_6
    if-eqz p2, :cond_d

    .line 90
    .line 91
    array-length v0, p2

    .line 92
    if-lt v0, v3, :cond_d

    .line 93
    .line 94
    iget-wide v9, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 95
    .line 96
    cmp-long v0, v9, p3

    .line 97
    .line 98
    if-gez v0, :cond_7

    .line 99
    .line 100
    move v7, v8

    .line 101
    goto :goto_2

    .line 102
    :cond_7
    sub-long/2addr v9, p3

    .line 103
    cmp-long p3, v9, v1

    .line 104
    .line 105
    if-lez p3, :cond_8

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_8
    long-to-int v7, v9

    .line 109
    :goto_2
    if-gez v7, :cond_9

    .line 110
    .line 111
    return v7

    .line 112
    :cond_9
    iget p3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 113
    .line 114
    and-int/lit8 p3, p3, 0x3f

    .line 115
    .line 116
    or-int/lit8 p3, p3, 0x40

    .line 117
    .line 118
    int-to-byte p3, p3

    .line 119
    aput-byte p3, p2, v4

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 122
    .line 123
    if-nez p1, :cond_a

    .line 124
    .line 125
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 132
    .line 133
    :goto_3
    int-to-byte p0, p0

    .line 134
    aput-byte p0, p2, v6

    .line 135
    .line 136
    and-int/lit16 p0, v7, 0xff

    .line 137
    .line 138
    int-to-byte p0, p0

    .line 139
    aput-byte p0, p2, v5

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_b
    iget-wide p0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 143
    .line 144
    const/16 p3, 0x9

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    array-length p4, p2

    .line 149
    if-lt p4, p3, :cond_c

    .line 150
    .line 151
    aput-byte v4, p2, v4

    .line 152
    .line 153
    const/16 p4, 0x38

    .line 154
    .line 155
    shr-long v7, p0, p4

    .line 156
    .line 157
    and-long/2addr v7, v1

    .line 158
    long-to-int p4, v7

    .line 159
    int-to-byte p4, p4

    .line 160
    aput-byte p4, p2, v6

    .line 161
    .line 162
    const/16 p4, 0x30

    .line 163
    .line 164
    shr-long v6, p0, p4

    .line 165
    .line 166
    and-long/2addr v6, v1

    .line 167
    long-to-int p4, v6

    .line 168
    int-to-byte p4, p4

    .line 169
    aput-byte p4, p2, v5

    .line 170
    .line 171
    const/16 p4, 0x28

    .line 172
    .line 173
    shr-long v4, p0, p4

    .line 174
    .line 175
    and-long/2addr v4, v1

    .line 176
    long-to-int p4, v4

    .line 177
    int-to-byte p4, p4

    .line 178
    aput-byte p4, p2, v3

    .line 179
    .line 180
    const/16 p4, 0x20

    .line 181
    .line 182
    shr-long v3, p0, p4

    .line 183
    .line 184
    and-long/2addr v3, v1

    .line 185
    long-to-int p4, v3

    .line 186
    int-to-byte p4, p4

    .line 187
    const/4 v0, 0x4

    .line 188
    aput-byte p4, p2, v0

    .line 189
    .line 190
    const/16 p4, 0x18

    .line 191
    .line 192
    shr-long v3, p0, p4

    .line 193
    .line 194
    and-long/2addr v3, v1

    .line 195
    long-to-int p4, v3

    .line 196
    int-to-byte p4, p4

    .line 197
    const/4 v0, 0x5

    .line 198
    aput-byte p4, p2, v0

    .line 199
    .line 200
    const/16 p4, 0x10

    .line 201
    .line 202
    shr-long v3, p0, p4

    .line 203
    .line 204
    and-long/2addr v3, v1

    .line 205
    long-to-int p4, v3

    .line 206
    int-to-byte p4, p4

    .line 207
    const/4 v0, 0x6

    .line 208
    aput-byte p4, p2, v0

    .line 209
    .line 210
    const/16 p4, 0x8

    .line 211
    .line 212
    shr-long v3, p0, p4

    .line 213
    .line 214
    and-long/2addr v3, v1

    .line 215
    long-to-int v0, v3

    .line 216
    int-to-byte v0, v0

    .line 217
    const/4 v3, 0x7

    .line 218
    aput-byte v0, p2, v3

    .line 219
    .line 220
    and-long/2addr p0, v1

    .line 221
    long-to-int p0, p0

    .line 222
    int-to-byte p0, p0

    .line 223
    aput-byte p0, p2, p4

    .line 224
    .line 225
    :cond_c
    move v3, p3

    .line 226
    :cond_d
    :goto_4
    return v3
.end method
