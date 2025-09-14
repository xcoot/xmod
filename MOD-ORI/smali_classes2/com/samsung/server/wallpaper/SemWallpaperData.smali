.class public final Lcom/samsung/server/wallpaper/SemWallpaperData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mAnimatedBackground:Ljava/io/File;

.field public mAnimatedPkgName:Ljava/lang/String;

.field public mDlsSemColors:Landroid/app/SemWallpaperColors;

.field public mExternalParams:Landroid/os/Bundle;

.field public mHeight:I

.field public mIsCopied:Z

.field public mIsPreloaded:Z

.field public mLandscapeColors:[Landroid/app/SemWallpaperColors;

.field public mLastCallingPackage:Ljava/lang/String;

.field public mLastClearCallstackWithNullPackage:Ljava/lang/String;

.field public mMotionBackground:Ljava/io/File;

.field public mMotionPkgName:Ljava/lang/String;

.field public mOrientation:I

.field public mPrimarySemColors:Landroid/app/SemWallpaperColors;

.field public mSmartCropOriginalRect:Landroid/graphics/Rect;

.field public mSmartCropRect:Landroid/graphics/Rect;

.field public mTimeCreated:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVideoDefaultHasBeenUsed:Z

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;

.field public mVideoFirstFrameFile:Ljava/io/File;

.field public mVideoPkgName:Ljava/lang/String;

.field public mWaitingForUnlockUser:Z

.field public mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field public mWhich:I

.field public mWidth:I

.field public mWpType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 12
    .line 13
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 14
    .line 15
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 25
    .line 26
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    .line 54
    .line 55
    const-string p0, "SemWallpaperData"

    .line 56
    .line 57
    invoke-static {p0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final clone()Lcom/samsung/server/wallpaper/SemWallpaperData;
    .locals 5

    .line 2
    const-string v0, "SemWallpaperData"

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 3
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 7
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 9
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->cloneBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    .line 10
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 20
    :cond_5
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    .line 21
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    .line 22
    :cond_6
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    .line 24
    :cond_7
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_9

    .line 25
    array-length v2, v2

    new-array v2, v2, [Landroid/app/SemWallpaperColors;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    const/4 v2, 0x0

    .line 26
    :goto_2
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 27
    aget-object v3, v3, v2

    if-eqz v3, :cond_8

    .line 28
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, v4, v2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 30
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public final getLastCallingPackage(Z)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p0

    .line 67
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "getLastCallingPackage: "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "SemWallpaperData"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 91
    .line 92
    return-object p0
.end method

.method public final getWallpaperHistory()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    :goto_0
    return-object p0

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final getWallpaperHistoryList()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    :goto_1
    return-object v1

    .line 54
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const-string v0, ";"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    aget-object v3, p1, v2

    .line 23
    .line 24
    const-string v4, "::"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x1

    .line 31
    aget-object v4, v3, v4

    .line 32
    .line 33
    aget-object v5, v3, v1

    .line 34
    .line 35
    array-length v6, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const-string v7, ""

    .line 37
    .line 38
    const/4 v8, 0x2

    .line 39
    if-le v6, v8, :cond_0

    .line 40
    .line 41
    :try_start_1
    aget-object v6, v3, v8

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :catch_1
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_0
    move-object v6, v7

    .line 49
    :goto_1
    array-length v8, v3

    .line 50
    const/4 v9, 0x3

    .line 51
    if-le v8, v9, :cond_1

    .line 52
    .line 53
    aget-object v7, v3, v9

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_4
    return-void
.end method

.method public final setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    new-instance v3, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-object p2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    iput-object p3, v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->type:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p4, v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->pkgName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 p2, 0x14

    .line 60
    .line 61
    if-le p1, p2, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "\n    mTimeCreated="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\n    mWidth="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\n    mHeight="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "\n    mIsCopied="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "\n    mIsPreloaded="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "\n    mOrientation="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "\n    mWhich=0x"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "\n    mWpType="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "\n    mUri="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "\n    mLastCallingPackage="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "\n    mExternalParams="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    if-ne v1, v2, :cond_0

    .line 128
    .line 129
    const-string v1, "\n    mMotionPkgName="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception p0

    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 144
    .line 145
    const/4 v2, 0x4

    .line 146
    if-ne v1, v2, :cond_1

    .line 147
    .line 148
    const-string v1, "\n    mAnimatedPkgName="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_1
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    const/16 v2, 0x8

    .line 161
    .line 162
    const-string v3, ", mVideoFileName="

    .line 163
    .line 164
    if-ne v1, v2, :cond_2

    .line 165
    .line 166
    :try_start_1
    const-string v1, "\n    mVideoFilePath="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", mVideoPkgName="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ", mVideoDefaultHasBeenUsed="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_2
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 205
    .line 206
    const/4 v2, 0x7

    .line 207
    if-ne v1, v2, :cond_3

    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    :cond_3
    const-string v1, "\n    mPrimarySemColors="

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, "\n    mDlsSemColors="

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, "\n    mSmartCropOriginalRect="

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v1, ", mSmartCropRect="

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 258
    .line 259
    if-eqz v1, :cond_4

    .line 260
    .line 261
    array-length v2, v1

    .line 262
    const/4 v3, 0x0

    .line 263
    :goto_1
    if-ge v3, v2, :cond_4

    .line 264
    .line 265
    aget-object v4, v1, v3

    .line 266
    .line 267
    const-string v5, "\n    mLandscapeColors="

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    add-int/lit8 v3, v3, 0x1

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_4
    const-string v1, "\n    mWallpaperHistory="

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, "\n    mLastClearCallstackWithNullPackage="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 300
    .line 301
    .line 302
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0
.end method
