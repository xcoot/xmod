.class public abstract Lcom/android/server/chimera/genie/GenieLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDump:Ljava/util/Queue;

.field public static final sLock:Ljava/lang/Object;

.field public static sReclaimedRequests:I

.field public static sRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method
