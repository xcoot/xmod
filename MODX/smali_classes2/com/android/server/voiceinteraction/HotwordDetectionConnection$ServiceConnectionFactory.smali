.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBindingFlags:I

.field public final mDetectionServiceType:I

.field public final mIntent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    .line 9
    .line 10
    sget-boolean p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/16 p1, 0x2000

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .locals 11

    .line 1
    new-instance v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 2
    .line 3
    iget-object v10, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 4
    .line 5
    iget-object v2, v10, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    .line 8
    .line 9
    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v0, v10, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 15
    .line 16
    rem-int/lit8 v7, v0, 0xa

    .line 17
    .line 18
    iget v8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    .line 19
    .line 20
    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    .line 21
    .line 22
    iget v5, v10, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 23
    .line 24
    move-object v0, v9

    .line 25
    move-object v1, v10

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 30
    .line 31
    .line 32
    iget-object p0, v10, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 41
    .line 42
    .line 43
    const-string p0, "content_capture"

    .line 44
    .line 45
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {v0, v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 60
    .line 61
    .line 62
    const-string/jumbo p0, "speech_recognition"

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-direct {v0, v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 80
    .line 81
    .line 82
    new-instance p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v10, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 89
    .line 90
    .line 91
    new-instance p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v10, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 98
    .line 99
    .line 100
    return-object v9
.end method
