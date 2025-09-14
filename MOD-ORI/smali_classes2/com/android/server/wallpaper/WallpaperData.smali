.class public final Lcom/android/server/wallpaper/WallpaperData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public allowBackup:Z

.field public final callbacks:Landroid/os/RemoteCallbackList;

.field public connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field public cropHint:Landroid/graphics/Rect;

.field public fromForegroundApp:Z

.field public imageWallpaperPending:Z

.field public lastDiedTime:J

.field public mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public final mCropFiles:Landroid/util/SparseArray;

.field public mCropHints:Landroid/util/SparseArray;

.field public mIsColorExtractedFromDim:Z

.field public mOrientationWhenSet:I

.field public mSampleSize:F

.field public mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

.field public mSystemWasBoth:Z

.field public mUidToDimAmount:Landroid/util/SparseArray;

.field public mWallpaperDimAmount:F

.field public final mWallpaperFiles:Landroid/util/SparseArray;

.field public mWhich:I

.field public name:Ljava/lang/String;

.field public nextWallpaperComponent:Landroid/content/ComponentName;

.field public primaryColors:Landroid/app/WallpaperColors;

.field public setComplete:Landroid/app/IWallpaperManagerCallback;

.field public final userId:I

.field public wallpaperComponent:Landroid/content/ComponentName;

.field public wallpaperId:I

.field public wallpaperObserver:Landroid/os/FileObserver;

.field public wallpaperUpdating:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 8
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperFiles:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 13
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 14
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 15
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->assertModeIsPresent(I)V

    .line 16
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 17
    iput p2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 18
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 26
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperFiles:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 31
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 32
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 33
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 34
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 35
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 36
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 39
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 40
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 41
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 42
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 43
    iput-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 44
    :cond_1
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 45
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->assertModeIsPresent(I)V

    return-void
.end method

.method public static defaultString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "@"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 8

    .line 1
    const-string v0, "cleanUp"

    .line 2
    .line 3
    const-string v1, "WallpaperData"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 9
    .line 10
    iget v2, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    iput v3, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 17
    .line 18
    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 19
    .line 20
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 21
    .line 22
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 23
    .line 24
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 25
    .line 26
    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    const-string v0, "delete video thumbnail file. wpType="

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v5, "delete video thumbnail file path : "

    .line 54
    .line 55
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 59
    .line 60
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 84
    .line 85
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 88
    .line 89
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 94
    .line 95
    :cond_2
    if-eqz v2, :cond_5

    .line 96
    .line 97
    const-string v0, ""

    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v5, "delete wallpaper and crop file. wpType="

    .line 104
    .line 105
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 109
    .line 110
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v7, "Delete wallpaper file: "

    .line 138
    .line 139
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 157
    .line 158
    .line 159
    :cond_3
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperFiles:Landroid/util/SparseArray;

    .line 160
    .line 161
    iget v7, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 162
    .line 163
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_4

    .line 178
    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, "Delete crop file: "

    .line 182
    .line 183
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 209
    .line 210
    .line 211
    :cond_4
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 212
    .line 213
    iput-boolean v0, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 214
    .line 215
    :cond_5
    if-eqz v2, :cond_6

    .line 216
    .line 217
    const/4 v0, 0x3

    .line 218
    if-eq v2, v0, :cond_6

    .line 219
    .line 220
    const/4 v0, 0x5

    .line 221
    if-eq v2, v0, :cond_6

    .line 222
    .line 223
    if-eq v2, v3, :cond_6

    .line 224
    .line 225
    const/4 v0, 0x7

    .line 226
    if-eq v2, v0, :cond_6

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 229
    .line 230
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 231
    .line 232
    :cond_6
    const/4 v0, 0x4

    .line 233
    if-eq v2, v0, :cond_7

    .line 234
    .line 235
    const-string v0, "delete animated background file. wpType="

    .line 236
    .line 237
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 241
    .line 242
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 243
    .line 244
    if-eqz v0, :cond_7

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v3, "delete animated background file path : "

    .line 255
    .line 256
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 260
    .line 261
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 285
    .line 286
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 287
    .line 288
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 289
    .line 290
    :cond_7
    const/4 v0, 0x1

    .line 291
    if-eq v2, v0, :cond_8

    .line 292
    .line 293
    const-string v0, "delete motion background file. wpType="

    .line 294
    .line 295
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 301
    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_8

    .line 309
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v2, "delete motion background file path : "

    .line 313
    .line 314
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 318
    .line 319
    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 343
    .line 344
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 345
    .line 346
    iput-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 347
    .line 348
    :cond_8
    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 349
    .line 350
    return-void
