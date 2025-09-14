.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mClientUid:I

.field public final mDisconnectRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

.field public final mDisplayConnector:Landroid/util/SparseArray;

.field public final mInfo:Landroid/app/WallpaperInfo;

.field public mLmkLimitRebindRetries:I

.field public mReply:Landroid/os/IRemoteCallback;

.field public final mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

.field public mService:Landroid/service/wallpaper/IWallpaperService;

.field public final mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

.field public mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 43
    .line 44
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 45
    .line 46
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final appendConnectorInternal(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "appendConnectorInternal, displayId "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "WallpaperManagerService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final appendConnectorWithCondition(Ljava/util/function/Predicate;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 21
    .line 22
    const-string v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    array-length v0, p1

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    aget-object p1, p1, v2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 44
    .line 45
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 60
    .line 61
    const-string v1, "com.samsung.android.hardware.display.category.DESKTOP"

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    array-length v1, v0

    .line 70
    :goto_0
    if-ge v2, v1, :cond_3

    .line 71
    .line 72
    aget-object v3, v0, v2

    .line 73
    .line 74
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    array-length v1, v0

    .line 129
    :goto_1
    if-ge v2, v1, :cond_8

    .line 130
    .line 131
    aget-object v3, v0, v2

    .line 132
    .line 133
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 144
    .line 145
    .line 146
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    return-void

    .line 150
    :cond_9
    const-string p0, "WallpaperManagerService"

    .line 151
    .line 152
    const-string p1, "appendConnectorWithCondition: unexpected which. which="

    .line 153
    .line 154
    invoke-static {v1, p1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw p0
.end method

.method public final attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->ensureStatusHandled()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 32
    .line 33
    iget-boolean v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    invoke-interface {p1, v2, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_2
    const-string v2, "WallpaperManagerService"

    .line 46
    .line 47
    const-string v3, "Failed to set ambient mode state"

    .line 48
    .line 49
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 68
    .line 69
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->requestWallpaperColors()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :goto_2
    :try_start_4
    const-string v2, "WallpaperManagerService"

    .line 74
    .line 75
    const-string v3, "Failed to request wallpaper colors"

    .line 76
    .line 77
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    move v4, v3

    .line 94
    :goto_4
    iget-object v5, p1, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-ge v4, v5, :cond_6

    .line 101
    .line 102
    iget-object v5, p1, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Landroid/util/SparseArray;

    .line 109
    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_3
    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/util/ArraySet;

    .line 118
    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_4
    move v6, v3

    .line 123
    :goto_5
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-ge v6, v7, :cond_5

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Landroid/graphics/RectF;

    .line 134
    .line 135
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz p1, :cond_7

    .line 149
    .line 150
    :try_start_5
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 151
    .line 152
    invoke-interface {p1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :catch_2
    move-exception p1

    .line 157
    :try_start_6
    const-string p2, "WallpaperManagerService"

    .line 158
    .line 159
    const-string v2, "Failed to register local colors areas"

    .line 160
    .line 161
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    :cond_7
    :goto_7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 165
    .line 166
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    cmpl-float p1, p0, p1

    .line 170
    .line 171
    if-eqz p1, :cond_8

    .line 172
    .line 173
    :try_start_7
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 174
    .line 175
    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_8

    .line 179
    :catch_3
    move-exception p0

    .line 180
    :try_start_8
    const-string p1, "WallpaperManagerService"

    .line 181
    .line 182
    const-string p2, "Failed to dim wallpaper"

    .line 183
    .line 184
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_8
    monitor-exit v0

    .line 188
    return-void

    .line 189
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    const-string p1, "Connector has already been destroyed"

    .line 192
    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    throw p0
.end method

.method public final containsDisplay(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 32
    .line 33
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 39
    .line 40
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 49
    .line 50
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 59
    .line 60
    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 61
    .line 62
    or-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 69
    .line 70
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsLock(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 77
    .line 78
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 79
    .line 80
    and-int/lit8 v1, v1, -0x3

    .line 81
    .line 82
    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 96
    .line 97
    const-string v1, "WallpaperManagerService"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "WPMS.mReply.sendResult"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const/4 v3, 0x0

    .line 112
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 113
    .line 114
    invoke-interface {v4, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_3

    .line 123
    :catch_0
    move-exception v4

    .line 124
    :try_start_3
    const-string v5, "WallpaperManagerService"

    .line 125
    .line 126
    const-string v6, "Failed to send callback!"

    .line 127
    .line 128
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 133
    .line 134
    .line 135
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_2
    :goto_4
    monitor-exit p1

    .line 143
    return-void

    .line 144
    :goto_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    throw p0
.end method

.method public final forEachDisplayConnector(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 16
    .line 17
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method

.method public final onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string v0, "Wallpaper onServiceConnected : "

    .line 2
    .line 3
    const-string v1, "Wallpaper onServiceConnected : "

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 6
    .line 7
    const-string v3, "WallpaperManagerService"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "WPMS.onServiceConnected-"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 39
    .line 40
    iget-boolean v4, v3, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    iput-boolean v5, v3, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 46
    .line 47
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 48
    .line 49
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 50
    .line 51
    if-ne v4, p0, :cond_9

    .line 52
    .line 53
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 54
    .line 55
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 60
    .line 61
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

    .line 64
    .line 65
    const/16 v6, 0x3f1

    .line 66
    .line 67
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    const-string v4, "WallpaperManagerService"

    .line 71
    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 80
    .line 81
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const-string v1, "WallpaperManagerService"

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, " mode = "

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 127
    .line 128
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 129
    .line 130
    invoke-virtual {p2, v5}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getMaximumSizeDimension(I)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 135
    .line 136
    iget v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 137
    .line 138
    if-lt v1, p2, :cond_2

    .line 139
    .line 140
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 141
    .line 142
    if-ge v0, p2, :cond_1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    move p2, v5

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    :goto_0
    const-string p2, "WallpaperManagerService"

    .line 148
    .line 149
    const-string/jumbo v0, "onServiceConnected needUpdateWallpaperData"

    .line 150
    .line 151
    .line 152
    invoke-static {p2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 156
    .line 157
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 168
    .line 169
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 170
    .line 171
    iget p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 172
    .line 173
    invoke-virtual {v0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    if-eqz p2, :cond_3

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception p0

    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 194
    :goto_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 202
    .line 203
    const-string v4, "WallpaperManagerService"

    .line 204
    .line 205
    invoke-direct {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v4, "WPMS.attachServiceLocked"

    .line 209
    .line 210
    invoke-virtual {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    .line 214
    .line 215
    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v1}, Lcom/android/server/wallpaper/WallpaperDataParser;->isSameWithPreviousWallpaper(ILcom/android/server/wallpaper/WallpaperData;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    if-eqz p2, :cond_5

    .line 240
    .line 241
    :cond_4
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 242
    .line 243
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 244
    .line 245
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 248
    .line 249
    iget p2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 250
    .line 251
    invoke-virtual {v0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 252
    .line 253
    .line 254
    :cond_5
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 264
    .line 265
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 277
    .line 278
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    .line 288
    .line 289
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 290
    .line 291
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    if-nez p2, :cond_6

    .line 302
    .line 303
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 304
    .line 305
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 306
    .line 307
    const/4 v0, 0x7

    .line 308
    iput v0, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .line 310
    :cond_6
    :try_start_1
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 311
    .line 312
    if-eqz p2, :cond_8

    .line 313
    .line 314
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 315
    .line 316
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 317
    .line 318
    const/16 v1, -0x2710

    .line 319
    .line 320
    if-ne v0, v1, :cond_7

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_7
    move v5, v0

    .line 324
    :goto_3
    invoke-interface {p2, v5}, Landroid/service/wallpaper/IWallpaperService;->setCurrentUserId(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :catch_0
    move-exception p0

    .line 329
    goto :goto_5

    .line 330
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 331
    .line 332
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 333
    .line 334
    iget p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mAodVisibilityState:I

    .line 335
    .line 336
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyAodVisibilityState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :goto_5
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    :cond_9
    :goto_6
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :goto_7
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string v0, "Does not match expected wallpaper component "

    .line 2
    .line 3
    const-string v1, "Wallpaper service gone: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    const-string v3, "WallpaperManagerService"

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string p1, "WallpaperManagerService"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 63
    .line 64
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-direct {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 76
    .line 77
    if-ne v0, p0, :cond_1

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 80
    .line 81
    if-nez p1, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const-wide/16 v0, 0x3e8

    .line 94
    .line 95
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    :cond_1
    monitor-exit v2

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 33
    .line 34
    iput-object p1, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 47
    .line 48
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final scheduleTimeoutLocked()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const-wide/16 v2, 0x2710

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Started wallpaper reconnect timeout for "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "WallpaperManagerService"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v2, p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-object v3

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final tryToRebind()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 7
    .line 8
    iget-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v8, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 17
    .line 18
    sget-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 19
    .line 20
    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    move-object v2, v8

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->scheduleTimeoutLocked()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 48
    .line 49
    iget-wide v3, v3, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    .line 50
    .line 51
    sub-long/2addr v1, v3

    .line 52
    const-wide/16 v3, 0x2710

    .line 53
    .line 54
    cmp-long v1, v1, v3

    .line 55
    .line 56
    if-gez v1, :cond_2

    .line 57
    .line 58
    const-string v1, "WallpaperManagerService"

    .line 59
    .line 60
    const-string v2, "Rebind fail! Try again later"

    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const-wide/16 v2, 0x3e8

    .line 76
    .line 77
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "WallpaperManagerService"

    .line 82
    .line 83
    const-string v2, "Reverting to built-in wallpaper!"

    .line 84
    .line 85
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/16 v2, 0x80

    .line 106
    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const v1, 0x80e8

    .line 117
    .line 118
    .line 119
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :goto_0
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method
