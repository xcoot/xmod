.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 3
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v0, "fingerprint_screen_lock"

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 17
    move-result v0

    .line 18
    if-eq v0, v1, :cond_0

    .line 20
    :goto_0
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string/jumbo v0, "fingerprint_always_on"

    .line 31
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 34
    move-result p0

    .line 35
    if-eq p0, v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    iget-boolean p0, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 40
    if-ne p0, v1, :cond_2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iput-boolean v1, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 45
    const/16 p0, 0x8

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 50
    :goto_2
    return-void
.end method