.end method

.method public final clone()Lcom/android/server/wallpaper/WallpaperData;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 4
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clone : e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperData"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public final cropExists()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getCropFile()Ljava/io/File;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getCropFileName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperData;->getFile(Landroid/util/SparseArray;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getFile(Landroid/util/SparseArray;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 29
    .line 30
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v0
.end method

.method public final getWallpaperFile(I)Ljava/io/File;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperFiles:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperData;->getFile(Landroid/util/SparseArray;Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 37
    .line 38
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "getWallpaperFile: file = "

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "WallpaperData"

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public final setCallingPackage(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "null"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    new-instance v2, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "."

    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-wide/16 v3, 0x3e8

    .line 40
    .line 41
    rem-long/2addr v0, v3

    .line 42
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "\n"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 67
    .line 68
    iput-object v0, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 71
    .line 72
    iget v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 73
    .line 74
    const/16 v2, 0x8

    .line 75
    .line 76
    const/4 v3, 0x7

    .line 77
    const/4 v4, 0x4

    .line 78
    const/4 v5, 0x1

    .line 79
    if-eqz v1, :cond_a

    .line 80
    .line 81
    if-eq v1, v5, :cond_9

    .line 82
    .line 83
    const/4 v6, 0x3

    .line 84
    if-eq v1, v6, :cond_8

    .line 85
    .line 86
    if-eq v1, v4, :cond_7

    .line 87
    .line 88
    const/4 v6, 0x5

    .line 89
    if-eq v1, v6, :cond_6

    .line 90
    .line 91
    if-eq v1, v3, :cond_5

    .line 92
    .line 93
    if-eq v1, v2, :cond_4

    .line 94
    .line 95
    const/16 v6, 0x3e8

    .line 96
    .line 97
    const-string v7, "default"

    .line 98
    .line 99
    if-eq v1, v6, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v1, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string v6, "/"

    .line 108
    .line 109
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_b

    .line 114
    .line 115
    array-length v6, v1

    .line 116
    if-le v6, v5, :cond_b

    .line 117
    .line 118
    aget-object v7, v1, v5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    const-string/jumbo v7, "video"

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    const-string v7, "live"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    const-string v7, "gif"

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    const-string v7, "animated"

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    const-string/jumbo v7, "multiple"

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_9
    const-string/jumbo v7, "motion"

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    const-string v7, "image"

    .line 143
    .line 144
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 145
    .line 146
    iget v6, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 147
    .line 148
    if-eqz v6, :cond_10

    .line 149
    .line 150
    if-eq v6, v5, :cond_f

    .line 151
    .line 152
    if-eq v6, v4, :cond_e

    .line 153
    .line 154
    const-string v4, ""

    .line 155
    .line 156
    if-eq v6, v3, :cond_d

    .line 157
    .line 158
    if-eq v6, v2, :cond_c

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_c
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 165
    .line 166
    if-eqz p0, :cond_11

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    goto :goto_1

    .line 173
    :cond_e
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_f
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_10
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 180
    .line 181
    :cond_11
    :goto_1
    const/4 p0, 0x0

    .line 182
    invoke-virtual {v0, p1, p0, v7, v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final setWallpaperFile(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperFiles:Landroid/util/SparseArray;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 23
    .line 24
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    const-string/jumbo p0, "wallpaper_orig"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "\nUnexpected file assignment detected!\n"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iput-object p1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iput-object p1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 82
    .line 83
    :cond_3
    :goto_0
    return-void
.end method

.method public final sourceExists()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperData;->defaultString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, ", id: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", which: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", file mod: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 36
    .line 37
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 46
    .line 47
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo v1, "null"

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const-string v1, ", no connection"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-string v1, ", info: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", engine(s):"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 96
    .line 97
    new-instance v2, Lcom/android/server/wallpaper/WallpaperData$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/android/server/wallpaper/WallpaperData$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    const-string v1, ", type = "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 111
    .line 112
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", userId = "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", uri= "

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", allowBackup= "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ", wallpaperComponent = "

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, ", nextWallpaperComponent = "

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method
