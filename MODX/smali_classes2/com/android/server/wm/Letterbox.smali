.class public final Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field public final mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mInner:Landroid/graphics/Rect;

.field public mInputWindow:Lcom/android/server/wm/WindowState;

.field public mLastUseFullWindowSurface:Z

.field public final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mOuter:Landroid/graphics/Rect;

.field public final mParentSurfaceSupplier:Ljava/util/function/Supplier;

.field public final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mSurfaceControlFactory:Ljava/util/function/Supplier;

.field public final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Point;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;)V
    .locals 6

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
    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 19
    .line 20
    const-string/jumbo v1, "top"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 29
    .line 30
    const-string v2, "left"

    .line 31
    .line 32
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 38
    .line 39
    const-string v3, "bottom"

    .line 40
    .line 41
    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 47
    .line 48
    const-string/jumbo v4, "right"

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 55
    .line 56
    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 57
    .line 58
    const-string v5, "fullWindow"

    .line 59
    .line 60
    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 64
    .line 65
    filled-new-array {v1, v0, v3, v2}, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 76
    .line 77
    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 78
    .line 79
    iput-object p5, p0, Lcom/android/server/wm/Letterbox;->mParentSurfaceSupplier:Ljava/util/function/Supplier;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget-object v4, v0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 25
    .line 26
    move-object/from16 v9, p3

    .line 27
    .line 28
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 29
    .line 30
    .line 31
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget v12, v2, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget-object v9, v0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 40
    .line 41
    move-object/from16 v14, p3

    .line 42
    .line 43
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 44
    .line 45
    .line 46
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 55
    .line 56
    move-object/from16 v8, p3

    .line 57
    .line 58
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 59
    .line 60
    .line 61
    iget v9, v2, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    iget-object v8, v0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 70
    .line 71
    move-object/from16 v13, p3

    .line 72
    .line 73
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 74
    .line 75
    .line 76
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 79
    .line 80
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 85
    .line 86
    move v1, v2

    .line 87
    move v2, v3

    .line 88
    move v3, v4

    .line 89
    move v4, v5

    .line 90
    move-object/from16 v5, p3

    .line 91
    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final useFullWindowSurface()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 31
    .line 32
    iget v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1
.end method
