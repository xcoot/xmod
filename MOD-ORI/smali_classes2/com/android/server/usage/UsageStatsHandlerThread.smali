.class public final Lcom/android/server/usage/UsageStatsHandlerThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
