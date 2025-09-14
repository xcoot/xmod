.class public final Lcom/android/server/wm/SizeCompatPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCompatPolicyCount:I

.field public final mDisplayIdsForActiveMode:Landroid/util/SparseArray;

.field public mLaunchPolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-void
.end method

.method public static ensureConfiguration(Lcom/android/server/wm/Task;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 30
    .line 31
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "ensureConfiguration: DisplayContent is null. task="

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "SizeCompatPolicy"

    .line 50
    .line 51
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    sget-object v3, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 70
    .line 71
    iget v3, v3, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 75
    .line 76
    :goto_0
    const/4 v4, 0x1

    .line 77
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-ne v2, v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ne v3, v6, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-ne v2, v6, :cond_6

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v3, v0, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_7

    .line 130
    .line 131
    const/4 v0, 0x5

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 133
    .line 134
    .line 135
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 147
    .line 148
    .line 149
    :goto_2
    return-void
.end method

.method public static getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Task;->mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final setCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Task;->mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/wm/SizeCompatPolicy$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/android/server/wm/SizeCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/android/server/wm/Task;->mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 26
    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mCompatPolicyCount:I

    .line 34
    .line 35
    :cond_2
    iput-object p2, p1, Lcom/android/server/wm/Task;->mSizeCompatPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 36
    .line 37
    return-void
.end method
