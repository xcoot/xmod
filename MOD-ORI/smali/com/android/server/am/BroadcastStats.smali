.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIONS_COMPARATOR:Lcom/android/server/am/BroadcastStats$1;


# instance fields
.field public final mActions:Landroid/util/ArrayMap;

.field public mEndRealtime:J

.field public mEndUptime:J

.field public final mStartRealtime:J

.field public final mStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Lcom/android/server/am/BroadcastStats$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string/jumbo v0, "broadcast-stats,1,"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 10
    .line 11
    .line 12
    const-string v0, ","

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    .line 36
    .line 37
    cmp-long v3, v1, v3

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    .line 46
    .line 47
    sub-long/2addr v1, v3

    .line 48
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    :goto_0
    if-ltz v1, :cond_5

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    const-string v3, "a,"

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 117
    .line 118
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 125
    .line 126
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 130
    .line 131
    .line 132
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    add-int/lit8 v3, v3, -0x1

    .line 139
    .line 140
    :goto_1
    if-ltz v3, :cond_3

    .line 141
    .line 142
    const-string/jumbo v4, "p,"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget v4, v4, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 171
    .line 172
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v3, v3, -0x1

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 182
    .line 183
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    add-int/lit8 v3, v3, -0x1

    .line 188
    .line 189
    :goto_2
    if-ltz v3, :cond_4

    .line 190
    .line 191
    const-string/jumbo v4, "v,"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget v4, v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 220
    .line 221
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v3, v3, -0x1

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_5
    return-void
.end method

.method public final dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v1, v2

    .line 20
    :goto_0
    if-ltz v1, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Lcom/android/server/am/BroadcastStats$1;

    .line 37
    .line 38
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    sub-int/2addr p0, v2

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_1
    if-ltz p0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    const-string v1, "    "

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v4, ":"

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v4, "  Number received: "

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 93
    .line 94
    .line 95
    const-string v4, ", skipped: "

    .line 96
    .line 97
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 101
    .line 102
    const-string v5, "  Total dispatch time: "

    .line 103
    .line 104
    invoke-static {v4, p1, v1, v5}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 108
    .line 109
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 110
    .line 111
    .line 112
    const-string v4, ", max: "

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 118
    .line 119
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 123
    .line 124
    .line 125
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    sub-int/2addr v4, v2

    .line 132
    :goto_2
    const-string v5, " times"

    .line 133
    .line 134
    const-string v6, ": "

    .line 135
    .line 136
    if-ltz v4, :cond_2

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v7, "  Package "

    .line 142
    .line 143
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 167
    .line 168
    iget v6, v6, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 169
    .line 170
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v4, v4, -0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    sub-int/2addr v4, v2

    .line 186
    :goto_3
    if-ltz v4, :cond_3

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v7, "  Bg Check Violation "

    .line 192
    .line 193
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 197
    .line 198
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    check-cast v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 217
    .line 218
    iget v7, v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 219
    .line 220
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v4, v4, -0x1

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_3
    move v1, v2

    .line 230
    :goto_4
    add-int/lit8 p0, p0, -0x1

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_4
    return v1
.end method
