.class public final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;
.super Landroid/speech/IRecognitionService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic val$clientToken:Landroid/os/IBinder;

.field public final synthetic val$creatorCallingUid:I

.field public final synthetic val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final synthetic val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 23
    .line 24
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v1, Landroid/permission/PermissionManager;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/permission/PermissionManager;

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-virtual {p1, p0, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->associateClientWithActiveListener(Landroid/os/IBinder;Landroid/speech/IRecognitionListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
