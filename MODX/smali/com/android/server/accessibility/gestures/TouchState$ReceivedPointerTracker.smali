.class public final Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastReceivedDownEdgeFlags:I

.field public mPrimaryPointerId:I

.field public final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field public mReceivedPointersDown:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 p1, 0x20

    .line 6
    new-array v0, p1, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 8
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 13
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 15
    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 24
    aput-object v1, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final getPrimaryPointerId()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 8
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    shl-int/2addr v5, v4

    .line 21
    not-int v5, v5

    .line 22
    and-int/2addr v0, v5

    .line 23
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 25
    aget-object v5, v5, v4

    .line 27
    iget-wide v5, v5, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 29
    cmp-long v7, v5, v2

    .line 31
    if-gez v7, :cond_0

    .line 33
    move v1, v4

    .line 34
    move-wide v2, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 38
    :cond_2
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 40
    return p0
.end method

.method public final getReceivedPointerDownX(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 3
    aget-object p0, p0, p1

    .line 5
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 7
    return p0
.end method

.method public final getReceivedPointerDownY(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 3
    aget-object p0, p0, p1

    .line 5
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 7
    return p0
.end method

.method public final handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    shl-int/2addr v1, v0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 10
    move-result v2

    .line 11
    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 13
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 15
    or-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 20
    aget-object v1, v1, v0

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 33
    move-result-wide v3

    .line 34
    iput v2, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 36
    iput p1, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 38
    iput-wide v3, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 46
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 48
    :cond_0
    return-void
.end method

.method public final handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    shl-int/2addr p2, p1

    .line 7
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 9
    not-int p2, p2

    .line 10
    and-int/2addr p2, v0

    .line 11
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 13
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 15
    aget-object p2, p2, p1

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 20
    iput v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 22
    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 26
    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 28
    if-ne p2, p1, :cond_0

    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 33
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "=========================\nDown pointers #"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " [ "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    const/16 v2, 0x20

    .line 25
    if-ge v1, v2, :cond_1

    .line 27
    const/4 v2, 0x1

    .line 28
    shl-int/2addr v2, v1

    .line 29
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 31
    and-int/2addr v2, v3

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " "

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "]\nPrimary pointer id [ "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 53
    move-result p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string p0, " ]\n========================="

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
