.class public final Lcom/android/server/pm/pkg/PackageUserStateImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
