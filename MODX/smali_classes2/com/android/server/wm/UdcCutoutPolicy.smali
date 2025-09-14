.class public final Lcom/android/server/wm/UdcCutoutPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

.field public mTmpBarContentFrame:Landroid/graphics/Rect;

.field public mUdcConfiguration:Landroid/content/res/Configuration;

.field public mUdcCutout:Landroid/view/DisplayCutout;

.field public mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/utils/RotationCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 13
    .line 14
    return-void
.end method

.method public static supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "com.samsung.android.supports_udc_cutout"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method public static updateUseLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    iget-boolean v1, v3, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v2, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0x2000

    .line 22
    .line 23
    if-nez v4, :cond_4

    .line 24
    .line 25
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    iget-object v10, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    iget v6, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 32
    .line 33
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const-wide/16 v8, 0x0

    .line 38
    .line 39
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move v1, v2

    .line 76
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    :goto_0
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move-object p1, v1

    .line 47
    :goto_1
    if-eqz p1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 51
    .line 52
    :goto_2
    iget-object p0, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/lit8 p0, p0, -0x1

    .line 72
    .line 73
    :goto_3
    if-ltz p0, :cond_b

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ne p1, v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->removeSourceAt(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    add-int/lit8 p0, p0, -0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/lit8 v0, v0, -0x1

    .line 104
    .line 105
    :goto_4
    if-ltz v0, :cond_b

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v2, v3, :cond_a

    .line 120
    .line 121
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    invoke-virtual {v1, p1, v0, p2, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    if-eqz p2, :cond_8

    .line 138
    .line 139
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 140
    .line 141
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    invoke-virtual {v1, p1, v0, p0, p2}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 150
    .line 151
    if-eqz p2, :cond_9

    .line 152
    .line 153
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    invoke-virtual {v1, p2, p1, v0, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 168
    .line 169
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 170
    .line 171
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    invoke-virtual {v1, p2, p1, v0, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_b
    :goto_5
    return-void
.end method
