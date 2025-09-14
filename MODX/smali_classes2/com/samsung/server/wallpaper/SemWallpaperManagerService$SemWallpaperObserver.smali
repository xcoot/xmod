.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDesktopWallpaperFile:Ljava/io/File;

.field public final mDesktopWallpaperLockFile:Ljava/io/File;

.field public final mLockWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

.field public final mSubDisplayWallpaperFile:Ljava/io/File;

.field public final mSubDisplayWallpaperLockFile:Ljava/io/File;

.field public final mVirtualDisplayWallpaperFile:Ljava/io/File;

.field public final mWallpaperDir:Ljava/io/File;

.field public final mWallpaperFile:Ljava/io/File;

.field public final mWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

.field public final mWallpaperLockDir:Ljava/io/File;

.field public final mWallpaperLockFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 8
    .line 9
    const-string v0, "SemWallpaperManagerService"

    .line 10
    .line 11
    const-string v1, "SemWallpaperObserver"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 19
    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 31
    .line 32
    new-instance v0, Ljava/io/File;

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 43
    .line 44
    new-instance v0, Ljava/io/File;

    .line 45
    .line 46
    const/16 v1, 0x9

    .line 47
    .line 48
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    .line 56
    .line 57
    new-instance v0, Ljava/io/File;

    .line 58
    .line 59
    const/16 v1, 0xa

    .line 60
    .line 61
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    .line 69
    .line 70
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    const/16 v1, 0x11

    .line 84
    .line 85
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    .line 93
    .line 94
    new-instance v0, Ljava/io/File;

    .line 95
    .line 96
    const/16 v1, 0x12

    .line 97
    .line 98
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    .line 106
    .line 107
    new-instance v0, Ljava/io/File;

    .line 108
    .line 109
    const/16 v1, 0x10

    .line 110
    .line 111
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/io/File;

    .line 119
    .line 120
    const/16 v1, 0x21

    .line 121
    .line 122
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    .line 130
    .line 131
    new-instance v0, Ljava/io/File;

    .line 132
    .line 133
    const/16 v1, 0x20

    .line 134
    .line 135
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 153
    .line 154
    new-instance p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 165
    .line 166
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public final getLockWallpaperFileObserver()Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getLockWallpaperFileObserver: mLockWallpaperFileObserver = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mWallpaperLockDir.getAbsolutePath() = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "SemWallpaperManagerService"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    .line 37
    .line 38
    return-object p0
.end method
