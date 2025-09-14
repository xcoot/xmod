.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 4
    .line 5
    const/16 p1, 0x688

    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v4, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    :goto_0
    move v5, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :goto_2
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    move v2, p1

    .line 70
    move-object v3, p2

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    .line 72
    .line 73
    .line 74
    :goto_3
    return-void

    .line 75
    :pswitch_0
    if-nez p2, :cond_3

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_3
    new-instance v10, Ljava/io/File;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    .line 83
    .line 84
    invoke-direct {v10, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 90
    .line 91
    invoke-virtual {v0, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {v0, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    .line 110
    .line 111
    invoke-virtual {v0, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    :cond_4
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    .line 118
    .line 119
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 120
    .line 121
    const/4 v11, 0x0

    .line 122
    const/4 v12, 0x1

    .line 123
    move v8, p1

    .line 124
    move-object v9, p2

    .line 125
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_4
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
