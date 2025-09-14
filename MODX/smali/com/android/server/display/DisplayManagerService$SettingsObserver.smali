.class public final Lcom/android/server/display/DisplayManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "minimal_post_processing_allowed"

    .line 17
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p2

    .line 12
    const-string/jumbo v0, "minimal_post_processing_allowed"

    .line 15
    const/4 v1, -0x2

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 20
    move-result p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v0

    .line 26
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 32
    monitor-exit p1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
