.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onUserStarted(IILjava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p3, Landroid/hardware/biometrics/face/ISession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "New face session created for user: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " with hal version: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "Sensor"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 38
    .line 39
    invoke-direct {v1, p2, p3, p1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 43
    .line 44
    const-string/jumbo p2, "settings_face.xml"

    .line 45
    .line 46
    .line 47
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$2:I

    .line 48
    .line 49
    invoke-static {p3, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p2, v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    monitor-enter p2

    .line 60
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 61
    .line 62
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string p2, "Scheduling unfinished invalidation request for face sensor: "

    .line 66
    .line 67
    const-string v0, ", user: "

    .line 68
    .line 69
    invoke-static {p3, p1, p2, v0, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-direct {v0, p0, p1, p3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;III)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0
.end method
