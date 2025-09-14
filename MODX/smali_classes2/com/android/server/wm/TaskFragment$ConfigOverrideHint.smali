.class public final Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOrientationRespectedWithParentBounds:Z

.field public mParentAppBoundsOverride:Landroid/graphics/Rect;

.field public mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mTmpOverrideConfigOrientation:I

.field public mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mUseOverrideInsetsForConfig:Z


# virtual methods
.method public final resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    if-eqz p4, :cond_7

    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_7

    .line 23
    .line 24
    iget-object p4, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 25
    .line 26
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    const/4 v0, -0x1

    .line 31
    if-ne p4, v0, :cond_1

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    iget-object p3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 36
    .line 37
    iget p4, p3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 38
    .line 39
    :cond_1
    if-eq p4, v2, :cond_3

    .line 40
    .line 41
    const/4 p3, 0x3

    .line 42
    if-ne p4, p3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p3, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move p3, v2

    .line 48
    :goto_1
    if-eqz p3, :cond_4

    .line 49
    .line 50
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 54
    .line 55
    :goto_2
    if-eqz p3, :cond_5

    .line 56
    .line 57
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 61
    .line 62
    :goto_3
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 63
    .line 64
    invoke-virtual {p1, p4, v0, p3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p3, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-le p4, p3, :cond_6

    .line 79
    .line 80
    const/4 p3, 0x2

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move p3, v2

    .line 83
    :goto_4
    iput p3, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 93
    .line 94
    :goto_5
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_b

    .line 110
    .line 111
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-gt p2, p1, :cond_8

    .line 126
    .line 127
    move p1, v2

    .line 128
    goto :goto_6

    .line 129
    :cond_8
    move p1, v1

    .line 130
    :goto_6
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-gt p2, p3, :cond_9

    .line 143
    .line 144
    move p2, v2

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    move p2, v1

    .line 147
    :goto_7
    if-eq p1, p2, :cond_a

    .line 148
    .line 149
    move v1, v2

    .line 150
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mOrientationRespectedWithParentBounds:Z

    .line 151
    .line 152
    :cond_b
    return-void
.end method
