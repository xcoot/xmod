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

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 22
    move-result-object v1

    .line 23
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 25
    if-eqz v1, :cond_0

    .line 27
    if-nez p0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 35
    const/16 v2, 0x45

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 43
    move-result-object v1

    .line 44
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ne v2, p0, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iput-boolean p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 52
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 58
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 60
    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 63
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v5, "biometric_tpa_mode"

    .line 68
    const/4 v6, -0x2

    .line 69
    invoke-static {v2, v3, v6, v5, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 72
    move-result v2

    .line 73
    if-eqz p0, :cond_2

    .line 75
    or-int/lit8 p0, v2, 0x8

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    and-int/lit8 p0, v2, -0x9

    .line 80
    :goto_0
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {v1, v5, v4, p0}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 85
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 88
    move-result-object p0

    .line 89
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 91
    invoke-virtual {v0, p0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 94
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 97
    move-result-object p0

    .line 98
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 108
    :cond_3
    return-void
.end method
