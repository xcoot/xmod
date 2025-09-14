.class public final Lcom/android/server/biometrics/SemBiometricBoostingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;


# instance fields
.field public final mDvfsMgrs:Landroid/util/SparseArray;

.field public mFingerprintHalTid:I

.field public mIsEnabledSsrm:Z

.field public final mReleasers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 10
    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "BiometricsBoosting"

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 13
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, "sendBroadcastForBoosting: "

    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V
    .locals 3

    .line 1
    const-string v0, "acquireDvfs: "

    .line 3
    const-string v1, "acquireDvfs: "

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/samsung/android/os/SemDvfsManager;

    .line 14
    if-nez v2, :cond_2

    .line 16
    invoke-static {p1, p4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 22
    const-string p1, "BiometricsBoosting"

    .line 24
    const-string p2, "acquireDvfs: can\'t get SemDvfsManager"

    .line 26
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_2

    .line 34
    :cond_0
    :try_start_1
    const-string/jumbo p4, "biometrics_service"

    .line 37
    invoke-virtual {v2, p4}, Lcom/samsung/android/os/SemDvfsManager;->setProcName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 43
    if-lez p6, :cond_1

    .line 45
    const/high16 p2, -0xe00000

    .line 47
    invoke-virtual {v2, p2, p6}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    :cond_2
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 57
    if-eqz p2, :cond_3

    .line 59
    const-string p2, "BiometricsBoosting"

    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p4

    .line 73
    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 79
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 87
    if-nez p2, :cond_4

    .line 89
    new-instance p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 91
    invoke-direct {p2, p1, p3}, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;-><init>(Landroid/content/Context;I)V

    .line 94
    iget-object p4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {p4, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 110
    move-result-object p3

    .line 111
    int-to-long p4, p5

    .line 112
    invoke-virtual {p3, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    const-string p2, "CustomFrequencyManagerService"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/os/CustomFrequencyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz p2, :cond_5

    .line 125
    :try_start_2
    invoke-virtual {p2}, Landroid/os/CustomFrequencyManager;->disableGpisHint()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception p2

    .line 130
    :try_start_3
    const-string p3, "BiometricsBoosting"

    .line 132
    const-string p4, "acquireDvfs: failed to disableGipsHint"

    .line 134
    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_5
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 139
    if-nez p2, :cond_6

    .line 141
    const-string/jumbo p2, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

    .line 144
    invoke-static {p1, p2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 150
    :cond_6
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 152
    if-eqz p1, :cond_7

    .line 154
    const-string p1, "BiometricsBoosting"

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 163
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 166
    move-result p3

    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string p3, ", "

    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 177
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 180
    move-result p3

    .line 181
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string p3, ", "

    .line 186
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-boolean p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 198
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :cond_7
    monitor-exit p0

    .line 202
    return-void

    .line 203
    :goto_2
    monitor-exit p0

    .line 204
    throw p1
.end method

.method public final declared-synchronized release(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "release: "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/samsung/android/os/SemDvfsManager;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 28
    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 38
    const-string/jumbo v1, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

    .line 41
    invoke-static {p1, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 55
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 69
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 71
    if-eqz p1, :cond_3

    .line 73
    const-string p1, "BiometricsBoosting"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string p2, ", "

    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 93
    move-result p2

    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string p2, ", "

    .line 99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result p2

    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_3
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :goto_1
    monitor-exit p0

    .line 121
    throw p1
.end method
