.class public final Lcom/android/server/usage/UsageStatsService$1;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 3

    .line 1
    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {p3, v0, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 10
    .line 11
    .line 12
    shl-int/lit8 p4, p4, 0x10

    .line 13
    .line 14
    const v0, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr p5, v0

    .line 18
    or-int/2addr p4, p5

    .line 19
    iput p4, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 20
    .line 21
    iput-object p1, p3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 24
    .line 25
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
