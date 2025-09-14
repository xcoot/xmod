.class public final Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$1;
.super Landroid/speech/tts/ITextToSpeechSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$1;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechSession$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$1;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;

    .line 2
    .line 3
    sget v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->$r8$clinit:I

    .line 4
    .line 5
    const-string v0, "client disconnection request"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->unbindEngine(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
