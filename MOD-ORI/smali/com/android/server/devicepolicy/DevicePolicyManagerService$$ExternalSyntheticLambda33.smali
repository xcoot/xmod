.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda49()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 9
    .line 10
    sget-wide v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-lez v4, :cond_0

    .line 23
    .line 24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v2, 0x1

    .line 31
    .line 32
    add-long/2addr v2, v0

    .line 33
    monitor-exit p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v0
.end method

.method private final getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda63()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    const-string v1, "DevicePolicyManager"

    .line 12
    .line 13
    const-string v2, "Started device policies migration to the device policy engine."

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 19
    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 39
    .line 40
    const/4 v2, 0x7

    .line 41
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 48
    .line 49
    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 50
    .line 51
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    iput-boolean v3, v1, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 58
    .line 59
    .line 60
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :try_start_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :try_start_5
    throw v1

    .line 70
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 79
    .line 80
    .line 81
    const-string p0, "DevicePolicyManager"

    .line 82
    .line 83
    const-string v1, "Error occurred during device policy migration, will reattempt on the next system server restart."

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .line 93
    :goto_1
    return-object v1
.end method

.method private final getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda76()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda76()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda49()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 99
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v2, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_2

    .line 127
    .line 128
    const/16 v0, -0x2710

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 152
    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->nonTestNonPrecreatedUsersExist()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasIncompatibleAccountsOnAnyUser()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    xor-int/lit8 v1, v0, 0x1

    .line 170
    .line 171
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :goto_3
    return-object v0

    .line 176
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/4 v2, 0x0

    .line 185
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-ge v2, v3, :cond_6

    .line 190
    .line 191
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 196
    .line 197
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_5

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v1, "User id "

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, " not affiliated."

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "DevicePolicyManager"

    .line 225
    .line 226
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 236
    .line 237
    :goto_5
    return-object v0

    .line 238
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    return-object v0

    .line 249
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda63()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    return-object v0

    .line 254
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 257
    .line 258
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 259
    .line 260
    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 262
    .line 263
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 264
    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    xor-int/lit8 v0, v0, 0x1

    .line 267
    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    throw v0

    .line 276
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 277
    .line 278
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v2, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-object v3, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 289
    .line 290
    monitor-enter v3

    .line 291
    :try_start_2
    iget-object v4, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 292
    .line 293
    iget-object v5, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 294
    .line 295
    if-eqz v5, :cond_7

    .line 296
    .line 297
    iget v7, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 298
    .line 299
    iget-object v9, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 300
    .line 301
    new-instance v4, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 302
    .line 303
    const/4 v11, 0x0

    .line 304
    const/4 v12, 0x0

    .line 305
    const/16 v8, -0x2710

    .line 306
    .line 307
    const/4 v10, 0x1

    .line 308
    move-object v6, v4

    .line 309
    invoke-direct/range {v6 .. v12}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catchall_1
    move-exception v0

    .line 317
    goto/16 :goto_c

    .line 318
    .line 319
    :cond_7
    :goto_6
    const/4 v5, 0x0

    .line 320
    :goto_7
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 321
    .line 322
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 323
    .line 324
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-ge v5, v6, :cond_8

    .line 329
    .line 330
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 331
    .line 332
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 333
    .line 334
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    check-cast v6, Ljava/lang/Integer;

    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 345
    .line 346
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 347
    .line 348
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    check-cast v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 353
    .line 354
    iget-object v10, v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 355
    .line 356
    new-instance v6, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 357
    .line 358
    const/4 v12, 0x1

    .line 359
    const/4 v13, 0x0

    .line 360
    const/16 v9, -0x2710

    .line 361
    .line 362
    const/4 v11, 0x0

    .line 363
    move-object v7, v6

    .line 364
    invoke-direct/range {v7 .. v13}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    add-int/lit8 v5, v5, 0x1

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    monitor-enter v1

    .line 379
    const/4 v3, 0x0

    .line 380
    :goto_8
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-ge v3, v5, :cond_9

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 391
    .line 392
    iget v6, v5, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 393
    .line 394
    invoke-virtual {v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    iput-boolean v6, v5, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    .line 399
    .line 400
    add-int/lit8 v3, v3, 0x1

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :catchall_2
    move-exception v0

    .line 404
    goto :goto_b

    .line 405
    :cond_9
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 406
    .line 407
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    const/4 v1, 0x0

    .line 409
    :goto_9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-ge v1, v5, :cond_b

    .line 414
    .line 415
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 416
    .line 417
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 422
    .line 423
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 428
    .line 429
    invoke-virtual {v6, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 430
    .line 431
    .line 432
    move-result v14

    .line 433
    if-eq v14, v13, :cond_a

    .line 434
    .line 435
    const/4 v15, 0x0

    .line 436
    :goto_a
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-ge v15, v6, :cond_a

    .line 443
    .line 444
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 451
    .line 452
    iget-object v6, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 453
    .line 454
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    new-instance v12, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 459
    .line 460
    const/4 v11, 0x0

    .line 461
    const/16 v16, 0x1

    .line 462
    .line 463
    const/4 v10, 0x0

    .line 464
    move-object v6, v12

    .line 465
    move v7, v13

    .line 466
    move v8, v14

    .line 467
    move-object v4, v12

    .line 468
    move/from16 v12, v16

    .line 469
    .line 470
    invoke-direct/range {v6 .. v12}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    add-int/lit8 v15, v15, 0x1

    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_b
    return-object v2

    .line 483
    :goto_b
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 484
    throw v0

    .line 485
    :goto_c
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 486
    throw v0

    .line 487
    :pswitch_c
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 488
    .line 489
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 490
    .line 491
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_10

    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    monitor-enter v3

    .line 516
    :try_start_6
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 517
    .line 518
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdmins(I)Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    if-nez v4, :cond_c

    .line 523
    .line 524
    monitor-exit v3

    .line 525
    goto :goto_d

    .line 526
    :catchall_3
    move-exception v0

    .line 527
    goto :goto_f

    .line 528
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    :cond_d
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_f

    .line 537
    .line 538
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    check-cast v5, Landroid/content/ComponentName;

    .line 543
    .line 544
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 545
    .line 546
    invoke-virtual {v0, v6, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminTestOnlyLocked(ILandroid/content/ComponentName;)Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-nez v6, :cond_d

    .line 551
    .line 552
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 553
    .line 554
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 558
    .line 559
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    const-string/jumbo v6, "com.samsung.android.kgclient"

    .line 567
    .line 568
    .line 569
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v6

    .line 573
    if-nez v6, :cond_d

    .line 574
    .line 575
    const-string/jumbo v6, "com.nttdocomo.android.remotelock"

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    if-nez v6, :cond_d

    .line 583
    .line 584
    const-string/jumbo v6, "com.nttdocomo.android.wipe"

    .line 585
    .line 586
    .line 587
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    if-eqz v5, :cond_e

    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 595
    .line 596
    monitor-exit v3

    .line 597
    goto :goto_10

    .line 598
    :cond_f
    monitor-exit v3

    .line 599
    goto :goto_d

    .line 600
    :goto_f
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 601
    throw v0

    .line 602
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 603
    .line 604
    :goto_10
    return-object v0

    .line 605
    :pswitch_d
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 606
    .line 607
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 608
    .line 609
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-eqz v3, :cond_12

    .line 633
    .line 634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 639
    .line 640
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    if-nez v5, :cond_11

    .line 649
    .line 650
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    if-nez v4, :cond_11

    .line 659
    .line 660
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_12
    return-object v2

    .line 669
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 670
    .line 671
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 672
    .line 673
    const-string/jumbo v1, "wifi_device_owner_configs_lockdown"

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalGetInt(Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-lez v0, :cond_13

    .line 681
    .line 682
    const/4 v0, 0x1

    .line 683
    goto :goto_12

    .line 684
    :cond_13
    const/4 v0, 0x0

    .line 685
    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    return-object v0

    .line 690
    :pswitch_f
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 691
    .line 692
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedKioskInternal()Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-eqz v1, :cond_14

    .line 700
    .line 701
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 707
    .line 708
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 713
    .line 714
    const-wide/16 v1, 0x7530

    .line 715
    .line 716
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 717
    .line 718
    .line 719
    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 720
    if-eqz v0, :cond_14

    .line 721
    .line 722
    const/4 v0, 0x1

    .line 723
    goto :goto_13

    .line 724
    :catch_0
    move-exception v0

    .line 725
    goto :goto_14

    .line 726
    :cond_14
    const/4 v0, 0x0

    .line 727
    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    return-object v0

    .line 732
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 733
    .line 734
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 735
    .line 736
    .line 737
    throw v1

    .line 738
    nop

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
