.class public final Lcom/android/server/display/DisplayPowerController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 5
    const-string p1, "ColorFade: onAnimationCancel"

    .line 7
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    iput v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    .line 16
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    move-result-wide v0

    .line 27
    iget-wide v2, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    .line 29
    sub-long/2addr v0, v2

    .line 30
    iget v2, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    .line 32
    int-to-long v2, v2

    .line 33
    add-long/2addr v0, v2

    .line 34
    long-to-int v0, v0

    .line 35
    iput v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 39
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 41
    const-string v0, "ColorFade: onAnimationEnd"

    .line 43
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 51
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 5
    const-string p1, "ColorFade: onAnimationRepeat"

    .line 7
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    .line 12
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 14
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 16
    const-string p1, "ColorFade: onAnimationStart"

    .line 18
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method
