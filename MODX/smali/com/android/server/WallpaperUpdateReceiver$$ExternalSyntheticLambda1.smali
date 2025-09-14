.class public final synthetic Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/WallpaperUpdateReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/WallpaperUpdateReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/WallpaperUpdateReceiver;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/WallpaperUpdateReceiver;

    .line 3
    sget v0, Lcom/android/server/WallpaperUpdateReceiver;->$r8$clinit:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p0, "WallpaperUpdateReceiver"

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    .line 37
    move-result-object v2

    .line 38
    if-nez v0, :cond_1

    .line 40
    if-eqz v2, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 57
    :cond_1
    :goto_0
    const-string v0, "User has set wallpaper, skip to resetting"

    .line 59
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_3

    .line 71
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clearWallpaper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string v1, "Failed to customize system wallpaper."

    .line 77
    invoke-static {v0, v1, p0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    :goto_2
    return-void
.end method
