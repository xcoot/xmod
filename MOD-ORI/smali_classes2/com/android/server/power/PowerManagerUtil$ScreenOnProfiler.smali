.class public final Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static CHECK_FRAME:Z = true

.field public static mDisplayType:I = 0x1

.field public static mFrameCheckCnt:I = 0x0

.field public static mFramePass:Z = false

.field public static mFramePrevTime:J = -0x1L

.field public static mHandler:Landroid/os/Handler; = null

.field public static mHandlerThread:Landroid/os/HandlerThread; = null

.field public static sInitialized:Z = false


# instance fields
.field public mDisplayDuration:I

.field public mDisplayStartTime:J

.field public final mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

.field public mFrameDone:Z

.field public mFrameDuration:I

.field public mFrameEndTime:J

.field public mFrameStartTime:J

.field public mListenerDuration:I

.field public mListenerStartTime:J

.field public mOrder:I

.field public mSaved:Z

.field public mWakeUpDiff:I

.field public mWakeUpDuration:I

.field public mWakeUpEndTime:J

.field public mWakeUpStartTime:J

.field public mWakeUpTimeStr:Ljava/lang/String;

.field public mWmsDone:Z

.field public mWmsDuration:I

.field public mWmsStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    .line 3
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PmsFrameChecker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    .line 11
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 12
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 13
    iget-object v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    .line 14
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 15
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 16
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 17
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 18
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 19
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 20
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 21
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 22
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 23
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 24
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 25
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 26
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 27
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 28
    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    return-void
.end method

.method public static getFrameTimeFromDriver()J
    .locals 3

    .line 1
    sget v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "PowerManagerUtil"

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Display Type err = "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "/sys/class/lcd/panel1/display_on"

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "/sys/class/lcd/panel/display_on"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string/jumbo v0, "null : /sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on"

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    const-string v1, "/sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on data is "

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    const-wide/16 v0, -0x1

    .line 63
    .line 64
    :goto_2
    return-wide v0
.end method


# virtual methods
.method public final clearAll()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 25
    .line 26
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 37
    .line 38
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    .line 43
    .line 44
    return-void
.end method

.method public final noteFrameEnd()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 15
    .line 16
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    long-to-int v1, v1

    .line 20
    iput v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final noteFrameStart(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 15
    .line 16
    sput p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 23
    .line 24
    sget-object p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    .line 27
    .line 28
    const-wide/16 v0, 0x64

    .line 29
    .line 30
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 36
    .line 37
    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    cmp-long p1, v0, v2

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final noteWakeupEnd(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    add-long/2addr v0, v2

    .line 16
    long-to-int p1, v0

    .line 17
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 23
    .line 24
    sub-long/2addr v0, v2

    .line 25
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 26
    .line 27
    int-to-long v2, p1

    .line 28
    add-long/2addr v0, v2

    .line 29
    long-to-int p1, v0

    .line 30
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 34
    .line 35
    :goto_0
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 36
    .line 37
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long p1, v0, v2

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    .line 51
    .line 52
    const-string p1, "PowerManagerUtil"

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    .line 63
    .line 64
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    .line 15
    .line 16
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "[%3d][%s][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    .line 57
    .line 58
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "[%3d][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    .line 113
    .line 114
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0
.end method
