.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final nanoappId:J

.field public final success:Z


# direct methods
.method public constructor <init>(IJJZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;-><init>(JI)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->nanoappId:J

    .line 5
    .line 6
    iput-boolean p6, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    .line 7
    .line 8
    return-void
.end method
