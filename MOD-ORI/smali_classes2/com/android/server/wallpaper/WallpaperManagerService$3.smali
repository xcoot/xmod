.class public final Lcom/android/server/wallpaper/WallpaperManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    const/4 p2, 0x5

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "WallpaperManagerService"

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "extractColorIfSeedColorEmpty: wallpaper color is empty. which=5"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    array-length p1, p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    :cond_1
    const-string p1, "extractColorIfSeedColorEmpty: seed color is empty. which=5"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :pswitch_0
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p1

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_3
    :goto_1
    return-void

    .line 76
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 89
    .line 90
    const-string p1, "android.intent.extra.user_handle"

    .line 91
    .line 92
    const/16 v0, -0x2710

    .line 93
    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/4 p2, 0x1

    .line 99
    if-ge p1, p2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter p2

    .line 108
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    invoke-direct {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;-><init>(I)V

    .line 119
    .line 120
    .line 121
    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 129
    .line 130
    .line 131
    monitor-exit p2

    .line 132
    goto :goto_2

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    throw p0

    .line 136
    :cond_5
    :goto_2
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
