.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Landroid/os/PersistableBundle;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$4:Landroid/media/AudioFormat;

.field public final synthetic f$5:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$6:Ljava/io/InputStream;

.field public final synthetic f$7:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$1:Landroid/os/PersistableBundle;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$4:Landroid/media/AudioFormat;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$5:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$6:Ljava/io/InputStream;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$7:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$8:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$1:Landroid/os/PersistableBundle;

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    .line 7
    iget-object v12, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    iget-object v9, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$4:Landroid/media/AudioFormat;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$5:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$6:Ljava/io/InputStream;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$7:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;->f$8:Z

    .line 18
    .line 19
    move-object p0, p1

    .line 20
    check-cast p0, Landroid/service/voice/ISandboxedDetectionService;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableHotwordWearableSensingApi()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Landroid/os/PersistableBundle;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string p1, "android.service.voice.HotwordDetectionService.KEY_SYSTEM_WILL_CLOSE_AUDIO_STREAM_AFTER_CALLBACK"

    .line 39
    .line 40
    invoke-virtual {v0, p1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    move-object v10, v0

    .line 44
    new-instance v11, Lcom/android/server/voiceinteraction/DetectorSession$3;

    .line 45
    .line 46
    move-object v0, v11

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession$3;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    .line 48
    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    move-object v6, p0

    .line 52
    move-object v7, v12

    .line 53
    invoke-interface/range {v6 .. v11}, Landroid/service/voice/ISandboxedDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-interface {v12}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    return-void
.end method
