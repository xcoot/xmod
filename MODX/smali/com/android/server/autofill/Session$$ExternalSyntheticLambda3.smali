.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/Session;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/Session;

    .line 3
    const-string/jumbo v0, "handling death of "

    .line 6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "AutofillSession"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, " when saving="

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 28
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 42
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 44
    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 48
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 52
    const/4 v4, 0x3

    .line 53
    invoke-direct {v3, v0, p0, v4}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 56
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 64
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 66
    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v4, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-direct {v4, v0, v2, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_0
    monitor-exit v1

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method
