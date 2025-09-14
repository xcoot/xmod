.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLock:Ljava/lang/Object;

.field public static sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field public mInPool:Z

.field public mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


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
    sput-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    move v0, v2

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public static toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "ACTION_"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " "

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final recycle()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 9
    .line 10
    sget-boolean v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 31
    .line 32
    sget v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    if-ge v1, v2, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    add-int/2addr v1, v2

    .line 40
    sput v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 41
    .line 42
    sget-object v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 45
    .line 46
    sput-object p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "Already recycled."

    .line 58
    .line 59
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method
