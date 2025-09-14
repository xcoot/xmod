.class public final Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;


# direct methods
.method public constructor <init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const-string v1, "AdaptiveAuthService"

    .line 5
    const-string v2, ", userId="

    .line 7
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;->this$0:Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v4, :cond_3

    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v0, v5, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 19
    if-eqz v0, :cond_1

    .line 21
    move v3, v4

    .line 22
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 24
    sget-boolean v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v5, "handleReportBiometricAuthAttempt: success="

    .line 36
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_2
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->reportAuthAttempt(IIZ)V

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 61
    if-eqz v0, :cond_4

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v4, v3

    .line 65
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 67
    sget-boolean v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 69
    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v5, "handleReportPrimaryAuthAttempt: success="

    .line 79
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->reportAuthAttempt(IIZ)V

    .line 101
    :goto_1
    return-void
.end method
