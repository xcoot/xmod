.class public final Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ExtraDisplayPolicy;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CoverPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CoverPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOtherDisplayId(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public final hasCoverHome(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public final isCoverClosed()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    xor-int/2addr p0, v0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public final isDisplayControlledByPolicy(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public final shouldChooseDefaultTaskDisplayArea(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public final shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-ne p2, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final shouldNotTopDisplay(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    :goto_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 p0, 0x4

    .line 14
    if-ne p1, p0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return v0
.end method

.method public final shouldSkipAppTransition(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method
