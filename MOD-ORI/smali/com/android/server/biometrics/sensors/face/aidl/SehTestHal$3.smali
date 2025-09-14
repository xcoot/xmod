.class public final Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final deliverAcquiredEvent(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 16
    .line 17
    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 33
    .line 34
    int-to-byte p1, p1

    .line 35
    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 36
    .line 37
    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 40
    .line 41
    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final deliverAuthenticationResult(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 6
    .line 7
    const/16 v0, 0x45

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p0, p1, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 22
    .line 23
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void
.end method

.method public final deliverEnrollResult(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    .line 6
    .line 7
    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentProgress(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
