.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/IMediaProjectionCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/IMediaProjectionCallback;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/IMediaProjectionCallback;

    .line 6
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/IMediaProjectionCallback;

    .line 3
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    :try_start_0
    invoke-interface {v0, v1, p0}, Landroid/media/projection/IMediaProjectionCallback;->onCapturedContentResize(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v2, "Failed to notify media projection has resized to "

    .line 14
    const-string v3, " x "

    .line 16
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string v1, "MediaProjectionManagerService"

    .line 22
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    return-void
.end method
