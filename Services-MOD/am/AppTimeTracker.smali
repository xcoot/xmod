.class public final Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageTimes:Landroid/util/ArrayMap;

.field public final mReceiver:Landroid/app/PendingIntent;

.field public mStartedPackage:Ljava/lang/String;

.field public mStartedPackageTime:Landroid/util/MutableLong;

.field public mStartedTime:J

.field public mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    .line 13
    return-void
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 12

    .line 1
    const-wide v1, 0x10b0000001fL

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 9
    move-result-wide v8

    .line 10
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    .line 12
    invoke-virtual {v1}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-wide v2, 0x10900000001L

    .line 21
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 24
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 26
    const-wide v6, 0x10300000002L

    .line 31
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 40
    move-result v4

    .line 41
    if-ge v1, v4, :cond_0

    .line 43
    const-wide v4, 0x20b00000003L

    .line 48
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 51
    move-result-wide v4

    .line 52
    iget-object v10, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    move-result-object v10

    .line 58
    check-cast v10, Ljava/lang/String;

    .line 60
    invoke-virtual {p1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 63
    iget-object v10, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Landroid/util/MutableLong;

    .line 71
    iget-wide v10, v10, Landroid/util/MutableLong;->value:J

    .line 73
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 76
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 84
    const-wide/16 v1, 0x0

    .line 86
    cmp-long v1, v4, v1

    .line 88
    if-eqz v1, :cond_1

    .line 90
    const-wide v2, 0x10b00000004L

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 98
    move-result-wide v6

    .line 99
    move-object v1, p1

    .line 100
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 103
    const-wide v1, 0x10900000005L

    .line 108
    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 116
    return-void
.end method

.method public final dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "AppTimeTracker #"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    const-string v0, ":"

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p2, "  "

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "mReceiver="

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "mTotalTime="

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 76
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 79
    move-result v1

    .line 80
    if-ge v0, v1, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "mPackageTime:"

    .line 88
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v1, "="

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/util/MutableLong;

    .line 115
    iget-wide v1, v1, Landroid/util/MutableLong;->value:J

    .line 117
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    if-eqz p3, :cond_1

    .line 128
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 130
    const-wide/16 v2, 0x0

    .line 132
    cmp-long p3, v0, v2

    .line 134
    if-eqz p3, :cond_1

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    const-string/jumbo p3, "mStartedTime="

    .line 142
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 148
    move-result-wide v0

    .line 149
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 151
    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 154
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string/jumbo p2, "mStartedPackage="

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 18
    add-long/2addr v2, v0

    .line 19
    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 21
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-wide v3, v2, Landroid/util/MutableLong;->value:J

    .line 27
    add-long/2addr v3, v0

    .line 28
    iput-wide v3, v2, Landroid/util/MutableLong;->value:J

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 35
    :cond_1
    return-void
.end method
