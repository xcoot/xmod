.class public final synthetic Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic f$1:Landroid/speech/IRecognitionServiceManagerCallback;

.field public final synthetic f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/speech/IRecognitionServiceManagerCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$5:Landroid/os/IBinder$DeathRecipient;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/speech/IRecognitionServiceManagerCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;->f$5:Landroid/os/IBinder$DeathRecipient;

    .line 12
    .line 13
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x5

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    :try_start_0
    new-instance p1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;

    .line 22
    .line 23
    move-object v5, p0

    .line 24
    check-cast v5, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v6, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onSuccess(Landroid/speech/IRecognitionService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "SpeechRecognitionManagerServiceImpl"

    .line 36
    .line 37
    const-string v0, "Error creating a speech recognition session"

    .line 38
    .line 39
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-static {v6, v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v6, v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
