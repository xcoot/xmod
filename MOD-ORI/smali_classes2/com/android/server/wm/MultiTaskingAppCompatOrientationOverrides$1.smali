.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    const-string v1, "OrientationOverrides"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final onSystemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 9
    .line 10
    and-int/2addr p2, v1

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
