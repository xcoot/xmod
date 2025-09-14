.class public abstract Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 7
    return-void
.end method


# virtual methods
.method public inputSourceValid()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 3
    if-ltz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 4
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public shouldProcessScroll()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 3
    return p0
.end method

.method public updateInputSource(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 10
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method
