.class public Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native nativeCloseHintSession(J)V
.end method

.method private static native nativeCreateHintSession(II[IJ)J
.end method

.method private static native nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
.end method

.method private static native nativeGetHintSessionPreferredRate()J
.end method

.method private native nativeInit()V
.end method

.method private static native nativePauseHintSession(J)V
.end method

.method private static native nativeReportActualWorkDuration(J[J[J)V
.end method

.method private static native nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
.end method

.method private static native nativeResumeHintSession(J)V
.end method

.method private static native nativeSendHint(JI)V
.end method

.method private static native nativeSetMode(JIZ)V
.end method

.method private static native nativeSetThreads(J[I)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public final halCloseHintSession(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCloseHintSession(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halCreateHintSession(II[IJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSession(II[IJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final halGetHintSessionPreferredRate()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeGetHintSessionPreferredRate()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final halInit()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeInit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halPauseHintSession(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativePauseHintSession(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halReportActualWorkDuration(J[J[J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[J[J)V

    return-void
.end method

.method public final halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    return-void
.end method

.method public final halResumeHintSession(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeResumeHintSession(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halSendHint(JI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSendHint(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halSetMode(JIZ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetMode(JIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halSetThreads(J[I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetThreads(J[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final halUpdateTargetWorkDuration(JJ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeUpdateTargetWorkDuration(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
