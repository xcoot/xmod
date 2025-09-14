.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mSessionsByUserId:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final finishSession(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final get(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final startSession(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/security/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;-><init>(Ljava/security/KeyPair;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0
.end method
