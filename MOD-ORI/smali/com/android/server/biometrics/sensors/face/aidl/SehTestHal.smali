.class public final Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;


# instance fields
.field public currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

.field public currentActionList:Ljava/util/List;

.field public currentActionListPos:I

.field public isEnrollSessionOpen:Z

.field public mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

.field public final mContext:Landroid/content/Context;

.field public mFaceId:I

.field public mGlassesOn:Z

.field public final mH:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

.field public final mSensorId:I

.field public final mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSensorId:I

    .line 10
    .line 11
    const-string/jumbo p1, "face.aidl.SehTestHal"

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x2

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, p1, v1}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    invoke-direct {v2, v3, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    const-string/jumbo p0, "constructed, "

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public final createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
    .locals 3

    .line 1
    const-string/jumbo v0, "createSession, sensorId: "

    .line 2
    .line 3
    .line 4
    const-string v1, " userId: "

    .line 5
    .line 6
    const-string/jumbo v2, "face.aidl.SehTestHal"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 15
    .line 16
    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .locals 1

    .line 1
    const-string/jumbo p0, "face.aidl.SehTestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "getSensorProps"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Landroid/hardware/biometrics/face/SensorProps;

    .line 12
    .line 13
    return-object p0
.end method
