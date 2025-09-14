.class Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageHistory:Landroid/util/ArrayMap;

.field public final mWindowSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 11
    const-wide/32 v0, 0x36ee80

    .line 14
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    .line 16
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/pm/UserPackage;

    .line 22
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/util/LongArrayQueue;

    .line 30
    iget-object v4, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    const-string v4, ", u"

    .line 37
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget v2, v2, Landroid/content/pm/UserPackage;->userId:I

    .line 42
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 45
    const-string v2, ": "

    .line 47
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    .line 53
    move-result v2

    .line 54
    add-int/lit8 v2, v2, -0x64

    .line 56
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v2

    .line 60
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    .line 63
    move-result v4

    .line 64
    add-int/lit8 v4, v4, -0x1

    .line 66
    :goto_1
    if-lt v4, v2, :cond_0

    .line 68
    invoke-virtual {v3, v4}, Landroid/util/LongArrayQueue;->get(I)J

    .line 71
    move-result-wide v5

    .line 72
    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 75
    const-string v5, ", "

    .line 77
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    add-int/lit8 v4, v4, -0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 92
    return-void
.end method

.method public final getNthLastWakeupForPackage(IILjava/lang/String;)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/LongArrayQueue;

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    .line 21
    move-result p1

    .line 22
    sub-int/2addr p1, p2

    .line 23
    if-gez p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/LongArrayQueue;->get(I)J

    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    return-wide v0
.end method

.method public final getTotalWakeupsInWindow(ILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/LongArrayQueue;

    .line 13
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    .line 20
    move-result p0

    .line 21
    :goto_0
    return p0
.end method

.method public final recordAlarmForPackage(ILjava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/util/LongArrayQueue;

    .line 13
    if-nez p2, :cond_0

    .line 15
    new-instance p2, Landroid/util/LongArrayQueue;

    .line 17
    invoke-direct {p2}, Landroid/util/LongArrayQueue;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    .line 34
    move-result-wide v0

    .line 35
    cmp-long p1, v0, p3

    .line 37
    if-gez p1, :cond_2

    .line 39
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 45
    move-result-wide p3

    .line 46
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    .line 48
    add-long/2addr p3, v0

    .line 49
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    .line 52
    move-result-wide v0

    .line 53
    cmp-long p1, p3, v0

    .line 55
    if-gez p1, :cond_3

    .line 57
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public final removeForUser(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 19
    iget v1, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 21
    if-ne v1, p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method
