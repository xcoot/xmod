.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 7
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 9
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    .line 12
    move-result-object p0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/ActivityManagerInternal;->notifyMediaProjectionEvent(ILandroid/os/IBinder;I)V

    .line 17
    return-void
.end method
