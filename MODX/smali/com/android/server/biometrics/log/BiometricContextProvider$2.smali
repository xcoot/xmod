.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$2;
.super Landroid/hardware/biometrics/IBiometricContextListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayStateChanged(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    const-string v0, ""

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "DISPLAY_STATE_AOD"

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "DISPLAY_STATE_SCREENSAVER"

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string v0, "DISPLAY_STATE_NO_UI"

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const-string v0, "DISPLAY_STATE_LOCKSCREEN"

    .line 29
    goto :goto_0

    .line 30
    :cond_4
    const-string v0, "DISPLAY_STATE_UNKNOWN"

    .line 32
    :goto_0
    const-string/jumbo v1, "onDisplayStateChanged: "

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "BiometricContextProvider"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 46
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 48
    if-eq p1, v0, :cond_6

    .line 50
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 52
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    .line 54
    if-eqz p1, :cond_5

    .line 56
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    .line 58
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 72
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 77
    :cond_6
    :goto_1
    return-void
.end method

.method public final onFoldChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 3
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 9
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 29
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final onHardwareIgnoreTouchesChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 9
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 29
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method
