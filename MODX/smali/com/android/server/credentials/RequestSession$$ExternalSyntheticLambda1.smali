.class public final synthetic Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/RequestSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RequestSession;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RequestSession;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "CredentialManager"

    .line 8
    const-string v1, "Cancellation invoked from the client - clearing session"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 15
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 17
    sget-object v2, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v1, v2, :cond_0

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 28
    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 30
    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 32
    invoke-virtual {v6}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {v0, v5, v3, v6}, Landroid/credentials/selection/IntentFactory;->createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;)Landroid/content/Intent;

    .line 41
    move-result-object v0

    .line 42
    const/high16 v5, 0x10000000

    .line 44
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    move-result-object v0

    .line 48
    iget v5, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 50
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    move v0, v3

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    xor-int/2addr v0, v3

    .line 69
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 71
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 74
    move-result v1

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 78
    return-void
.end method
