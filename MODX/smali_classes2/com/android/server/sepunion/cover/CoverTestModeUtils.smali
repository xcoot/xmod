.class public final Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHIPPED:Z

.field public static sCurrentTestMode:I

.field public static sCurrentTestVisibleRect:Landroid/graphics/Rect;


# instance fields
.field public final mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field public final mContext:Landroid/content/Context;

.field public final mObserver:Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;

.field public final mTestModeChangeHandler:Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

.field public final mVisibleRectObserver:Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    sput v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p0, "CoverManager_CoverTestModeUtils"

    .line 16
    .line 17
    const-string p1, "This version has been shipped!! Then cover test mode is not available"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 26
    .line 27
    new-instance p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p0, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "cover_test_mode"

    .line 38
    .line 39
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v1, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v1, -0x1

    .line 58
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    sput p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 63
    .line 64
    new-instance p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;

    .line 65
    .line 66
    new-instance v0, Landroid/os/Handler;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "cover_test_visible_rect"

    .line 75
    .line 76
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v0, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestVisibleRectFromSetting()Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    sput-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    .line 92
    .line 93
    return-void
.end method

.method public static isTestMode()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method


# virtual methods
.method public final getTestVisibleRectFromSetting()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "cover_test_visible_rect"

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_0
    const-string v1, ","

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    aget-object v1, p0, v1

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aget-object v1, p0, v1

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aget-object v1, p0, v1

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    aget-object p0, p0, v1

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    iput p0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final setTestModeToSetting(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "cover_test_mode"

    .line 8
    .line 9
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
