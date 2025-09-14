.class public final Lcom/android/server/pm/PersistentPreferredIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver$1;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 7
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 8
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2
    .line 3
    iget-object p0, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object p0
.end method

.method public final snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredActivity;

    :goto_0
    return-object p0
.end method
