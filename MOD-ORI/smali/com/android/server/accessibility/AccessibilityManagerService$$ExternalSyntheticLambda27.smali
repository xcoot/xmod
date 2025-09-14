.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/lit8 v1, v1, 0x3

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    .line 35
    .line 36
    invoke-direct {p2, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 46
    .line 47
    const/16 v1, 0xd

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
