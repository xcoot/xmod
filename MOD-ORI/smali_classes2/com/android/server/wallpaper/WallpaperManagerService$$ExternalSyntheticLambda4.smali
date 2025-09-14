.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "WallpaperManagerService"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/graphics/RectF;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/app/WallpaperColors;

    .line 15
    .line 16
    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p1, v1, p0}, Landroid/app/ILocalWallpaperColorConsumer;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "Failed to notify local color callbacks"

    .line 24
    .line 25
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 38
    .line 39
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 40
    .line 41
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 52
    .line 53
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 54
    .line 55
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 65
    .line 66
    invoke-interface {v2, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 72
    .line 73
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 74
    .line 75
    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVisibleWhichWhenKeyguardLocked(I)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {v2, p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    const-string p1, "Failed to update wallpaper engine flags"

    .line 85
    .line 86
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_0
    :goto_1
    return-void

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 97
    .line 98
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 99
    .line 100
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 106
    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 110
    .line 111
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
