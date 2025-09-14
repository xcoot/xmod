.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/speech/IRecognitionListener;

    .line 11
    .line 12
    sget v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->removeClient(Landroid/speech/IRecognitionListener;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$lambda$XM077MW2pg9W0-weK1UAA4Npj6A(Lcom/android/server/speech/RemoteSpeechRecognitionService;Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
