.class public final synthetic Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOemUnlockEnabledProperty(Z)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    const/4 v2, 0x1

    .line 36
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOemUnlockEnabledProperty(Z)V

    .line 45
    .line 46
    .line 47
    :goto_1
    const-string/jumbo v0, "persistent_data_block"

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->signalInitDone()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
