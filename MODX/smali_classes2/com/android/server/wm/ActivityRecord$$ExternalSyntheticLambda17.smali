.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    :cond_2
    :goto_0
    return-object p0
.end method
