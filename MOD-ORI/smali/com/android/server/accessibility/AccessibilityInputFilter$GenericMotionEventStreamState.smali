.class public final Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
