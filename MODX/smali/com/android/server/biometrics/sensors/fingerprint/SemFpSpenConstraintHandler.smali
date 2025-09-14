.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;


# static fields
.field static final ACTION_FOD_UPDATE:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

.field static final EXTRA_FOD_UPDATE_TSP_BLOCK:I = 0xe2

.field static final EXTRA_FOD_UPDATE_TSP_UNBLOCK:I = 0xe1

.field static final KEY_FOD_EXTRA_INFO:Ljava/lang/String; = "info"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public mIsTspBlocked:Z

.field public final mProvider:Landroid/util/Pair;

.field public final mRunnableHandleTspBlockAction:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field mTspBrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/Pair;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mProvider:Landroid/util/Pair;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    .line 10
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    .line 15
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mRunnableHandleTspBlockAction:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

    .line 17
    return-void
.end method


# virtual methods
.method public handleTspBlockAction(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mRunnableHandleTspBlockAction:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    return-void
.end method

.method public final notifyTspBlockStatusToHal(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mProvider:Landroid/util/Pair;

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 7
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 13
    const/16 v3, 0x23

    .line 15
    const/4 v5, 0x0

    .line 16
    move v2, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 20
    return-void
.end method

.method public final onAuthenticationAcquire(III)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    const/16 p1, 0x2711

    .line 6
    if-ne p3, p1, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public final onAuthenticationStarted(II)V
    .locals 2

    .line 1
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;II)V

    .line 7
    const-wide/16 v0, 0xa

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
.end method

.method public final onEnrollAcquire(II)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const/16 p1, 0x2711

    .line 6
    if-ne p2, p1, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public final onEnrollStarted(II)V
    .locals 2

    .line 1
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;II)V

    .line 7
    const-wide/16 v0, 0xa

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
.end method

.method public final onSpenEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "spengestureservice"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 20
    if-nez p0, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    const/16 v0, 0x7532

    .line 25
    if-ne p1, v0, :cond_2

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyBleSpenChargeLockState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v0, "onSpenEvent: "

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    const-string p1, "SemFpSpenConstraintHandler"

    .line 56
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_1
    return-void
.end method

.method public setTspBlockState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 3
    return-void
.end method
