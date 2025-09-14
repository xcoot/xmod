.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/IMediaProjectionCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/IMediaProjectionCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/IMediaProjectionCallback;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/IMediaProjectionCallback;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;->f$1:Z

    .line 5
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/projection/IMediaProjectionCallback;->onCapturedContentVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Failed to notify media projection has captured content visibility change to "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v1, "MediaProjectionManagerService"

    .line 26
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    return-void
.end method
