.class public final Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RequestSession;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "CredentialManager"

    .line 3
    const-string v1, "Client binder died - clearing session"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;->this$0:Lcom/android/server/credentials/RequestSession;

    .line 10
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 12
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 14
    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 23
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 30
    return-void
.end method
