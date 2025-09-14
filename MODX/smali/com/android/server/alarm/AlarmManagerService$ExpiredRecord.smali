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

    .line 4
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    .line 6
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    .line 8
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    .line 10
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    .line 12
    iput-wide p9, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 14
    iput-wide p11, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    .line 16
    iput-wide p13, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    .line 18
    sub-long/2addr p7, p11

    .line 19
    sub-long/2addr p7, p9

    .line 20
    add-long/2addr p7, p13

    .line 21
    iput-wide p7, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    .line 23
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mFlags:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v2

    .line 7
    const-string v3, "[flag"

    .line 9
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 12
    const-wide/32 v2, 0x10000

    .line 15
    and-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x0

    .line 18
    cmp-long v0, v0, v2

    .line 20
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 22
    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredRtc:J

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastRtc:J

    .line 28
    cmp-long v2, v0, v2

    .line 30
    const-string/jumbo v3, "diff"

    .line 33
    if-nez v2, :cond_0

    .line 35
    const-string/jumbo v0, "last 0"

    .line 38
    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sub-long v0, v6, v0

    .line 44
    sub-long/2addr v0, v4

    .line 45
    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mLastElapsed:J

    .line 47
    add-long/2addr v0, v8

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 55
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWakeup:J

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "wakeup"

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 67
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mNonWakeup:J

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object p0

    .line 73
    const-string/jumbo v0, "non-wakeup"

    .line 76
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object p0

    .line 83
    const-string/jumbo v0, "elapsed"

    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 89
    const-string/jumbo p0, "rtc="

    .line 92
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 95
    new-instance p0, Ljava/util/Date;

    .line 97
    invoke-direct {p0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 100
    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    const-string p0, "]"

    .line 109
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    return-void
.end method
