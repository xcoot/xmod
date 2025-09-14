.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    and-int/lit8 p2, p2, 0x4

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 11
    .line 12
    iput-object p3, p2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string p2, "MediaProjectionManagerService"

    .line 19
    .line 20
    const-string p3, "Content Recording: Stopped MediaProjection due to route type of REMOTE_DISPLAY not selected"

    .line 21
    .line 22
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    .line 4
    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    :cond_0
    return-void
.end method
