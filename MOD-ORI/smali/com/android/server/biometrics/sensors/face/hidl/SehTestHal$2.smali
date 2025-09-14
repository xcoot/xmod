.class public final Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final deliverAcquiredEvent(II)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAcquired(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final deliverAuthenticationResult(I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 4
    .line 5
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 6
    .line 7
    new-instance v5, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    move v3, p1

    .line 15
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final deliverEnrollResult(I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    move v3, p1

    .line 12
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnrollResult(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
