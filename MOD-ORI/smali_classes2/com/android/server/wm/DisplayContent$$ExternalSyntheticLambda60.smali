.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 v3, v2, 0x10

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v3, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 52
    .line 53
    const/16 v5, 0xa28

    .line 54
    .line 55
    if-ne v3, v5, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 61
    .line 62
    .line 63
    and-int/lit8 p1, v2, 0x28

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 66
    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->contains(II)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    :cond_4
    const/4 v4, 0x1

    .line 76
    :cond_5
    :goto_0
    return v4
.end method
