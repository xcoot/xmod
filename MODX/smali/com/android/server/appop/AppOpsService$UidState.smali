.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final pkgOps:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 13
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 15
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 5
    iget v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 7
    invoke-interface {v1, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 16
    move-result v3

    .line 17
    if-ge v1, v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 27
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 29
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v5

    .line 33
    invoke-interface {v4, v5, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 11
    const/16 v2, 0x2bc

    .line 13
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 15
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    move-result v2

    .line 25
    const-string v3, "    state="

    .line 27
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    if-eq v1, v2, :cond_0

    .line 39
    const-string v1, "    pendingState="

    .line 41
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 57
    move-result v1

    .line 58
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 60
    invoke-virtual {v3, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    move-result v3

    .line 64
    const-string v4, "    capability="

    .line 66
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 75
    if-eq v1, v3, :cond_1

    .line 77
    const-string v1, "    pendingCapability="

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 88
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 90
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 93
    move-result v1

    .line 94
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 96
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 99
    move-result v2

    .line 100
    const-string v3, "    appWidgetVisible="

    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    if-eq v1, v2, :cond_2

    .line 110
    const-string v1, "    pendingAppWidgetVisible="

    .line 112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 118
    :cond_2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 120
    const-wide/16 v1, 0x0

    .line 122
    invoke-virtual {v0, p0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 125
    move-result-wide v3

    .line 126
    cmp-long p0, v3, v1

    .line 128
    if-eqz p0, :cond_3

    .line 130
    const-string p0, "    pendingStateCommitTime="

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 141
    :cond_3
    return-void
.end method

.method public final evalMode(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 9
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 9
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 14
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 16
    const/16 v1, 0x2bc

    .line 18
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    move-result p0

    .line 22
    return p0
.end method
