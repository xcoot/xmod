.class public final Lcom/samsung/server/wallpaper/SubDisplayMode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDisplayFoldListener:Lcom/samsung/server/wallpaper/SubDisplayMode$2;

.field public final mHandler:Lcom/samsung/server/wallpaper/SubDisplayMode$1;

.field public mLidState:I


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode$1;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/SubDisplayMode$2;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "SubDisplayMode"

    .line 24
    .line 25
    invoke-static {v1, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 29
    .line 30
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-string/jumbo p0, "window"

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :try_start_0
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method

.method public static getFolderStateBasedWhich(II)I
    .locals 2

    .line 5
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFolderStateBasedWhich state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubDisplayMode"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    or-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_1
    or-int/lit8 p0, p0, 0x4

    :goto_0
    return p0
.end method


# virtual methods
.method public final getFolderStateBasedWhich(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 3
    :cond_1
    iget p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 4
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result p0

    return p0
.end method

.method public final updateLidStateFromInputManager()V
    .locals 5

    .line 1
    const-string v0, "SubDisplayMode"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    const-string v2, "input"

    .line 5
    .line 6
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/android/server/input/InputManagerService;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string/jumbo v2, "updateLidStateFromInputManager: inputManagerService is null! Setting lidState to UNKNOWN(ABSENT)"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, v2, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 22
    .line 23
    const/16 v3, -0x100

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-nez v2, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :catch_0
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v3, "updateLidStateFromInputManager: lidState = "

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 56
    .line 57
    return-void
.end method
