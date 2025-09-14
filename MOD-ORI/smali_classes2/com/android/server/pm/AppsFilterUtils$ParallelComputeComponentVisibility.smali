.class public final Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExistingSettings:Landroid/util/ArrayMap;

.field public final mForceQueryable:Landroid/util/ArraySet;

.field public final mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mForceQueryable:Landroid/util/ArraySet;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 9
    .line 10
    return-void
.end method
