.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

.field public final synthetic val$callback:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;->val$callback:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Resetting lockout: "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "FaceService.lockout"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string/jumbo p1, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string/jumbo p1, "lockout_reset_user"

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 v0, 0x1

    .line 52
    if-ne p2, v0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;->val$callback:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 63
    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 67
    .line 68
    if-ne p2, p1, :cond_0

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutCleared()V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method
