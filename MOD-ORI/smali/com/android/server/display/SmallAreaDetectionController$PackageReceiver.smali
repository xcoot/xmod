.class public final Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v1, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move p1, v2

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    cmpl-float v0, p1, v2

    .line 41
    .line 42
    if-lez v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    .line 45
    .line 46
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/android/server/display/SmallAreaDetectionController;->setSmallAreaDetectionThreshold(FI)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method
