.class public final Lcom/android/server/wm/CompatSandboxPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public mBounds:Landroid/graphics/Rect;

.field public mFlags:I

.field public mScale:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final resolveCompatSandboxValues(Landroid/content/res/Configuration;Landroid/content/pm/ConstrainDisplayApisConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    if-eq v1, v2, :cond_4

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 37
    .line 38
    and-int/lit8 p2, p2, 0x2

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 61
    .line 62
    and-int/lit16 v2, v2, 0x100

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    :goto_0
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 73
    .line 74
    and-int/lit8 p2, p2, -0x3

    .line 75
    .line 76
    iput p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 77
    .line 78
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 79
    .line 80
    iget-object v1, p2, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v2, 0x1

    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ne v1, v2, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_7

    .line 101
    .line 102
    :goto_2
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 103
    .line 104
    and-int/lit8 p2, p2, -0xd

    .line 105
    .line 106
    iput p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 107
    .line 108
    :cond_7
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 109
    .line 110
    if-nez p2, :cond_8

    .line 111
    .line 112
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    iput v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 121
    .line 122
    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    .line 124
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 125
    .line 126
    invoke-static {}, Lcom/samsung/android/core/CompatSandbox;->getEmptyRect()Landroid/graphics/Rect;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 131
    .line 132
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 137
    .line 138
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 139
    .line 140
    iget v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 149
    .line 150
    const/high16 p1, -0x40800000    # -1.0f

    .line 151
    .line 152
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 156
    .line 157
    return-void
.end method
