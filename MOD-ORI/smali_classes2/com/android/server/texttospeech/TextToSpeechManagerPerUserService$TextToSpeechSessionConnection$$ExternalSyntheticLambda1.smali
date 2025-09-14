.class public final synthetic Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;

    .line 2
    .line 3
    sget v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->$r8$clinit:I

    .line 4
    .line 5
    const-string v0, "client process death is reported"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->unbindEngine(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
