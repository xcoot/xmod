.class public final Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mControlTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsStateController$1;

.field public mForcedConsumingTypes:I

.field public final mIdControlTargetMap:Landroid/util/SparseArray;

.field public final mIdFakeControlTargetMap:Landroid/util/SparseArray;

.field public final mLastState:Landroid/view/InsetsState;

.field public final mPendingControlChanged:Landroid/util/ArraySet;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mState:Landroid/view/InsetsState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/InsetsState;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 10
    .line 11
    new-instance v0, Landroid/view/InsetsState;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v0, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    .line 59
    .line 60
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsStateController$1;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final collectPolicyControlledTypes(Ljava/util/ArrayList;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    :cond_0
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    move-object v2, v6

    .line 54
    :goto_0
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(Ljava/util/ArrayList;I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    if-eqz v5, :cond_4

    .line 64
    .line 65
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(Ljava/util/ArrayList;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v3, v4

    .line 74
    move v5, v3

    .line 75
    :cond_4
    :goto_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    if-eqz v6, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_a

    .line 87
    .line 88
    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 93
    .line 94
    if-nez v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-object v2, v7

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_7

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    iget-object v0, v0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 113
    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    move-object v0, v7

    .line 117
    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_2
    if-eqz v0, :cond_a

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_9

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-object v2, v6

    .line 140
    :cond_a
    :goto_3
    if-nez v2, :cond_b

    .line 141
    .line 142
    return-object v7

    .line 143
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    new-array v6, v0, [Landroid/view/InsetsSourceControl;

    .line 148
    .line 149
    :goto_4
    if-ge v4, v0, :cond_e

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 156
    .line 157
    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v3, :cond_c

    .line 164
    .line 165
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-ne v8, v9, :cond_c

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_c
    if-eqz v5, :cond_d

    .line 173
    .line 174
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-ne v8, v9, :cond_d

    .line 179
    .line 180
    :goto_5
    new-instance v8, Landroid/view/InsetsSourceControl;

    .line 181
    .line 182
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getId()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    new-instance v15, Landroid/graphics/Point;

    .line 191
    .line 192
    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 193
    .line 194
    .line 195
    sget-object v16, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 196
    .line 197
    const/4 v13, 0x0

    .line 198
    const/4 v14, 0x0

    .line 199
    const/16 v17, 0x1

    .line 200
    .line 201
    move-object v10, v8

    .line 202
    invoke-direct/range {v10 .. v17}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;Z)V

    .line 203
    .line 204
    .line 205
    aput-object v8, v6, v4

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 213
    .line 214
    invoke-virtual {v7, v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    aput-object v7, v6, v4

    .line 219
    .line 220
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_e
    return-object v6
.end method

.method public final getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .locals 2

    .line 1
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 25
    .line 26
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 31
    .line 32
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 36
    .line 37
    and-int/2addr p2, v0

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 p2, 0x0

    .line 43
    :goto_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(I)Z

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public final notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final notifyInsetsChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 26
    .line 27
    sget-object v3, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Lcom/android/server/wm/DisplayContent$1;

    .line 28
    .line 29
    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 49
    .line 50
    invoke-interface {v2, p0}, Landroid/view/IDisplayWindowInsetsController;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string v2, "WindowManager"

    .line 56
    .line 57
    const-string v3, "Failed to deliver inset state change"

    .line 58
    .line 59
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-interface {p0, v3}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move v1, v2

    .line 89
    :goto_2
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 92
    .line 93
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 94
    .line 95
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 96
    .line 97
    const-wide/16 v4, 0x800

    .line 98
    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    const-string v6, "displayId="

    .line 106
    .line 107
    const-string v7, ";shown="

    .line 108
    .line 109
    invoke-static {v0, v6, v7, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v7, "AccessibilityController.updateImeVisibilityIfNeeded"

    .line 114
    .line 115
    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 119
    .line 120
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ne v2, v1, :cond_5

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 128
    .line 129
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 139
    .line 140
    if-eqz p0, :cond_6

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->notifyImeWindowVisibilityChanged(Z)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_3
    return-void
.end method

.method public final notifyPendingInsetsControlChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 19
    .line 20
    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 31
    .line 32
    :goto_0
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-boolean v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    if-eqz p3, :cond_4

    .line 41
    .line 42
    iget-object v1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 43
    .line 44
    if-ne p1, v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iput-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v2, "updateFakeControlTarget: fakeControl="

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ", fakeTarget="

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "InsetsSourceProvider"

    .line 75
    .line 76
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 85
    .line 86
    if-ne p1, v0, :cond_5

    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_6
    if-eqz p1, :cond_8

    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 102
    .line 103
    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    if-eqz p3, :cond_7

    .line 118
    .line 119
    iget-object p3, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 120
    .line 121
    iget-object p2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    iget-object p3, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 132
    .line 133
    iget-object p2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_8
    return-void
.end method

.method public final onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    or-int/2addr v1, v2

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    if-eqz p3, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 41
    .line 42
    iget-object p1, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final updateAboveInsetsState(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/InsetsState;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 7
    .line 8
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    or-int/2addr v2, v3

    .line 17
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    or-int/2addr v2, v3

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;->accept(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
