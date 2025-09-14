.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public final mEnrollSessions:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 13
    return-void
.end method


# virtual methods
.method public final isEnrollSession(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final onDisplayOff()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/util/Pair;

    .line 26
    const-string v3, "FingerprintService"

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v5, "Revoke challenge due to screen off, "

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    move-result v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    check-cast v2, Ljava/lang/Runnable;

    .line 58
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final revokeChallenge(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/Pair;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/lang/Runnable;

    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
