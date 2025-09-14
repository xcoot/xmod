.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;
.super Landroid/service/voice/IDetectorSessionStorageService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionStorageService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 1
    const-string v0, "HotwordDetectionConnection"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onFileOpen"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
