.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public final synthetic f$1:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;->f$1:Landroid/media/projection/IMediaProjectionCallback;

    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;->f$1:Landroid/media/projection/IMediaProjectionCallback;

    .line 5
    sget v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->$r8$clinit:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Content Recording: MediaProjection stopped by Binder death - id= "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget v2, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 16
    const-string v3, "MediaProjectionManagerService"

    .line 18
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    iget-object v1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 23
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 25
    invoke-virtual {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 28
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 31
    return-void
.end method
