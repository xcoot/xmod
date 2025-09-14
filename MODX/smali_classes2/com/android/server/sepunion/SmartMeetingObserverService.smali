.class public final Lcom/android/server/sepunion/SmartMeetingObserverService;
.super Lcom/samsung/android/sepunion/ISmartMeetingObserverService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final SMMT_OBSERVER_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

.field public final mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

.field public mObserverRegisterState:I

.field public mPackageNameList:Ljava/util/List;

.field public final mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;


# direct methods
.method public static -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/SmartMeetingObserverService;IILandroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "event_type"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "user_id"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo p2, "pkg_name"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "class_name"

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static -$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "contentResolver query: "

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "SmartMeetingObserverService"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v0, "get ContentResolver null"

    .line 23
    .line 24
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v1, v4

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    .line 30
    .line 31
    const-string/jumbo v6, "video_call_app_info"

    .line 32
    .line 33
    .line 34
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-lez v5, :cond_2

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "package_name"

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-gez v0, :cond_1

    .line 77
    .line 78
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_3

    .line 84
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception v2

    .line 112
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    throw v0

    .line 116
    :cond_2
    if-eqz v2, :cond_3

    .line 117
    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :goto_3
    const-string v2, "getPackageNameList() failed: "

    .line 123
    .line 124
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_4
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v2, "registerUsageStatsWatcher: "

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    const-string/jumbo v2, "usagestats"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 164
    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 170
    .line 171
    .line 172
    iget v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 173
    .line 174
    or-int/lit8 v0, v0, 0x8

    .line 175
    .line 176
    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 177
    .line 178
    iput-object v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_5
    const-string p0, "get UsageStatsManager null"

    .line 182
    .line 183
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_6
    :goto_5
    const-string/jumbo p0, "registerUsageStatsWatcher: fail"

    .line 188
    .line 189
    .line 190
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :goto_6
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.smartmeeting.observer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISmartMeetingObserverService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$1;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$3;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string p1, "SmartMeetingObserverService"

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "\n##### SmartMeetingObserverService #####\n##### (dumpsys sepunion SmartMeetingObserverService) #####\n"

    .line 2
    .line 3
    const-string p3, "Observer register state: "

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo p3, "packageNameList: "

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mPackageNameList:Ljava/util/List;

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    const-string/jumbo p0, "null"

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
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
    const-string p0, "SmartMeetingObserverService"

    .line 2
    .line 3
    const-string/jumbo p1, "onCreate"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const-string p0, "SmartMeetingObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onDestroy"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "SmartMeetingObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onStart"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
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
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
