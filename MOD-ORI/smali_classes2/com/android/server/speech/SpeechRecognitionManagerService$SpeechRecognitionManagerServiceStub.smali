.class public final Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;
.super Landroid/speech/IRecognitionServiceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final setTemporaryComponent(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SpeechRecognitionManagerService"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p1, "Reset temporary service for user "

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0xea60

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "SpeechRecognition temporarily set to "

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " for 60000ms"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method
