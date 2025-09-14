.class public abstract Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final contextHubId:I

.field public final timeStampInMs:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->timeStampInMs:J

    .line 6
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->contextHubId:I

    .line 8
    return-void
.end method
