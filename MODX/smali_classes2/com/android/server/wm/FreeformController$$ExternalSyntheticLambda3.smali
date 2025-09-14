.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:Z

.field public final synthetic f$7:F

.field public final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZILcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    .line 14
    .line 15
    iget v7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    .line 18
    .line 19
    check-cast p1, Lcom/android/server/wm/Task;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_a

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    and-int/lit16 v1, v2, 0x80

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    sget-object v1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v8}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-static {v4, v5, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-virtual {p1, v8, v0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_0
    if-nez v6, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 119
    .line 120
    cmpl-float v1, v7, v0

    .line 121
    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    cmpl-float v2, p0, v0

    .line 125
    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    iget-object v2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 130
    .line 131
    if-eqz v2, :cond_a

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_a

    .line 138
    .line 139
    iget-object v2, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 144
    .line 145
    .line 146
    const/high16 v2, 0x3f000000    # 0.5f

    .line 147
    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    iget-object v1, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 157
    .line 158
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 159
    .line 160
    int-to-float v3, v3

    .line 161
    mul-float/2addr v3, v7

    .line 162
    add-float/2addr v3, v2

    .line 163
    float-to-int v3, v3

    .line 164
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 165
    .line 166
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    int-to-float v3, v3

    .line 169
    mul-float/2addr v3, v7

    .line 170
    add-float/2addr v3, v2

    .line 171
    float-to-int v3, v3

    .line 172
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 173
    .line 174
    :cond_8
    cmpl-float v0, p0, v0

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_9

    .line 183
    .line 184
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 185
    .line 186
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    int-to-float v1, v1

    .line 189
    mul-float/2addr v1, p0

    .line 190
    add-float/2addr v1, v2

    .line 191
    float-to-int v1, v1

    .line 192
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 193
    .line 194
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 195
    .line 196
    int-to-float v1, v1

    .line 197
    mul-float/2addr v1, p0

    .line 198
    add-float/2addr v1, v2

    .line 199
    float-to-int p0, v1

    .line 200
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    :cond_9
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 203
    .line 204
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 208
    .line 209
    invoke-virtual {p1, v8, p0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_1
    return-void
.end method
