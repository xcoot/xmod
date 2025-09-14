.class public final Lcom/android/server/wm/SizeCompatAttributes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mBounds:Landroid/graphics/Rect;

.field public mEnabled:Z

.field public final mReason:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

.field public mReturnBounds:Landroid/graphics/Rect;

.field public mScale:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mScale:F

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/SizeCompatAttributes;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReason:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final cleanUp(Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReason:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Lcom/android/server/wm/SizeCompatAttributes;->mScale:F

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float p1, p1, v0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move p1, v1

    .line 20
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/SizeCompatAttributes;->mEnabled:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mScale:F

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReturnBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatAttributes:Lcom/android/server/wm/SizeCompatAttributes;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/SizeCompatAttributes;->hasBounds()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReturnBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReturnBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReturnBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wm/SizeCompatAttributes;->mBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mReturnBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    return-object p0
.end method

.method public final hasBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatAttributes;->mBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
