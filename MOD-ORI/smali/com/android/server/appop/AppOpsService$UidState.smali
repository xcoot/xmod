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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-interface {v4, v5, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/16 v2, 0x2bc

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "    state="

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    const-string v1, "    pendingState="

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 59
    .line 60
    invoke-virtual {v3, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const-string v4, "    capability="

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 73
    .line 74
    .line 75
    if-eq v1, v3, :cond_1

    .line 76
    .line 77
    const-string v1, "    pendingCapability="

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 89
    .line 90
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 95
    .line 96
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const-string v3, "    appWidgetVisible="

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 106
    .line 107
    .line 108
    if-eq v1, v2, :cond_2

    .line 109
    .line 110
    const-string v1, "    pendingAppWidgetVisible="

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 119
    .line 120
    const-wide/16 v1, 0x0

    .line 121
    .line 122
    invoke-virtual {v0, p0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    cmp-long p0, v3, v1

    .line 127
    .line 128
    if-eqz p0, :cond_3

    .line 129
    .line 130
    const-string p0, "    pendingStateCommitTime="

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 139
    .line 140
    .line 141
    :cond_3
    return-void
.end method

.method public final evalMode(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/16 v1, 0x2bc

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
