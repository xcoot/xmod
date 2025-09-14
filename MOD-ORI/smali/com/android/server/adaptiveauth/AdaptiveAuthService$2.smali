.class public final Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;
.super Landroid/hardware/biometrics/AuthenticationStateListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;


# direct methods
.method public constructor <init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .locals 2

    .line 1
    const-string v0, "AdaptiveAuthService"

    .line 2
    .line 3
    const-string v1, "AuthenticationStateListener#onAuthenticationFailed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AdaptiveAuthService"

    .line 6
    .line 7
    const-string v1, "AuthenticationStateListener#onAuthenticationSucceeded"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getUserId()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x2

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
