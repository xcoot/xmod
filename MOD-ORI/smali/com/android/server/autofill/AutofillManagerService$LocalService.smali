.class public final Lcom/android/server/autofill/AutofillManagerService$LocalService;
.super Landroid/view/autofill/AutofillManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/autofill/AutofillManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v1, v2

    .line 17
    :goto_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    monitor-exit v3

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/util/ArrayMap;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    monitor-exit v3

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    monitor-exit v3

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget-wide v4, v0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    .line 52
    .line 53
    cmp-long p2, p2, v4

    .line 54
    .line 55
    if-gtz p2, :cond_5

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_1
    new-instance p2, Landroid/content/AutofillOptions;

    .line 60
    .line 61
    invoke-direct {p2, v1, v2}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 65
    .line 66
    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 67
    .line 68
    invoke-virtual {p3, p2, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 72
    .line 73
    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v0, p3, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v0

    .line 84
    :try_start_1
    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    check-cast p3, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 91
    .line 92
    const-wide/16 v1, 0x0

    .line 93
    .line 94
    if-eqz p3, :cond_7

    .line 95
    .line 96
    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 97
    .line 98
    if-nez p3, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    check-cast p3, Ljava/lang/Long;

    .line 106
    .line 107
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 114
    iput-wide v1, p2, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter p3

    .line 126
    :try_start_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 127
    .line 128
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 133
    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    goto :goto_3

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    goto :goto_4

    .line 143
    :cond_8
    const/4 p0, 0x0

    .line 144
    :goto_3
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    iput-object p0, p2, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 146
    .line 147
    return-object p2

    .line 148
    :goto_4
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    throw p0

    .line 150
    :catchall_2
    move-exception p0

    .line 151
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    throw p0

    .line 153
    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    throw p0
.end method

.method public final isAugmentedAutofillServiceForUser(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    .line 25
    if-ne p0, p1, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return p2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return p2

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final onBackKeyPressed()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutofillManagerService"

    .line 6
    .line 7
    const-string/jumbo v1, "onBackKeyPressed()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
