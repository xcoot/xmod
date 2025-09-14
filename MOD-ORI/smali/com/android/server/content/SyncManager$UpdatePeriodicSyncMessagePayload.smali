.class public final Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final flex:J

.field public final pollFrequency:J

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method
