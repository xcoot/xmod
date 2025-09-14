.class public final Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

.field public mDisplayDeviceType:I

.field public final mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

.field public final mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

.field public mOrientation:I

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/FreeformPersistBoundsParams;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/DexPersistBoundsParams;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/wm/DexPersistBoundsParams;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/wm/NewDexPersistBoundsParams;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 27
    .line 28
    iget v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/android/server/wm/FreeformPersistBoundsParams;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    if-eqz p0, :cond_5

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    if-nez p0, :cond_6

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 62
    :cond_7
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :cond_1
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformPersistBoundsParams;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0
.end method

.method public final reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 24
    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    iput v2, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 28
    .line 29
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 34
    .line 35
    iput v0, v1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 36
    .line 37
    iget-object v0, v1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 40
    .line 41
    .line 42
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iput v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    iget v1, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 39
    .line 40
    iput v1, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 41
    .line 42
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 52
    .line 53
    iget v2, v1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 54
    .line 55
    iput v2, v0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    .line 69
    .line 70
    iput p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    .line 71
    .line 72
    :cond_1
    return-void
.end method
