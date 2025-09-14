.class public final Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getDesiredAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 8
    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 18
    .line 19
    cmpl-float v1, v0, v2

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 30
    .line 31
    :goto_0
    move v0, p0

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const v3, 0x1050184

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v3, 0x1050183

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    mul-int/lit8 v0, v0, 0x2

    .line 91
    .line 92
    sub-int/2addr v1, v0

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/4 v4, 0x0

    .line 115
    if-lt p0, v3, :cond_3

    .line 116
    .line 117
    div-int/lit8 v1, v1, 0x2

    .line 118
    .line 119
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    div-int/lit8 v1, v1, 0x2

    .line 130
    .line 131
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 139
    .line 140
    :goto_1
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 146
    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :goto_2
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_6

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_6

    .line 196
    .line 197
    const p0, 0x3f8147ae    # 1.01f

    .line 198
    .line 199
    .line 200
    return p0

    .line 201
    :cond_6
    cmpl-float p0, v0, v2

    .line 202
    .line 203
    if-lez p0, :cond_7

    .line 204
    .line 205
    return v0

    .line 206
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    return p0
.end method
