.class public final Lcom/android/server/sepunion/SemPluginManagerService;
.super Lcom/samsung/android/sepunion/IPluginManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final mIsCoverSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IPluginManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemPluginManagerService"

    .line 5
    .line 6
    invoke-static {v0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "com.sec.feature.cover"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginManagerService;->initialize()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    .line 8
    .line 9
    const-string v1, "cover"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "\n##### SEP COVER MANAGER SERVICE #####\n##### (dumpsys sepunion cover) #####\n"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_6

    .line 12
    .line 13
    array-length v0, p3

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    aget-object v1, p3, v0

    .line 20
    .line 21
    const-string v2, "close"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    aget-object v1, p3, v0

    .line 39
    .line 40
    const-string/jumbo v2, "open"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    aget-object v1, p3, v0

    .line 60
    .line 61
    const-string/jumbo v3, "secure_on"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const-string v3, "SemPluginManagerService"

    .line 69
    .line 70
    const-string v4, "device_policy"

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 81
    .line 82
    const-string p1, "111111"

    .line 83
    .line 84
    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_7

    .line 89
    .line 90
    const-string p0, "dumpCoverInfomation: resetPassword(secure_on) failed."

    .line 91
    .line 92
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    aget-object v0, p3, v0

    .line 97
    .line 98
    const-string/jumbo v1, "secure_off"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .line 115
    const-string p1, ""

    .line 116
    .line 117
    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_7

    .line 122
    .line 123
    const-string p0, "dumpCoverInfomation: resetPassword(secure_off) failed."

    .line 124
    .line 125
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 130
    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 136
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_1
    return-void
.end method

.method public final getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 13
    .line 14
    :cond_0
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 25
    .line 26
    new-instance v1, Lcom/android/server/sepunion/SemPluginLocalService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemPluginLocalService;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final notifyCoverSwitchStateChanged(JZ)V
    .locals 0

    .line 1
    const-string p1, "SemPluginManagerService"

    .line 2
    .line 3
    const-string/jumbo p2, "notifyCoverSwitchStateChanged"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 1
    const-string p1, "SemPluginManagerService"

    .line 2
    .line 3
    const-string/jumbo p2, "notifySmartCoverAttachStateChanged"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 17
    .line 18
    const-string p2, "CoverManager_CoverManagerServiceImpl"

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string/jumbo p0, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    const-string p1, "Caller is not SYSTEM_PROCESS"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_3
    :goto_0
    const-string p1, "CoverManager_"

    .line 56
    .line 57
    if-eqz p4, :cond_4

    .line 58
    .line 59
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/16 v1, 0xa

    .line 72
    .line 73
    if-eq v0, v1, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo p3, "notifySmartCoverAttachStateChanged : not supported cover type = "

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p2, "cover attach is failed - not supported cover type = "

    .line 112
    .line 113
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo v1, "notifySmartCoverAttachStateChanged : attach = "

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    if-eqz p4, :cond_5

    .line 150
    .line 151
    const-string p2, "cover attach : "

    .line 152
    .line 153
    const-string v0, ", cover type : "

    .line 154
    .line 155
    invoke-static {p2, v0, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 174
    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    .line 178
    .line 179
    .line 180
    :cond_6
    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 8

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_8

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 8
    .line 9
    if-eqz p1, :cond_a

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 14
    .line 15
    if-nez p1, :cond_a

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, 0x1388

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string v3, "CoverManager_CoverManagerServiceImpl"

    .line 49
    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const-string v0, "input"

    .line 57
    .line 58
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/input/InputManagerService;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 76
    .line 77
    const/16 v5, -0x100

    .line 78
    .line 79
    const/16 v6, 0x1a

    .line 80
    .line 81
    const/4 v7, -0x1

    .line 82
    invoke-interface {v0, v7, v5, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    if-lez v0, :cond_3

    .line 87
    .line 88
    move v0, v2

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    const-string v0, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    .line 91
    .line 92
    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "getCoverAttachStateFromInputManager : InputManager is null"

    .line 97
    .line 98
    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    move v0, v4

    .line 102
    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eq v0, v2, :cond_4

    .line 110
    .line 111
    move v4, v2

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 113
    .line 114
    iget-boolean v0, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    :cond_5
    move v4, v2

    .line 131
    :cond_6
    invoke-virtual {p0, v4, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    const-string p0, "Nfc authentication supported, skipping creating first coverState"

    .line 136
    .line 137
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    const/16 v0, 0x3e8

    .line 142
    .line 143
    if-ne p1, v0, :cond_a

    .line 144
    .line 145
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 146
    .line 147
    if-eqz p1, :cond_a

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 152
    .line 153
    iget-boolean v0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    .line 154
    .line 155
    if-nez v0, :cond_9

    .line 156
    .line 157
    const-string v0, "CoverManager_StateNotifier"

    .line 158
    .line 159
    const-string/jumbo v3, "onBootComplete"

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iput-boolean v2, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    .line 166
    .line 167
    iget-object v0, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->run()V

    .line 172
    .line 173
    .line 174
    iput-object v1, p1, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    .line 175
    .line 176
    :cond_9
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    const-string v0, "SemInputDeviceManagerService"

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 187
    .line 188
    :cond_a
    :goto_2
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onUserStarting(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserStopping(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserSwitching(II)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 0

    .line 1
    return-void
.end method
