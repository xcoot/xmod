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

    .line 4
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 6
    rem-int/lit8 p1, p1, 0xa

    .line 8
    if-nez p1, :cond_0

    .line 10
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 12
    :cond_0
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 20
    aput-wide v0, v2, p1

    .line 22
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 24
    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 26
    aput p2, v0, p1

    .line 28
    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 30
    aput-object p3, p2, p1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 39
    rem-int/lit8 p1, p1, 0xa

    .line 41
    if-nez p1, :cond_2

    .line 43
    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 45
    :cond_2
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 53
    aput-wide v0, v2, p1

    .line 55
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 57
    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 59
    aput p2, v0, p1

    .line 61
    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 63
    aput-object p3, p2, p1

    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 67
    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 69
    :goto_0
    return-void
.end method
