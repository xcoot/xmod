.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 7
    .line 8
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v8, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    move-object v1, v8

    .line 31
    move v4, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;-><init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 40
    .line 41
    iget v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$1:I

    .line 42
    .line 43
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$2:I

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 61
    .line 62
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-virtual {v0, v6, v6, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 88
    .line 89
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 90
    .line 91
    move-object v1, p0

    .line 92
    move v6, v10

    .line 93
    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 101
    .line 102
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$1:I

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;->f$2:I

    .line 105
    .line 106
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
