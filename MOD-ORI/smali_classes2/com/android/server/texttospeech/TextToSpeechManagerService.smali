.class public final Lcom/android/server/texttospeech/TextToSpeechManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "texttospeech"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
