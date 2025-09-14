.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "android.app.wearable.HotwordAudioStreamBundleKey"

    .line 9
    .line 10
    const-class v1, Landroid/service/voice/HotwordAudioStream;

    .line 11
    .line 12
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/service/voice/HotwordAudioStream;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "WearableSensingManagerPerUserService"

    .line 21
    .line 22
    const-string p1, "No hotword audio stream received, unable to process hotword."

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getAudioFormat()Landroid/media/AudioFormat;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 47
    .line 48
    new-instance v7, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;

    .line 49
    .line 50
    invoke-direct {v7, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v1 .. v7}, Landroid/service/voice/VoiceInteractionManagerInternal;->startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method
