.class public final Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;
.super Landroid/speech/tts/ITextToSpeechManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string p0, "Engine cannot be null"

    .line 9
    .line 10
    invoke-interface {p2, p0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p2, "Failed running callback method: "

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "TextToSpeechManagerPerUserService"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 59
    .line 60
    invoke-static {v1, p0, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->start(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :try_start_2
    const-string p0, "Service is not available for user"

    .line 65
    .line 66
    invoke-interface {p2, p0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception p0

    .line 71
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p2, "Failed running callback method: "

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "TextToSpeechManagerPerUserService"

    .line 86
    .line 87
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    throw p0
.end method
