.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string/jumbo p1, "info"

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 p2, 0xe2

    .line 23
    .line 24
    const/16 v0, 0xfa

    .line 25
    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 29
    .line 30
    iget-boolean v1, p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    iput-boolean p0, p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 p2, 0xe1

    .line 42
    .line 43
    if-ne p1, p2, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method
