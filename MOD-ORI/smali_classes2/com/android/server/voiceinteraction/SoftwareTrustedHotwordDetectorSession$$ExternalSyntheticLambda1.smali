.class public final synthetic Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/IDspHotwordDetectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Landroid/service/voice/ISandboxedDetectionService;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/ISandboxedDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
