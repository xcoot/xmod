.class public final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mListenerAndroid:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

.field public final mListenerWindowManager:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

.field public mSystemGestureExcludedByPreQStickyImmersive:Z

.field public mSystemGestureExclusionLimitDp:I

.field public mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field public final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "  "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "system_gesture_exclusion_log_debounce_millis"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "="

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 23
    .line 24
    const-string/jumbo v4, "system_gesture_exclusion_limit_dp"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v0, "system_gestures_excluded_by_pre_q_sticky_immersive"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
