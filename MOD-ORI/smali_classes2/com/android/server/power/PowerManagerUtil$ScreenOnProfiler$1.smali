.class public final Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->getFrameTimeFromDriver()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-wide v2, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePrevTime:J

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    sget v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    .line 17
    .line 18
    add-int/lit8 v1, v0, 0x1

    .line 19
    .line 20
    sput v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const-wide/16 v1, 0x64

    .line 28
    .line 29
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 40
    .line 41
    const-string v0, "PowerManagerUtil"

    .line 42
    .line 43
    const-string v1, "Frame Timeout !!! "

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteFrameEnd()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteFrameEnd()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
