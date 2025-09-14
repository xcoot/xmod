.class public final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field public mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field public final mBroadcastReceiver:Lcom/android/server/display/WifiDisplayAdapter$13;

.field public mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field public mDisplays:[Landroid/hardware/display/WifiDisplay;

.field public mDlnaController:Lcom/android/server/display/DlnaController;

.field public final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field public mPendingStatusChangeBroadcast:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field public final mSupportsProtectedBuffers:Z

.field public mVolumeController:Lcom/android/server/display/VolumeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 7

    .line 1
    const-string v5, "WifiDisplayAdapter"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$13;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Lcom/android/server/display/WifiDisplayAdapter$13;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p4, "android.hardware.wifi.direct"

    .line 32
    .line 33
    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-direct {p1, p0, p3}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 49
    .line 50
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const p2, 0x1110292

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    const-string p1, "WiFi display was requested, but there is no WiFi Direct feature"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mCurrentStatus="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "mFeatureState=0"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "mScanState=0"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "mActiveDisplayState=0"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "mActiveDisplay="

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v1, "mDisplays="

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 66
    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string/jumbo v2, "mAvailableDisplays="

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 79
    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "mRememberedDisplays="

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 92
    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string/jumbo v2, "mPendingStatusChangeBroadcast="

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 105
    .line 106
    const-string/jumbo v2, "mSupportsProtectedBuffers="

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo p0, "mDisplayController=null"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v1, "getWifiDisplayStatusLocked: result="

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "WifiDisplayAdapter"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 44
    .line 45
    return-object p0
.end method

.method public final requestDisconnectLocked()V
    .locals 2

    .line 1
    const-string v0, "WifiDisplayAdapter"

    .line 2
    .line 3
    const-string/jumbo v1, "requestDisconnectedLocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final requestForgetLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "requestForgetLocked: address="

    .line 2
    .line 3
    .line 4
    const-string v1, "WifiDisplayAdapter"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "requestRenameLocked: address="

    .line 2
    .line 3
    .line 4
    const-string v1, ", alias="

    .line 5
    .line 6
    const-string v2, "WifiDisplayAdapter"

    .line 7
    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v5, p2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move-object v5, v0

    .line 34
    :goto_1
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p2, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v1, v0

    .line 55
    :goto_2
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_5

    .line 66
    .line 67
    new-instance v10, Landroid/hardware/display/WifiDisplay;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    move-object v2, v10

    .line 81
    move-object v3, p1

    .line 82
    invoke-direct/range {v2 .. v9}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ltz v1, :cond_4

    .line 97
    .line 98
    iget-object v2, p2, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 105
    .line 106
    invoke-virtual {v2, v10}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    iget-object v2, p2, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v2, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    iget-object v1, p2, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :goto_3
    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p2, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 134
    .line 135
    iget-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 136
    .line 137
    if-nez p2, :cond_5

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 140
    .line 141
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 147
    .line 148
    if-eqz p2, :cond_6

    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    :cond_6
    return-void
.end method

.method public final setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "setDlnaDevice ::type = "

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "None"

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    if-eq v1, v5, :cond_2

    .line 26
    .line 27
    if-eq v1, v4, :cond_1

    .line 28
    .line 29
    if-eq v1, v3, :cond_0

    .line 30
    .line 31
    move-object v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "Music_chn"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "Music"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v1, "Image"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-string v1, "Video"

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", state = "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    if-eq v1, v5, :cond_6

    .line 59
    .line 60
    if-eq v1, v4, :cond_5

    .line 61
    .line 62
    if-eq v1, v3, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-string v2, "Connecting"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    const-string v2, "Error"

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    const-string v2, "Connected"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_7
    const-string v2, "Not_connected"

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", name = "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "DlnaController"

    .line 96
    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v1, -0x1

    .line 105
    if-eq v0, v1, :cond_a

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ne v0, v3, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    .line 120
    .line 121
    .line 122
    if-eqz p2, :cond_9

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 125
    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    new-instance v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 138
    .line 139
    :cond_9
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 140
    .line 141
    new-instance p1, Lcom/android/server/display/DlnaController$2;

    .line 142
    .line 143
    const/4 p2, 0x0

    .line 144
    invoke-direct {p1, p2, p0}, Lcom/android/server/display/DlnaController$2;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    :cond_a
    :goto_2
    return-void
.end method

.method public final updateRememberedDisplaysLocked()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    new-array v3, v3, [Landroid/hardware/display/WifiDisplay;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    array-length v4, v2

    .line 41
    move-object v6, v2

    .line 42
    move v5, v3

    .line 43
    :goto_0
    if-ge v5, v4, :cond_2

    .line 44
    .line 45
    aget-object v7, v2, v5

    .line 46
    .line 47
    invoke-virtual {v1, v7}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    aget-object v8, v2, v5

    .line 52
    .line 53
    if-eq v7, v8, :cond_1

    .line 54
    .line 55
    if-ne v6, v2, :cond_0

    .line 56
    .line 57
    new-array v6, v4, [Landroid/hardware/display/WifiDisplay;

    .line 58
    .line 59
    invoke-static {v2, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    :cond_0
    aput-object v7, v6, v5

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v2, v6

    .line 68
    :cond_3
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 73
    .line 74
    array-length v2, v2

    .line 75
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 76
    .line 77
    array-length v4, v4

    .line 78
    add-int/2addr v2, v4

    .line 79
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 83
    .line 84
    array-length v2, v2

    .line 85
    new-array v2, v2, [Z

    .line 86
    .line 87
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 88
    .line 89
    array-length v5, v4

    .line 90
    move v6, v3

    .line 91
    :goto_1
    if-ge v6, v5, :cond_7

    .line 92
    .line 93
    aget-object v7, v4, v6

    .line 94
    .line 95
    move v8, v3

    .line 96
    :goto_2
    iget-object v9, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 97
    .line 98
    array-length v10, v9

    .line 99
    if-ge v8, v10, :cond_5

    .line 100
    .line 101
    aget-object v9, v9, v8

    .line 102
    .line 103
    invoke-virtual {v7, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_4

    .line 108
    .line 109
    const/4 v7, 0x1

    .line 110
    aput-boolean v7, v2, v8

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    iget-object v8, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_6

    .line 123
    .line 124
    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    new-instance v15, Landroid/hardware/display/WifiDisplay;

    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const/4 v12, 0x0

    .line 149
    const/4 v13, 0x0

    .line 150
    const/4 v14, 0x1

    .line 151
    move-object v8, v15

    .line 152
    move-object v3, v15

    .line 153
    move-object v15, v7

    .line 154
    invoke-direct/range {v8 .. v15}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    goto :goto_1

    .line 164
    :cond_7
    const/4 v3, 0x0

    .line 165
    :goto_4
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 166
    .line 167
    array-length v5, v4

    .line 168
    if-ge v3, v5, :cond_8

    .line 169
    .line 170
    aget-object v4, v4, v3

    .line 171
    .line 172
    new-instance v13, Landroid/hardware/display/WifiDisplay;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    aget-boolean v11, v2, v3

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    const/4 v9, 0x1

    .line 197
    move-object v5, v13

    .line 198
    invoke-direct/range {v5 .. v12}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceType()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-virtual {v13, v5}, Landroid/hardware/display/WifiDisplay;->setSamsungDeviceType(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceIcon()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v13, v5}, Landroid/hardware/display/WifiDisplay;->setSamsungDeviceIcon(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getBluetoothMacAddress()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v13, v5}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getScreenSharingHashedDi()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v13, v5}, Landroid/hardware/display/WifiDisplay;->setScreenSharingHashedDi(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-virtual {v13, v4}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_8
    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    .line 249
    .line 250
    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 251
    .line 252
    return-void
.end method
