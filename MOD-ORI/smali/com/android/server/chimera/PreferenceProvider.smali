.class public Lcom/android/server/chimera/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    const-string p2, "ChimeraManagerService"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/server/chimera/ChimeraManagerService;

    .line 8
    .line 9
    if-eqz p2, :cond_3

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 16
    .line 17
    iget-object p3, p2, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string/jumbo p3, "ro.slmk.use_bg_keeping_policy"

    .line 23
    .line 24
    .line 25
    const-string/jumbo p4, "false"

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string/jumbo p4, "true"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    const-string p3, "Default,Conservative,Aggressive"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p3, "Default,Conservative"

    .line 45
    .line 46
    :goto_0
    iget-boolean p4, p2, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 47
    .line 48
    const-string p5, "2.0"

    .line 49
    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    iget-boolean p2, p2, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    const-string p2, "Conservative"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string p2, "Aggressive"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string p2, "Default"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const-string p3, ""

    .line 66
    .line 67
    move-object p2, p3

    .line 68
    move-object p5, p2

    .line 69
    :goto_1
    new-instance p4, Landroid/database/MatrixCursor;

    .line 70
    .line 71
    const-string v0, "VERSION"

    .line 72
    .line 73
    const-string v1, "SUPPORTED_MODE"

    .line 74
    .line 75
    const-string v2, "CURRENT_MODE"

    .line 76
    .line 77
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {p4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p4, p0, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 106
    .line 107
    .line 108
    return-object p4
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string p0, "ChimeraManagerService"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/ChimeraManagerService;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_5

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 13
    .line 14
    if-eqz p0, :cond_5

    .line 15
    .line 16
    const-string p3, "MODE"

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "Aggressive"

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/4 p4, 0x1

    .line 29
    const-string v0, "PreferenceProvider"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    iget-boolean p2, v1, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    iget-boolean p2, v1, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    return p1

    .line 44
    :cond_0
    const-string/jumbo p2, "custom mode = true, false"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p4, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p3, "Conservative"

    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    iget-boolean p2, v1, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    iget-boolean p2, v1, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    return p1

    .line 74
    :cond_2
    const-string/jumbo p2, "custom mode = true, true"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p4, p4}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-boolean p2, v1, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 88
    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    return p1

    .line 92
    :cond_4
    const-string/jumbo p2, "custom mode = false, false"

    .line 93
    .line 94
    .line 95
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_0
    return p1
.end method
