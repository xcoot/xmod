.class public final Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 39
    .line 40
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/server/usage/UserBroadcastEvents;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v3, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    :goto_0
    if-ltz v3, :cond_5

    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    iget-object v5, v4, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-int/lit8 v5, v5, -0x1

    .line 95
    .line 96
    :goto_1
    if-ltz v5, :cond_4

    .line 97
    .line 98
    iget-object v6, v4, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lcom/android/server/usage/BroadcastEvent;

    .line 105
    .line 106
    iget-object v6, v6, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    iget-object v6, v4, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method
