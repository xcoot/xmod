.class public final Lcom/samsung/android/server/audio/MultiSoundManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

.field public static final sLastSetDeviceToNativeLock:Ljava/lang/Object;

.field public static sLastSetDeviceToNativeTime:J


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAudioHandler:Landroid/os/Handler;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mInterface:Lcom/android/server/audio/AudioService$11;

.field public final mMultiSoundLock:Ljava/lang/Object;

.field public mNm:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPinAppInfoList:Ljava/util/HashMap;

.field public final mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

.field public final mRemoteSubmixApps:Ljava/util/Set;

.field public mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field public final mTaskStack:Ljava/util/HashMap;

.field public mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field public final mVolumeTable:[F


# direct methods
.method public static -$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x80

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x100

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x200

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x4000

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const/high16 v1, 0x4000000

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    const v1, 0x8000

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$11;Landroid/os/Handler;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 48
    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 58
    .line 59
    const/16 v1, 0x65

    .line 60
    .line 61
    new-array v1, v1, [F

    .line 62
    .line 63
    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput v2, v1, v0

    .line 67
    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const/16 v2, 0x64

    .line 71
    .line 72
    aput v0, v1, v2

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    :goto_0
    if-ge v0, v2, :cond_0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    .line 78
    .line 79
    int-to-double v3, v0

    .line 80
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 81
    .line 82
    div-double/2addr v3, v5

    .line 83
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    .line 84
    .line 85
    mul-double/2addr v3, v5

    .line 86
    sub-double/2addr v3, v5

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    const-wide/high16 v5, -0x3fec000000000000L    # -5.0

    .line 92
    .line 93
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    sub-double/2addr v3, v5

    .line 98
    double-to-float v3, v3

    .line 99
    aput v3, v1, v0

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 105
    .line 106
    iput-object p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-string p2, "activity"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroid/app/ActivityManager;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 119
    .line 120
    const-string/jumbo p2, "notification"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Landroid/app/NotificationManager;

    .line 128
    .line 129
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    iput-object p4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 138
    .line 139
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :try_start_0
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$1;

    .line 144
    .line 145
    invoke-direct {p2, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p2, "Exception - registerTaskStackListener "

    .line 156
    .line 157
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p2, "AS.MultiSoundManager"

    .line 161
    .line 162
    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    return-void
.end method


# virtual methods
.method public final enableSeparateRemoteSubmix(IZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "audioParam"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "l_multi_sound_key"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "enable"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "exclusive"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "device"

    .line 31
    .line 32
    const v2, 0x8000

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string/jumbo v1, "type"

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 67
    .line 68
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 69
    .line 70
    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    .line 71
    .line 72
    return-void
.end method

.method public final getAppDevice(I)I
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x8000

    if-eqz v1, :cond_2

    .line 10
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 11
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez p1, :cond_3

    return v2

    .line 13
    :cond_3
    iget p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-ne p1, v3, :cond_4

    .line 14
    const-string v0, "0"

    goto :goto_0

    :cond_4
    const-string v0, ""

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-ne p1, v3, :cond_6

    return p1

    .line 17
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    return p1

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    move-result p1

    .line 19
    sget-object v1, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return p1

    .line 20
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 21
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 22
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 23
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 24
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 25
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 28
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 29
    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_b

    goto :goto_2

    .line 30
    :cond_b
    sget-object v4, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_2

    :cond_c
    and-int/lit16 p0, v2, 0x4000

    if-eqz p0, :cond_d

    const/16 v0, 0x4000

    goto :goto_4

    :cond_d
    const/high16 p0, 0x4000000

    and-int p1, v2, p0

    if-eqz p1, :cond_e

    :goto_3
    move v0, p0

    goto :goto_4

    :cond_e
    and-int/lit8 p0, v2, 0x4

    if-eqz p0, :cond_f

    const/4 v0, 0x4

    goto :goto_4

    :cond_f
    and-int/lit8 p0, v2, 0x8

    if-eqz p0, :cond_10

    const/16 v0, 0x8

    goto :goto_4

    :cond_10
    const/16 p0, 0x400

    and-int/lit16 p1, v2, 0x400

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    :goto_4
    return v0

    .line 32
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getAppDevice(IZ)I
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result p0

    return p0
.end method

.method public final getCurrentMediaDevice()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    aget-object p0, p0, v0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/lit8 v0, p0, -0x1

    .line 17
    .line 18
    and-int/2addr v0, p0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    and-int/lit8 v0, p0, 0x2

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/high16 v0, 0x40000

    .line 28
    .line 29
    and-int v1, p0, v0

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :goto_0
    move p0, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/high16 v0, 0x80000

    .line 36
    .line 37
    and-int v1, p0, v0

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/high16 v0, 0x200000

    .line 43
    .line 44
    and-int v1, p0, v0

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    and-int v2, v1, p0

    .line 72
    .line 73
    if-ne v2, v1, :cond_4

    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    :goto_1
    return p0
.end method

.method public final getPinAppInfo(I)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    const v3, 0x8000

    .line 18
    .line 19
    .line 20
    if-ne p1, v3, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 23
    .line 24
    check-cast p1, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget v5, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    aget-object v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_0
    :try_start_2
    const-string p0, ", "

    .line 87
    .line 88
    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    monitor-exit v2

    .line 93
    return-object p0

    .line 94
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter v3

    .line 98
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/util/Map$Entry;

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eq v6, p1, :cond_2

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 143
    .line 144
    iget-object v6, v6, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 145
    .line 146
    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    aget-object v6, v5, v4

    .line 151
    .line 152
    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 153
    .line 154
    iget-object v7, v7, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 155
    .line 156
    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    .line 158
    const-string/jumbo v8, "multisound_app"

    .line 159
    .line 160
    .line 161
    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    array-length v8, v5

    .line 166
    move v9, v4

    .line 167
    :goto_2
    if-ge v9, v8, :cond_4

    .line 168
    .line 169
    aget-object v10, v5, v9

    .line 170
    .line 171
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    if-eqz v11, :cond_3

    .line 176
    .line 177
    move-object v6, v10

    .line 178
    goto :goto_3

    .line 179
    :cond_3
    add-int/2addr v9, v0

    .line 180
    goto :goto_2

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    goto :goto_4

    .line 183
    :cond_4
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 184
    .line 185
    iget-object v5, v5, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 186
    .line 187
    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 188
    .line 189
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_1
    move-exception v5

    .line 206
    :try_start_5
    const-string v6, "AS.MultiSoundManager"

    .line 207
    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v8, "not found "

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_5
    const-string p0, ", "

    .line 235
    .line 236
    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    monitor-exit v3

    .line 241
    return-object p0

    .line 242
    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 243
    throw p0

    .line 244
    :goto_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    throw p0
.end method

.method public final getPinDevice(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 35
    .line 36
    iget v3, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 42
    .line 43
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const v3, 0x8000

    .line 50
    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    move v0, v2

    .line 55
    :cond_3
    return v0
.end method

.method public final isRemoteSubmixAppExist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 5
    .line 6
    check-cast p0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    xor-int/lit8 p0, p0, 0x1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final resetByEnableDisable()V
    .locals 6

    .line 1
    const-string v0, "AS.MultiSoundManager"

    .line 2
    .line 3
    const-string/jumbo v1, "resetByEnableDisable"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 40
    .line 41
    iget v3, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 47
    .line 48
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 49
    .line 50
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    const v3, 0x8000

    .line 55
    .line 56
    .line 57
    if-eq v0, v3, :cond_1

    .line 58
    .line 59
    const v3, 0x20000002

    .line 60
    .line 61
    .line 62
    if-eq v0, v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eq v0, v3, :cond_1

    .line 75
    .line 76
    sget v3, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 77
    .line 78
    iget-object v3, v4, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3, v2, v5}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I[Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v3, v4, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/high16 v0, 0x4000000

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x10000000

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    const/4 v6, 0x0

    .line 18
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :catch_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    move v7, v6

    .line 41
    :goto_0
    invoke-virtual {v2, p1, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const-string/jumbo v3, "sendBecomingNoisyIntentToUnpinApps to "

    .line 63
    .line 64
    .line 65
    const-string/jumbo v4, "send intent except "

    .line 66
    .line 67
    .line 68
    const-string v5, "AS.MultiSoundManager"

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 77
    .line 78
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    if-nez v7, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    array-length v8, p2

    .line 93
    move v9, v6

    .line 94
    :goto_2
    if-ge v9, v8, :cond_3

    .line 95
    .line 96
    aget-object v10, p2, v9

    .line 97
    .line 98
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_2

    .line 103
    .line 104
    invoke-static {v4, v10, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 112
    .line 113
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .line 128
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v4, v2, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    array-length v1, v0

    .line 135
    move v2, v6

    .line 136
    :goto_3
    if-ge v2, v1, :cond_9

    .line 137
    .line 138
    aget-object v7, v0, v2

    .line 139
    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_5

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_5
    array-length v8, p2

    .line 150
    move v9, v6

    .line 151
    :goto_4
    if-ge v9, v8, :cond_7

    .line 152
    .line 153
    aget-object v10, p2, v9

    .line 154
    .line 155
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_6

    .line 160
    .line 161
    invoke-static {v4, v10, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    return-void

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public final setAppDevice(IIZ)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 10
    .line 11
    const-string/jumbo v3, "setAppDevice"

    .line 12
    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p0, "AS.MultiSoundManager"

    .line 23
    .line 24
    const-string/jumbo p1, "setAppDevice: permission error"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    sget-object v2, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v2, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    const-string p0, "AS.MultiSoundManager"

    .line 52
    .line 53
    const-string/jumbo p1, "setAppDevice: unsupported device"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 76
    .line 77
    if-ne v2, p2, :cond_2

    .line 78
    .line 79
    const-string p0, "AS.MultiSoundManager"

    .line 80
    .line 81
    const-string/jumbo p1, "same device pin."

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :cond_2
    sget-object v2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    const/4 v0, 0x2

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 117
    .line 118
    const/16 v3, 0x64

    .line 119
    .line 120
    invoke-direct {v2, p1, p2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    iput p2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 125
    .line 126
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(II)V

    .line 152
    .line 153
    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 156
    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    if-ne p2, v0, :cond_6

    .line 160
    .line 161
    if-eqz p3, :cond_6

    .line 162
    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    .line 176
    .line 177
    .line 178
    :cond_6
    return-void

    .line 179
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0
.end method

.method public final setAppToRemoteSubmix(II)V
    .locals 6

    .line 1
    const-string v0, "Invalid uid "

    .line 2
    .line 3
    const-string v1, "Already set uid "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    const/16 v3, -0x3e8

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-ne p2, v3, :cond_2

    .line 13
    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast p2, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const-string p0, "AS.MultiSoundManager"

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    const p2, 0x8000

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 56
    .line 57
    check-cast p2, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(IZ)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast p2, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 v1, -0x3ea

    .line 81
    .line 82
    if-ne p2, v1, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move v4, v5

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast p2, Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    const-string p0, "AS.MultiSoundManager"

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v2

    .line 118
    return-void

    .line 119
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast p2, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 131
    .line 132
    check-cast p2, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_5

    .line 139
    .line 140
    const/4 p2, -0x1

    .line 141
    invoke-virtual {p0, p2, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(IZ)V

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    .line 145
    .line 146
    .line 147
    move v5, v4

    .line 148
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 154
    .line 155
    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw p0
.end method

.method public final setAppVolume(II)V
    .locals 4

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-gt p2, v0, :cond_6

    .line 4
    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    goto :goto_5

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    if-ne p2, v0, :cond_1

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_4

    .line 31
    :cond_1
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {v2, p1, v0, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    if-ltz p2, :cond_4

    .line 39
    .line 40
    if-le p2, v0, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iput p2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_0
    const-string p2, "AS.MultiSoundManager"

    .line 47
    .line 48
    const-string v0, "Invalid app volume"

    .line 49
    .line 50
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_2
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_6
    :goto_5
    const-string p0, "AS.MultiSoundManager"

    .line 86
    .line 87
    const-string/jumbo p1, "setAppVolume: Invalid volume"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final setAppVolumeToNative(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setDeviceToNative(II)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "audioParam"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "l_multi_sound_key"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "uid"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "device"

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo p2, "type"

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object p2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p2

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const/4 v2, 0x0

    .line 51
    int-to-long v2, v2

    .line 52
    add-long/2addr v0, v2

    .line 53
    sget-wide v2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    .line 54
    .line 55
    cmp-long v4, v2, v0

    .line 56
    .line 57
    if-ltz v4, :cond_0

    .line 58
    .line 59
    const-wide/16 v0, 0x1e

    .line 60
    .line 61
    add-long/2addr v0, v2

    .line 62
    :cond_0
    sput-wide v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance v3, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    monitor-exit p2

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final setRemoteSubmixAppToNative(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "audioParam"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "l_multi_sound_key"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "uid"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "device"

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo p2, "type"

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final setStateToNative()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    .line 7
    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    .line 8
    .line 9
    const-string v3, "AS.MultiSoundManager"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string/jumbo v0, "send multisound off during le broadcasting"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    move v0, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$11;->isSmartViewEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string/jumbo v0, "send multisound off during smart view"

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "audioParam"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "l_multi_sound_key"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "enable"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string/jumbo v1, "type"

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v2, 0xc8

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final showHeadUpNotification(II)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-array v2, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, ""

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    aput-object v4, v2, v5

    .line 15
    .line 16
    filled-new-array {p1, p2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    .line 21
    .line 22
    aget v4, p1, v3

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    aget v4, p1, v5

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    move p2, v3

    .line 48
    :goto_0
    if-ge p2, v0, :cond_5

    .line 49
    .line 50
    aget v4, p1, p2

    .line 51
    .line 52
    if-eq v4, v0, :cond_3

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    if-eq v4, v6, :cond_2

    .line 56
    .line 57
    const/16 v6, 0x8

    .line 58
    .line 59
    if-eq v4, v6, :cond_2

    .line 60
    .line 61
    array-length v4, v1

    .line 62
    move v6, v3

    .line 63
    :goto_1
    if-ge v6, v4, :cond_4

    .line 64
    .line 65
    aget-object v7, v1, v6

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    aget v9, p1, p2

    .line 72
    .line 73
    if-ne v8, v9, :cond_1

    .line 74
    .line 75
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    aput-object v4, v2, p2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const v6, 0x1040621

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    aput-object v4, v2, p2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const v6, 0x10408d5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    aput-object v4, v2, p2

    .line 119
    .line 120
    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    const p2, 0x10408c3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    aget-object p2, v2, v3

    .line 133
    .line 134
    aget-object v1, v2, v5

    .line 135
    .line 136
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    new-instance v1, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v2, "com.samsung.android.audio.headup.changedevice"

    .line 149
    .line 150
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/high16 v2, 0xc000000

    .line 154
    .line 155
    invoke-static {p2, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    new-instance v1, Landroid/app/Notification$Builder;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    const-string v4, "AudioCore_Notification"

    .line 164
    .line 165
    invoke-direct {v1, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x1080b6e

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    const v4, 0x10408c4

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 201
    .line 202
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    const v1, 0x10408c0

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v3, v0, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 239
    .line 240
    const/16 p2, 0x3ed

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method public final showNotification()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice(Z)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "ro.build.characteristics"

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string/jumbo v4, "tablet"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v4, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    .line 42
    .line 43
    const-string v5, "com.samsung.android.setting.multisound"

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-string v3, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    .line 66
    .line 67
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v3, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 71
    .line 72
    const-string/jumbo v4, "top_level_sounds"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v3, "android.intent.action.Launch_Setting"

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    const/high16 v4, 0x14000000

    .line 90
    .line 91
    invoke-static {v3, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v3, Landroid/content/Intent;

    .line 96
    .line 97
    const-string v4, "android.intent.action.TurnOff_MultiSound"

    .line 98
    .line 99
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    const/high16 v5, 0x4000000

    .line 105
    .line 106
    invoke-static {v4, v1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-instance v4, Landroid/app/Notification$Builder;

    .line 111
    .line 112
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string v7, "AudioCore_Notification"

    .line 115
    .line 116
    invoke-direct {v4, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v6, 0x4

    .line 120
    const v7, 0x10408c9

    .line 121
    .line 122
    .line 123
    if-eq v2, v6, :cond_5

    .line 124
    .line 125
    const/16 v6, 0x8

    .line 126
    .line 127
    if-eq v2, v6, :cond_5

    .line 128
    .line 129
    const/16 v6, 0x80

    .line 130
    .line 131
    if-eq v2, v6, :cond_4

    .line 132
    .line 133
    const/16 v6, 0x4000

    .line 134
    .line 135
    if-eq v2, v6, :cond_3

    .line 136
    .line 137
    if-eq v2, v5, :cond_3

    .line 138
    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    const v5, 0x10408cb

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const v5, 0x10408c7

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_1
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 173
    .line 174
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const v7, 0x10408ce

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const v6, 0x1080b6e

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const/4 v2, 0x0

    .line 214
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const v5, 0x10408c5

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    const v5, 0x1080078

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const v2, 0x10408cf

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v5, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 259
    .line 260
    const/16 v0, 0x3ec

    .line 261
    .line 262
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 267
    .line 268
    .line 269
    :cond_6
    :goto_2
    return-void
.end method

.method public final updateAudioServiceNotificationChannel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 2
    .line 3
    const-string v1, "AudioCore_Notification"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v2, "notification"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 22
    .line 23
    new-instance v0, Landroid/app/NotificationChannel;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v3, 0x10408d5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
