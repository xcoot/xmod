.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/speech/IRecognitionServiceManager;

    .line 9
    .line 10
    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroid/os/IBinder;

    .line 17
    .line 18
    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Landroid/view/contentcapture/IContentCaptureManager;

    .line 25
    .line 26
    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    .line 27
    .line 28
    new-instance v0, Landroid/content/ContentCaptureOptions;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0, v0}, Landroid/service/voice/ISandboxedDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
