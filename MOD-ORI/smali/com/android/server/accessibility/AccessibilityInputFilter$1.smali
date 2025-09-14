.class public final Lcom/android/server/accessibility/AccessibilityInputFilter$1;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/2addr v1, v2

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/16 v3, 0x1002

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 29
    .line 30
    and-int/lit8 v3, v3, 0x2

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    and-int/lit16 v3, v3, -0x100

    .line 40
    .line 41
    iget v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    .line 42
    .line 43
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    .line 44
    .line 45
    and-int/2addr v0, v4

    .line 46
    and-int/2addr v0, v3

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    move v2, v1

    .line 51
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method
