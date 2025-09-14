.class public final Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigFrame:Landroid/graphics/Rect;

.field public final mConfigInsets:Landroid/graphics/Rect;

.field public final mCutoutInsets:Landroid/graphics/Rect;

.field public final mExceptNavConfigInsets:Landroid/graphics/Rect;

.field public mNeedUpdate:Z

.field public final mNonDecorFrame:Landroid/graphics/Rect;

.field public final mNonDecorInsets:Landroid/graphics/Rect;

.field public final mOverrideConfigFrame:Landroid/graphics/Rect;

.field public final mOverrideConfigInsets:Landroid/graphics/Rect;

.field public final mOverrideNonDecorFrame:Landroid/graphics/Rect;

.field public final mOverrideNonDecorInsets:Landroid/graphics/Rect;


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
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 62
    .line 63
    new-instance v0, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mCutoutInsets:Landroid/graphics/Rect;

    .line 69
    .line 70
    new-instance v0, Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mExceptNavConfigInsets:Landroid/graphics/Rect;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 59
    .line 60
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "{nonDecorInsets="

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", overrideNonDecorInsets="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", configInsets="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", overrideConfigInsets="

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", nonDecorFrame="

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", overrideNonDecorFrame="

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", configFrame="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ", overrideConfigFrame="

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 p0, 0x7d

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method

.method public final update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;
    .locals 10

    .line 1
    new-instance v8, Lcom/android/server/wm/DisplayFrames;

    .line 2
    .line 3
    invoke-direct {v8}, Lcom/android/server/wm/DisplayFrames;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v9, 0x0

    .line 7
    invoke-virtual {p4, p1, v9}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {p4, p1}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v0, p4, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    .line 16
    .line 17
    iget-object v1, p4, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v6, v0

    .line 24
    check-cast v6, Landroid/view/PrivacyIndicatorBounds;

    .line 25
    .line 26
    iget-object v0, p4, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    .line 27
    .line 28
    iget-object v1, p4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v7, v0

    .line 35
    check-cast v7, Landroid/view/DisplayShape;

    .line 36
    .line 37
    move-object v0, v8

    .line 38
    move v1, p1

    .line 39
    move v2, p2

    .line 40
    move v3, p3

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 45
    .line 46
    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v8, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-object p3, p4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    iget p3, p3, Lcom/android/server/wm/WindowManagerService;->mDecorTypes:I

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object v1, p4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    .line 66
    iget v2, v1, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    .line 67
    .line 68
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mDecorTypes:I

    .line 69
    .line 70
    if-ne v2, v1, :cond_0

    .line 71
    .line 72
    move-object v1, p3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, p2, v2, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_0
    iget-object v2, p4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    iget v3, v2, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    .line 81
    .line 82
    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mOverrideConfigTypes:I

    .line 83
    .line 84
    if-ne v3, v2, :cond_1

    .line 85
    .line 86
    move-object v2, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p1, p2, v2, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_1
    iget-object p4, p4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    iget v3, p4, Lcom/android/server/wm/WindowManagerService;->mDecorTypes:I

    .line 95
    .line 96
    iget p4, p4, Lcom/android/server/wm/WindowManagerService;->mOverrideDecorTypes:I

    .line 97
    .line 98
    if-ne v3, p4, :cond_2

    .line 99
    .line 100
    move-object p4, p3

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p1, p2, p4, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 107
    .line 108
    iget v4, p3, Landroid/graphics/Insets;->left:I

    .line 109
    .line 110
    iget v5, p3, Landroid/graphics/Insets;->top:I

    .line 111
    .line 112
    iget v6, p3, Landroid/graphics/Insets;->right:I

    .line 113
    .line 114
    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    .line 115
    .line 116
    invoke-virtual {v3, v4, v5, v6, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    .line 118
    .line 119
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 120
    .line 121
    iget v3, v1, Landroid/graphics/Insets;->left:I

    .line 122
    .line 123
    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 124
    .line 125
    iget v5, v1, Landroid/graphics/Insets;->right:I

    .line 126
    .line 127
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 128
    .line 129
    invoke-virtual {p3, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    .line 131
    .line 132
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 133
    .line 134
    iget v1, v2, Landroid/graphics/Insets;->left:I

    .line 135
    .line 136
    iget v3, v2, Landroid/graphics/Insets;->top:I

    .line 137
    .line 138
    iget v4, v2, Landroid/graphics/Insets;->right:I

    .line 139
    .line 140
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 141
    .line 142
    invoke-virtual {p3, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    .line 144
    .line 145
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 146
    .line 147
    iget v1, p4, Landroid/graphics/Insets;->left:I

    .line 148
    .line 149
    iget v2, p4, Landroid/graphics/Insets;->top:I

    .line 150
    .line 151
    iget v3, p4, Landroid/graphics/Insets;->right:I

    .line 152
    .line 153
    iget p4, p4, Landroid/graphics/Insets;->bottom:I

    .line 154
    .line 155
    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 159
    .line 160
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    .line 162
    .line 163
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    .line 164
    .line 165
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 168
    .line 169
    .line 170
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    .line 174
    .line 175
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 176
    .line 177
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 185
    .line 186
    .line 187
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 188
    .line 189
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 192
    .line 193
    .line 194
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    .line 198
    .line 199
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    .line 200
    .line 201
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 204
    .line 205
    .line 206
    iput-boolean v9, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 207
    .line 208
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 217
    .line 218
    .line 219
    move-result p4

    .line 220
    invoke-virtual {p1, p2, p4, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mCutoutInsets:Landroid/graphics/Rect;

    .line 225
    .line 226
    iget v0, p2, Landroid/graphics/Insets;->left:I

    .line 227
    .line 228
    iget v1, p2, Landroid/graphics/Insets;->top:I

    .line 229
    .line 230
    iget v2, p2, Landroid/graphics/Insets;->right:I

    .line 231
    .line 232
    iget v3, p2, Landroid/graphics/Insets;->bottom:I

    .line 233
    .line 234
    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mExceptNavConfigInsets:Landroid/graphics/Rect;

    .line 238
    .line 239
    iget p4, p3, Landroid/graphics/Insets;->left:I

    .line 240
    .line 241
    iget v0, p2, Landroid/graphics/Insets;->left:I

    .line 242
    .line 243
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    .line 244
    .line 245
    .line 246
    move-result p4

    .line 247
    iget v0, p3, Landroid/graphics/Insets;->top:I

    .line 248
    .line 249
    iget v1, p2, Landroid/graphics/Insets;->top:I

    .line 250
    .line 251
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    iget v1, p3, Landroid/graphics/Insets;->right:I

    .line 256
    .line 257
    iget v2, p2, Landroid/graphics/Insets;->right:I

    .line 258
    .line 259
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    .line 264
    .line 265
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 266
    .line 267
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-virtual {p0, p4, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    .line 273
    .line 274
    return-object p1
.end method
