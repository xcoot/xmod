.class public final Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final mHalInterfaceVersion:I

.field public final mSession:Landroid/hardware/biometrics/face/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 4
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 5
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 8
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sl : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSecurityLevel:I

    .line 11
    const-string v2, "HidlToAidlSessionAdapter"

    .line 12
    invoke-static {p2, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    iget p2, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSecurityLevel:I

    .line 14
    iput p2, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 15
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 17
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 18
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public final getSession()Landroid/hardware/biometrics/face/ISession;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 24
    .line 25
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 35
    .line 36
    return-object p0
.end method
