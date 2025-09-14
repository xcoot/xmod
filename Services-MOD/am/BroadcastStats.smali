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

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Lcom/android/server/am/BroadcastStats$1;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

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

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 12
    const-string v0, ","

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    .line 19
    const-wide/16 v3, 0x0

    .line 21
    cmp-long v5, v1, v3

    .line 23
    if-nez v5, :cond_0

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v1

    .line 29
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    .line 37
    cmp-long v3, v1, v3

    .line 39
    if-nez v3, :cond_1

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    move-result-wide v1

    .line 45
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    .line 47
    sub-long/2addr v1, v3

    .line 48
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 51
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 53
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 59
    :goto_0
    if-ltz v1, :cond_5

    .line 61
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 63
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 69
    if-eqz p2, :cond_2

    .line 71
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 73
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 79
    goto/16 :goto_3

    .line 81
    :cond_2
    const-string v3, "a,"

    .line 83
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 88
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 94
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 110
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 118
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 126
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 134
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 137
    move-result v3

    .line 138
    add-int/lit8 v3, v3, -0x1

    .line 140
    :goto_1
    if-ltz v3, :cond_3

    .line 142
    const-string/jumbo v4, "p,"

    .line 145
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 150
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 161
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget v4, v4, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 172
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 178
    add-int/lit8 v3, v3, -0x1

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 183
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 186
    move-result v3

    .line 187
    add-int/lit8 v3, v3, -0x1

    .line 189
    :goto_2
    if-ltz v3, :cond_4

    .line 191
    const-string/jumbo v4, "v,"

    .line 194
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 199
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 216
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v4, v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 221
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 224
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 227
    add-int/lit8 v3, v3, -0x1

    .line 229
    goto :goto_2

    .line 230
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 232
    goto/16 :goto_0

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

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v1, v2

    .line 20
    :goto_0
    if-ltz v1, :cond_0

    .line 22
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Lcom/android/server/am/BroadcastStats$1;

    .line 38
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result p0

    .line 45
    sub-int/2addr p0, v2

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_1
    if-ltz p0, :cond_4

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 55
    if-eqz p2, :cond_1

    .line 57
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 65
    goto/16 :goto_4

    .line 67
    :cond_1
    const-string v1, "    "

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    const-string v4, ":"

    .line 79
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string v4, "  Number received: "

    .line 87
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 92
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    const-string v4, ", skipped: "

    .line 97
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 102
    const-string v5, "  Total dispatch time: "

    .line 104
    invoke-static {v4, p1, v1, v5}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 109
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 112
    const-string v4, ", max: "

    .line 114
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 119
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 127
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 130
    move-result v4

    .line 131
    sub-int/2addr v4, v2

    .line 132
    :goto_2
    const-string v5, " times"

    .line 134
    const-string v6, ": "

    .line 136
    if-ltz v4, :cond_2

    .line 138
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    const-string v7, "  Package "

    .line 143
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 148
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 162
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 168
    iget v6, v6, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 170
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    add-int/lit8 v4, v4, -0x1

    .line 178
    goto :goto_2

    .line 179
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 181
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 184
    move-result v4

    .line 185
    sub-int/2addr v4, v2

    .line 186
    :goto_3
    if-ltz v4, :cond_3

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string v7, "  Bg Check Violation "

    .line 193
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 198
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 212
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 215
    move-result-object v7

    .line 216
    check-cast v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 218
    iget v7, v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 220
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 223
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v4, v4, -0x1

    .line 228
    goto :goto_3

    .line 229
    :cond_3
    move v1, v2

    .line 230
    :goto_4
    add-int/lit8 p0, p0, -0x1

    .line 232
    goto/16 :goto_1

    .line 234
    :cond_4
    return v1
.end method
