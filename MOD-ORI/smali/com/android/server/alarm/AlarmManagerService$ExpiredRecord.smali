.class public final Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDiff:J

.field public final mFlags:J

.field public final mLastElapsed:J

.field public final mLastRtc:J

.field public final mNonWakeup:J

.field public final mWakeup:J

.field public final mWhenExpiredElapsed:J

.field public final mWhenExpiredRtc:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 13
    .line 14
    iput-wide p11, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    .line 15
    .line 16
    iput-wide p13, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    .line 17
    .line 18
    sub-long/2addr p7, p11

    .line 19
    sub-long/2addr p7, p9

    .line 20
    add-long/2addr p7, p13

    .line 21
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "[flag"

    .line 8
    .line 9
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0x10000

    .line 13
    .line 14
    .line 15
    and-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 21
    .line 22
    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    const-string/jumbo v3, "diff"

    .line 31
    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-string/jumbo v0, "last 0"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sub-long v0, v6, v0

    .line 43
    .line 44
    sub-long/2addr v0, v4

    .line 45
    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    .line 46
    .line 47
    add-long/2addr v0, v8

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "wakeup"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 65
    .line 66
    .line 67
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string/jumbo v0, "non-wakeup"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string/jumbo v0, "elapsed"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 87
    .line 88
    .line 89
    const-string/jumbo p0, "rtc="

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p0, Ljava/util/Date;

    .line 96
    .line 97
    invoke-direct {p0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p0, "]"

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
