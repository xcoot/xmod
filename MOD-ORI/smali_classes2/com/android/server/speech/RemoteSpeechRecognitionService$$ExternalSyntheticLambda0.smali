.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/content/AttributionSource;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/speech/IModelDownloadListener;

    .line 13
    .line 14
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 15
    .line 16
    sget v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    .line 17
    .line 18
    invoke-interface {p1, v0, v1, p0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    .line 29
    .line 30
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 31
    .line 32
    sget v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    .line 33
    .line 34
    invoke-interface {p1, v0, v1, p0}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Landroid/content/AttributionSource;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Landroid/speech/IRecognitionSupportCallback;

    .line 45
    .line 46
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 47
    .line 48
    sget v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    .line 49
    .line 50
    invoke-interface {p1, v0, v1, p0}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
