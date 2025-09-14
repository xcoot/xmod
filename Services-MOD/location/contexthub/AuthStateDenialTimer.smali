.class public final Lcom/android/server/location/contexthub/AuthStateDenialTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TIMEOUT_MS:J


# instance fields
.field public mCancelled:Z

.field public final mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

.field public final mNanoAppId:J

.field public mStopTimeInFuture:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x3c

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->TIMEOUT_MS:J

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 9
    iput-wide p2, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    .line 11
    new-instance p1, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    .line 13
    invoke-direct {p1, p0, p4}, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;-><init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    .line 18
    return-void
.end method
