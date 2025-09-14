.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 4
    .line 5
    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->ping(Landroid/os/IRemoteCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
