.class public final Lcom/android/server/am/AppFGSTracker$PackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_INDEX:I


# instance fields
.field public mForegroundServiceTypes:I

.field public mIsLongRunning:Z

.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 5
    move-result v0

    .line 6
    sput v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    .line 2
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    sget p3, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    aput-object p2, p1, p3

    .line 3
    iput-object p4, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    .line 5
    iget-boolean v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 6
    iget v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 7
    iget-object p1, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public final addEvent(JZ)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 6
    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 8
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 22
    :cond_0
    if-nez p3, :cond_5

    .line 24
    iget p3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 26
    if-eqz p3, :cond_5

    .line 28
    const/4 p3, 0x1

    .line 29
    move v2, p3

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 32
    array-length v4, v3

    .line 33
    if-ge v2, v4, :cond_4

    .line 35
    aget-object v3, v3, v2

    .line 37
    if-nez v3, :cond_1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 46
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 48
    aget-object v3, v3, v2

    .line 50
    new-instance v4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 52
    invoke-direct {v4, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    if-ne v2, v1, :cond_2

    .line 60
    move v3, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v3, v2, -0x1

    .line 64
    shl-int v3, p3, v3

    .line 66
    :goto_1
    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    .line 69
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 74
    :cond_5
    return-void
.end method

.method public final formatEventTypeLabel(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 3
    if-ne p1, p0, :cond_0

    .line 5
    const-string p0, "Overall foreground services: "

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    if-ne p1, p0, :cond_1

    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    sub-int/2addr p1, p0

    .line 19
    shl-int/2addr p0, p1

    .line 20
    :goto_0
    invoke-static {p0}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, ": "

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final notifyListenersOnStateChangeIfNecessary(IJZ)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v0, 0x8

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    :cond_1
    move v3, v0

    .line 11
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 15
    iget v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 17
    move-wide v4, p2

    .line 18
    move v7, p4

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public final setForegroundServiceType(IJ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 3
    if-eq p1, v0, :cond_5

    .line 5
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 16
    xor-int/2addr v0, p1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 20
    move-result v1

    .line 21
    :goto_0
    if-eqz v1, :cond_4

    .line 23
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 29
    array-length v4, v3

    .line 30
    if-ge v2, v4, :cond_3

    .line 32
    and-int v4, p1, v1

    .line 34
    if-eqz v4, :cond_2

    .line 36
    aget-object v4, v3, v2

    .line 38
    if-nez v4, :cond_1

    .line 40
    new-instance v4, Ljava/util/LinkedList;

    .line 42
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 45
    aput-object v4, v3, v2

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 53
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 55
    aget-object v2, v3, v2

    .line 57
    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 59
    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 62
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    aget-object v3, v3, v2

    .line 72
    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 82
    aget-object v2, v3, v2

    .line 84
    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 86
    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 89
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    .line 96
    :cond_3
    :goto_1
    not-int v1, v1

    .line 97
    and-int/2addr v0, v1

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 101
    move-result v1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iput p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 105
    :cond_5
    :goto_2
    return-void
.end method
