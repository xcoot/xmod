.class public final synthetic Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
