.class public final Lcom/android/server/DockObserver$LogRecent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentReportLogIndex:I

.field public mCurrentUeventLogIndex:I

.field public report:[I

.field public reportTime:[J

.field public reportUsbpdIds:[Ljava/lang/String;

.field public uEventTime:[J

.field public uEventType:[I

.field public uEventUsbpdIds:[Ljava/lang/String;


# virtual methods
.method public final log(IILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 5
    .line 6
    rem-int/lit8 p1, p1, 0xa

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 19
    .line 20
    aput-wide v0, v2, p1

    .line 21
    .line 22
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 25
    .line 26
    aput p2, v0, p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 29
    .line 30
    aput-object p3, p2, p1

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 38
    .line 39
    rem-int/lit8 p1, p1, 0xa

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 44
    .line 45
    :cond_2
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 52
    .line 53
    aput-wide v0, v2, p1

    .line 54
    .line 55
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 58
    .line 59
    aput p2, v0, p1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 62
    .line 63
    aput-object p3, p2, p1

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 68
    .line 69
    :goto_0
    return-void
.end method
