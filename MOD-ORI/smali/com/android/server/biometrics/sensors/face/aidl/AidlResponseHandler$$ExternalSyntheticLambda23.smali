.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;->f$1:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long p0, v1, v3

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-wide/16 v3, -0x1

    .line 17
    .line 18
    cmp-long v3, v1, v3

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    const-wide v3, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 35
    :goto_1
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 36
    .line 37
    iget v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 38
    .line 39
    invoke-interface {v2, v3, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 40
    .line 41
    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 45
    .line 46
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method
