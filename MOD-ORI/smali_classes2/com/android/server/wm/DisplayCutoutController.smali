.class public final Lcom/android/server/wm/DisplayCutoutController;
.super Lcom/android/server/wm/PackagesChange;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCutoutInset:Landroid/graphics/Rect;

.field public final mDumpInterface:Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

.field public final mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

.field public final mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

.field public final mRemoveCutoutOfConfiguration:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/wm/PackagesChangeAsTask$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/wm/PackagesChangeAsTask$1;-><init>(Lcom/android/server/wm/DisplayCutoutController;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 22
    .line 23
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "DisplayCutoutPackageMap"

    .line 26
    .line 27
    const/16 v3, 0x80

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 33
    .line 34
    sget-object p1, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;->sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 54
    .line 55
    filled-new-array {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    aget-object p1, p1, v0

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/wm/PackagesChange$2;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/PackagesChange$2;-><init>(Lcom/android/server/wm/PackagesChange;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 68
    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static adjustCutoutMode(Lcom/android/server/wm/WindowState;ILandroid/os/Bundle;Landroid/view/WindowRelayoutResult;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v3, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 12
    .line 13
    const-string v4, "cutoutpolicy"

    .line 14
    .line 15
    if-ne v3, v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    iput v1, p3, Landroid/view/WindowRelayoutResult;->cutoutPolicy:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v0, 0x2

    .line 45
    if-ne v3, v0, :cond_6

    .line 46
    .line 47
    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-eqz p3, :cond_4

    .line 54
    .line 55
    iput v0, p3, Landroid/view/WindowRelayoutResult;->cutoutPolicy:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CHANGE_DISPLAY_CUTOUT_MODE:Z

    .line 69
    .line 70
    const/4 p3, 0x0

    .line 71
    if-eqz p2, :cond_9

    .line 72
    .line 73
    if-nez v3, :cond_9

    .line 74
    .line 75
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 76
    .line 77
    if-nez v0, :cond_9

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 84
    .line 85
    iget v0, p2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_8

    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 96
    .line 97
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 100
    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_2
    const/high16 p0, 0x200000

    .line 115
    .line 116
    :goto_3
    or-int/2addr p0, p1

    .line 117
    return p0

    .line 118
    :cond_8
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 119
    .line 120
    if-eqz p2, :cond_a

    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 123
    .line 124
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 125
    .line 126
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 127
    .line 128
    iput-boolean p3, p0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 129
    .line 130
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    if-eqz p2, :cond_a

    .line 147
    .line 148
    if-nez v3, :cond_a

    .line 149
    .line 150
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 151
    .line 152
    if-eqz p2, :cond_a

    .line 153
    .line 154
    iput-boolean p3, p0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 155
    .line 156
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    if-eqz p2, :cond_a

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    :goto_4
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    .line 172
    .line 173
    if-eqz p2, :cond_c

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    if-eqz p2, :cond_c

    .line 180
    .line 181
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    .line 182
    .line 183
    if-eqz p2, :cond_c

    .line 184
    .line 185
    iget p2, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 186
    .line 187
    if-eqz p2, :cond_b

    .line 188
    .line 189
    if-ne p2, v1, :cond_c

    .line 190
    .line 191
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 192
    .line 193
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 194
    .line 195
    const/high16 p0, 0x400000

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_c
    return p1
.end method


# virtual methods
.method public final adjustAppBoundsIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v2, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 17
    .line 18
    if-eq v2, v1, :cond_2

    .line 19
    .line 20
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CHANGE_DISPLAY_CUTOUT_MODE:Z

    .line 21
    .line 22
    if-eqz v2, :cond_e

    .line 23
    .line 24
    if-eqz v0, :cond_e

    .line 25
    .line 26
    iget v2, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 27
    .line 28
    if-nez v2, :cond_e

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_e

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_e

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 47
    .line 48
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_e

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_e

    .line 62
    .line 63
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    iget v0, v0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 68
    .line 69
    if-nez v0, :cond_e

    .line 70
    .line 71
    :cond_2
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_e

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    .line 123
    .line 124
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    if-lez v2, :cond_6

    .line 127
    .line 128
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 129
    .line 130
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 131
    .line 132
    if-lez v2, :cond_5

    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 142
    .line 143
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 144
    .line 145
    :cond_6
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    if-lez v2, :cond_8

    .line 148
    .line 149
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 150
    .line 151
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    if-lez v2, :cond_7

    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 156
    .line 157
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 161
    .line 162
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    :cond_8
    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    if-lez v2, :cond_a

    .line 169
    .line 170
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 171
    .line 172
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 173
    .line 174
    if-lez v2, :cond_9

    .line 175
    .line 176
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 177
    .line 178
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 179
    .line 180
    sub-int/2addr v4, v2

    .line 181
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 185
    .line 186
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    :cond_a
    :goto_2
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 191
    .line 192
    if-lez v1, :cond_c

    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 195
    .line 196
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 197
    .line 198
    if-lez v1, :cond_b

    .line 199
    .line 200
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 201
    .line 202
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 203
    .line 204
    sub-int/2addr p2, v1

    .line 205
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 209
    .line 210
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 213
    .line 214
    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 215
    .line 216
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-eqz p2, :cond_d

    .line 221
    .line 222
    return-void

    .line 223
    :cond_d
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 228
    .line 229
    .line 230
    :cond_e
    :goto_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "mRemoveCutoutOfConfiguration=false"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string v0, "mCutoutInset="

    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p2, "mNonDecorInsetsWithoutCutout="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final getPolicy(ILjava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(IILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getFullScreenAppsSupportMode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    and-int/2addr v1, v2

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/server/wm/DisplayCutoutController;->setPolicy(IILjava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    return v2
.end method

.method public final setPolicy(IILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 6
    .line 7
    invoke-virtual {v1, p3, p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz p4, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-ne p4, p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 p3, 0x0

    .line 36
    const-string/jumbo p4, "setCutoutPolicy"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
