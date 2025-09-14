.class public final Lcom/android/server/devicepolicy/FactoryResetter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForce:Z

.field public final mReason:Ljava/lang/String;

.field public final mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public final mShutdown:Z

.field public final mWipeAdoptableStorage:Z

.field public final mWipeEuicc:Z

.field public final mWipeFactoryResetProtection:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 8
    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 10
    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 12
    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 16
    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 20
    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    .line 24
    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    .line 28
    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 32
    iget-boolean p1, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    .line 34
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final factoryReset()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MASTER_CLEAR"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 19
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 21
    sget-object v4, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    move v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, v2

    .line 32
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 35
    sget-object v0, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 42
    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    .line 47
    return v3

    .line 48
    :cond_2
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$1;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$1;-><init>(Lcom/android/server/devicepolicy/FactoryResetter;)V

    .line 53
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 55
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    const-string v3, "FactoryResetter"

    .line 61
    const-string v4, "Delaying factory reset until %s confirms"

    .line 63
    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 68
    invoke-interface {p0, v0}, Landroid/app/admin/DevicePolicySafetyChecker;->onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V

    .line 71
    return v2
.end method

.method public final factoryResetInternalUnchecked()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v2

    .line 7
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    .line 9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    .line 15
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v4

    .line 19
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 21
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v5

    .line 25
    iget-boolean v10, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    .line 27
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v6

    .line 31
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 33
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "FactoryResetter"

    .line 39
    const-string/jumbo v3, "factoryReset(): reason=%s, shutdown=%b, force=%b, wipeEuicc=%b, wipeAdoptableStorage=%b, wipeFRP=%b"

    .line 42
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 47
    const-class v3, Landroid/os/UserManager;

    .line 49
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/os/UserManager;

    .line 55
    if-nez v7, :cond_1

    .line 57
    const-string/jumbo v3, "no_factory_reset"

    .line 60
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 69
    const-string v0, "Factory reset is not allowed for this user."

    .line 71
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_0
    if-eqz v10, :cond_3

    .line 77
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 79
    const-class v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 81
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 87
    if-eqz v1, :cond_2

    .line 89
    const-string v3, "Wiping factory reset protection"

    .line 91
    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const-string v1, "No need to wipe factory reset protection"

    .line 100
    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 105
    const-string v1, "Wiping adoptable storage"

    .line 107
    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 112
    const-class v2, Landroid/os/storage/StorageManager;

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 120
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 125
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 127
    invoke-static {v1, v0, p0, v7, v8}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 130
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "FactoryResetter["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string/jumbo v1, "no_reason"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v2, "reason=\'"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "\'"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    const-string v1, ",hasSafetyChecker"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 44
    if-eqz v1, :cond_2

    .line 46
    const-string v1, ",shutdown"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    .line 53
    if-eqz v1, :cond_3

    .line 55
    const-string v1, ",force"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    .line 62
    if-eqz v1, :cond_4

    .line 64
    const-string v1, ",wipeEuicc"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 71
    if-eqz v1, :cond_5

    .line 73
    const-string v1, ",wipeAdoptableStorage"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    .line 80
    if-eqz p0, :cond_6

    .line 82
    const-string p0, ",ipeFactoryResetProtection"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_6
    const/16 p0, 0x5d

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
