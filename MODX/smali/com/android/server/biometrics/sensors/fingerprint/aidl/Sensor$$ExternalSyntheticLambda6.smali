.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 9
    const-string/jumbo v0, "getSehFingerprint: "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 19
    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 27
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 29
    const/4 v1, 0x6

    .line 30
    const v2, 0x186c8

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 42
    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 46
    if-eqz v1, :cond_1

    .line 48
    iget-object p1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 54
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 59
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-nez p1, :cond_2

    .line 63
    monitor-exit p0

    .line 64
    :goto_0
    move-object p1, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :try_start_3
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z

    .line 68
    if-eqz p1, :cond_3

    .line 70
    const-string p1, "FingerprintProvider"

    .line 72
    const-string v0, "FingerprintProvider#getSehFingerprint unsupported in HIDL"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    :try_start_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    if-nez p1, :cond_5

    .line 83
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 86
    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    if-nez p1, :cond_4

    .line 89
    monitor-exit p0

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    :try_start_6
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->asBinder()Landroid/os/IBinder;

    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 132
    monitor-exit p0

    .line 133
    :goto_2
    return-object p1

    .line 134
    :goto_3
    monitor-exit p0

    .line 135
    throw p1
.end method
