.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 34
    .line 35
    const/16 v2, 0x45

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-ne v2, p0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iput-boolean p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 51
    .line 52
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string/jumbo v5, "biometric_tpa_mode"

    .line 66
    .line 67
    .line 68
    const/4 v6, -0x2

    .line 69
    invoke-static {v2, v3, v6, v5, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    or-int/lit8 p0, v2, 0x8

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    and-int/lit8 p0, v2, -0x9

    .line 79
    .line 80
    :goto_0
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v1, v5, v4, p0}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 90
    .line 91
    invoke-virtual {v0, p0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 99
    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method
