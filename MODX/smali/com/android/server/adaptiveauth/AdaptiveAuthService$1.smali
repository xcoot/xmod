.class public final Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/widget/LockSettingsStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;


# direct methods
.method public constructor <init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAuthenticationFailed(I)V
    .locals 2

    .line 1
    const-string v0, "AdaptiveAuthService"

    .line 3
    const-string v1, "LockSettingsStateListener#onAuthenticationFailed"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 10
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    return-void
.end method

.method public final onAuthenticationSucceeded(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AdaptiveAuthService"

    .line 7
    const-string v1, "LockSettingsStateListener#onAuthenticationSucceeded"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 14
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    return-void
.end method
