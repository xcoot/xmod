.class public final synthetic Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mDeferredPackages:Ljava/util/Set;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mDeferredPackages:Ljava/util/Set;

    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mDeferredPackages:Ljava/util/Set;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/server/wm/Task;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v6, v2

    .line 74
    check-cast v6, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v7, 0x0

    .line 84
    invoke-virtual {p0, v5, v7}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    iget v4, v4, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 89
    .line 90
    const/high16 v9, 0x200000

    .line 91
    .line 92
    and-int/2addr v4, v9

    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    const/4 v7, 0x1

    .line 96
    :cond_4
    if-eq v8, v7, :cond_1

    .line 97
    .line 98
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_2

    .line 112
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :try_start_4
    throw p0

    .line 114
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 122
    .line 123
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 124
    .line 125
    .line 126
    monitor-enter v0

    .line 127
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateAllTasksLocked()V

    .line 132
    .line 133
    .line 134
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 136
    .line 137
    .line 138
    :goto_3
    return-void

    .line 139
    :catchall_2
    move-exception p0

    .line 140
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
