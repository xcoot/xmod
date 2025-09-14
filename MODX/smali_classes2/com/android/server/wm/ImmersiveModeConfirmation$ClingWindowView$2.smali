.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final mTmpInt2:[I

.field public final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget v1, v0, v1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v1

    .line 33
    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    .line 34
    .line 35
    aget v2, v4, v2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-int/2addr p0, v2

    .line 46
    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Region;->set(IIII)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method
