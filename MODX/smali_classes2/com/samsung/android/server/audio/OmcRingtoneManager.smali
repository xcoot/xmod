.class public final Lcom/samsung/android/server/audio/OmcRingtoneManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;


# instance fields
.field public final mExcludeNotifications:Ljava/util/List;

.field public final mExcludeRingtones:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 17
    .line 18
    const-wide/16 v0, 0x100

    .line 19
    .line 20
    const-string v2, "OmcRingtoneManager_Init"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string/jumbo v0, "persist.sys.omc_respath"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method


# virtual methods
.method public final getExcludedRingtonesFromCsc(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "/media/audio/ringtones/exclude_ringtones"

    .line 5
    .line 6
    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "/media/audio/notifications/exclude_notifications"

    .line 29
    .line 30
    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 45
    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const-string v2, "AS.OmcRingtoneManager"

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    .line 65
    .line 66
    new-instance v3, Ljava/io/FileReader;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    if-ne p1, v0, :cond_2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 83
    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 93
    .line 94
    check-cast v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catch_0
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 115
    :goto_4
    const-string p1, "File exception"

    .line 116
    .line 117
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_4
    const-string p0, "There is no sounds(type:"

    .line 122
    .line 123
    const-string p2, ") list to remove"

    .line 124
    .line 125
    invoke-static {p1, p0, p2, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_5
    return-void
.end method
