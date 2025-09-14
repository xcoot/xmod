.class public final Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDelayMillis:J

.field public mIsQueued:Z

.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 21
    .line 22
    return-void
.end method
