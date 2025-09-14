.class public final Lcom/android/server/wm/SnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final snapshot:Landroid/window/TaskSnapshot;

.field public final timestamp:J

.field public final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    .line 13
    .line 14
    return-void
.end method
