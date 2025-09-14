.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 9
    .line 10
    iget v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$1:I

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v6, v2

    .line 15
    check-cast v6, Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v7, v0

    .line 20
    check-cast v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 40
    .line 41
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 42
    .line 43
    const/4 v12, 0x3

    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const-string v10, "FingerprintSensorTestClient"

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    const/4 v14, 0x0

    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    move v8, v15

    .line 54
    move-object/from16 p0, v0

    .line 55
    .line 56
    move v0, v15

    .line 57
    move-object/from16 v15, v16

    .line 58
    .line 59
    invoke-direct/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 71
    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    move-object/from16 v2, p0

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void

    .line 93
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 94
    .line 95
    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$1:I

    .line 96
    .line 97
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    invoke-direct {v4, v5, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 119
    .line 120
    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$1:I

    .line 121
    .line 122
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;->f$3:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-direct {v4, v5, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
