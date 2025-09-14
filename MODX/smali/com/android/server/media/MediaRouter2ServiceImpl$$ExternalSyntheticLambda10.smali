.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>(II)V

    .line 22
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->maybeUpdateSystemRoutingPermissionLocked()V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
