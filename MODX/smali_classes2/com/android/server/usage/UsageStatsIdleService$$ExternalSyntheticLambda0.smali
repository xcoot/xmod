.class public final synthetic Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsIdleService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobNamespace()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "usagestats_mapping"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v4, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v6

    .line 68
    :try_start_0
    iget-object v7, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_2

    .line 79
    .line 80
    monitor-exit v6

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    .line 91
    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    monitor-exit v6

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_1
    xor-int/lit8 p0, v4, 0x1

    .line 102
    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_4
    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 110
    .line 111
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 112
    .line 113
    iget-object v3, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 114
    .line 115
    monitor-enter v3

    .line 116
    :try_start_2
    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_5

    .line 127
    .line 128
    monitor-exit v3

    .line 129
    goto :goto_3

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    .line 139
    .line 140
    if-nez p0, :cond_6

    .line 141
    .line 142
    monitor-exit v3

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :goto_3
    xor-int/lit8 p0, v4, 0x1

    .line 150
    .line 151
    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 152
    .line 153
    .line 154
    :goto_4
    return-void

    .line 155
    :goto_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    throw p0
.end method
