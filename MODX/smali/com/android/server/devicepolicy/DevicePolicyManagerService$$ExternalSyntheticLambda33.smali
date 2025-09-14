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

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda49()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 5
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 10
    sget-wide v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    .line 12
    add-long/2addr v0, v2

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x0

    .line 20
    cmp-long v4, v0, v2

    .line 22
    if-lez v4, :cond_0

    .line 24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v2, 0x1

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

    .line 40
    move-result-object v0

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    .line 47
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    const-string v1, "DevicePolicyManager"

    .line 13
    const-string v2, "Started device policies migration to the device policy engine."

    .line 15
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 20
    const/16 v2, 0x9

    .line 22
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 25
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 28
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 30
    const/16 v2, 0x8

    .line 32
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 35
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 38
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;

    .line 40
    const/4 v2, 0x7

    .line 41
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 47
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 49
    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 51
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 54
    const/4 v3, 0x1

    .line 55
    iput-boolean v3, v1, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 57
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 60
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :try_start_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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

    .line 75
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 81
    const-string p0, "DevicePolicyManager"

    .line 83
    const-string v1, "Error occurred during device policy migration, will reattempt on the next system server restart."

    .line 85
    const/4 v2, 0x0

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    :goto_1
    return-object v1
.end method

.method private final getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda76()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 15
    move-result p0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 3
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda76()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 24
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda49()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 40
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 42
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v1

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 62
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 68
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 70
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 76
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 78
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 84
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 89
    move-result-object v1

    .line 90
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

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

    .line 101
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    move-result-object v1

    .line 107
    sget-object v2, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

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

    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 120
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 122
    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_2

    .line 128
    const/16 v0, -0x2710

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 138
    move-result v0

    .line 139
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 150
    move-result-object v2

    .line 151
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 153
    if-eqz v2, :cond_3

    .line 155
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->nonTestNonPrecreatedUsersExist()Z

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasIncompatibleAccountsOnAnyUser()Z

    .line 168
    move-result v0

    .line 169
    xor-int/lit8 v1, v0, 0x1

    .line 171
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    move-result-object v0

    .line 175
    :goto_3
    return-object v0

    .line 176
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 178
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 180
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 183
    move-result-object v1

    .line 184
    const/4 v2, 0x0

    .line 185
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 188
    move-result v3

    .line 189
    if-ge v2, v3, :cond_6

    .line 191
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 197
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 199
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "User id "

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " not affiliated."

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    const-string v1, "DevicePolicyManager"

    .line 226
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 231
    goto :goto_5

    .line 232
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 234
    goto :goto_4

    .line 235
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 237
    :goto_5
    return-object v0

    .line 238
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 240
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    .line 243
    move-result v0

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v0

    .line 248
    return-object v0

    .line 249
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->getOrThrow$com$android$server$devicepolicy$DevicePolicyManagerService$$ExternalSyntheticLambda63()Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 253
    return-object v0

    .line 254
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 256
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 258
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 260
    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 263
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    xor-int/lit8 v0, v0, 0x1

    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 278
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    .line 285
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v3, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 290
    monitor-enter v3

    .line 291
    :try_start_2
    iget-object v4, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 293
    iget-object v5, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 295
    if-eqz v5, :cond_7

    .line 297
    iget v7, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 299
    iget-object v9, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 301
    new-instance v4, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 303
    const/4 v11, 0x0

    .line 304
    const/4 v12, 0x0

    .line 305
    const/16 v8, -0x2710

    .line 307
    const/4 v10, 0x1

    .line 308
    move-object v6, v4

    .line 309
    invoke-direct/range {v6 .. v12}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 312
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    goto :goto_6

    .line 316
    :catchall_1
    move-exception v0

    .line 317
    goto/16 :goto_c

    .line 319
    :cond_7
    :goto_6
    const/4 v5, 0x0

    .line 320
    :goto_7
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 322
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 324
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 327
    move-result v6

    .line 328
    if-ge v5, v6, :cond_8

    .line 330
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 332
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 334
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 337
    move-result-object v6

    .line 338
    check-cast v6, Ljava/lang/Integer;

    .line 340
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 343
    move-result v8

    .line 344
    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 346
    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 348
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 351
    move-result-object v6

    .line 352
    check-cast v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 354
    iget-object v10, v6, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 356
    new-instance v6, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 358
    const/4 v12, 0x1

    .line 359
    const/4 v13, 0x0

    .line 360
    const/16 v9, -0x2710

    .line 362
    const/4 v11, 0x0

    .line 363
    move-object v7, v6

    .line 364
    invoke-direct/range {v7 .. v13}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 367
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v5, v5, 0x1

    .line 372
    goto :goto_7

    .line 373
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

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

    .line 383
    move-result v5

    .line 384
    if-ge v3, v5, :cond_9

    .line 386
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 392
    iget v6, v5, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 394
    invoke-virtual {v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 397
    move-result v6

    .line 398
    iput-boolean v6, v5, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    .line 400
    add-int/lit8 v3, v3, 0x1

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

    .line 407
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    const/4 v1, 0x0

    .line 409
    :goto_9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 412
    move-result v5

    .line 413
    if-ge v1, v5, :cond_b

    .line 415
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 417
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 420
    move-result-object v5

    .line 421
    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 423
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 426
    move-result v13

    .line 427
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 429
    invoke-virtual {v6, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 432
    move-result v14

    .line 433
    if-eq v14, v13, :cond_a

    .line 435
    const/4 v15, 0x0

    .line 436
    :goto_a
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 438
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 441
    move-result v6

    .line 442
    if-ge v15, v6, :cond_a

    .line 444
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 452
    iget-object v6, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 454
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 457
    move-result-object v9

    .line 458
    new-instance v12, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 460
    const/4 v11, 0x0

    .line 461
    const/16 v16, 0x1

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

    .line 470
    invoke-direct/range {v6 .. v12}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    .line 473
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v15, v15, 0x1

    .line 478
    goto :goto_a

    .line 479
    :cond_a
    add-int/lit8 v1, v1, 0x1

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

    .line 489
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 491
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 494
    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 498
    move-result-object v1

    .line 499
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_10

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 511
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 514
    move-result-object v3

    .line 515
    monitor-enter v3

    .line 516
    :try_start_6
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 518
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdmins(I)Ljava/util/List;

    .line 521
    move-result-object v4

    .line 522
    if-nez v4, :cond_c

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

    .line 531
    move-result-object v4

    .line 532
    :cond_d
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_f

    .line 538
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 541
    move-result-object v5

    .line 542
    check-cast v5, Landroid/content/ComponentName;

    .line 544
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 546
    invoke-virtual {v0, v6, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminTestOnlyLocked(ILandroid/content/ComponentName;)Z

    .line 549
    move-result v6

    .line 550
    if-nez v6, :cond_d

    .line 552
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 554
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 559
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 562
    move-result-object v5

    .line 563
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    const-string/jumbo v6, "com.samsung.android.kgclient"

    .line 569
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    move-result v6

    .line 573
    if-nez v6, :cond_d

    .line 575
    const-string/jumbo v6, "com.nttdocomo.android.remotelock"

    .line 578
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    move-result v6

    .line 582
    if-nez v6, :cond_d

    .line 584
    const-string/jumbo v6, "com.nttdocomo.android.wipe"

    .line 587
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    move-result v5

    .line 591
    if-eqz v5, :cond_e

    .line 593
    goto :goto_e

    .line 594
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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

    .line 604
    :goto_10
    return-object v0

    .line 605
    :pswitch_d
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 607
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 609
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 611
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 618
    move-result-object v1

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    .line 621
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 624
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 627
    move-result-object v1

    .line 628
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    move-result v3

    .line 632
    if-eqz v3, :cond_12

    .line 634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    move-result-object v3

    .line 638
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 640
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 643
    move-result-object v4

    .line 644
    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    .line 647
    move-result v5

    .line 648
    if-nez v5, :cond_11

    .line 650
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 653
    move-result v4

    .line 654
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 657
    move-result v4

    .line 658
    if-nez v4, :cond_11

    .line 660
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    goto :goto_11

    .line 668
    :cond_12
    return-object v2

    .line 669
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 671
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 673
    const-string/jumbo v1, "wifi_device_owner_configs_lockdown"

    .line 676
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalGetInt(Ljava/lang/String;)I

    .line 679
    move-result v0

    .line 680
    if-lez v0, :cond_13

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

    .line 688
    move-result-object v0

    .line 689
    return-object v0

    .line 690
    :pswitch_f
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 692
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedKioskInternal()Z

    .line 698
    move-result v1

    .line 699
    if-eqz v1, :cond_14

    .line 701
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 703
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 708
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 711
    move-result-object v0

    .line 712
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 714
    const-wide/16 v1, 0x7530

    .line 716
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 719
    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 720
    if-eqz v0, :cond_14

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

    .line 730
    move-result-object v0

    .line 731
    return-object v0

    .line 732
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 734
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

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
