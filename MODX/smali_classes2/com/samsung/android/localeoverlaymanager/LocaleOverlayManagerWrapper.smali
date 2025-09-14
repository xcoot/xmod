.class public final Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

.field public final mPendingActionRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

.field public final mPendingRequestQueue:Ljava/util/Queue;

.field public final mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

.field public mRequestInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v1, "onCreate() called. UserId: "

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final applyLocales(Landroid/os/LocaleList;ILcom/android/server/am/OverlayChangeObserverImpl;)V
    .locals 6

    .line 1
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "applyLocales() called with: localeList = ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "], userId = ["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "], observer = ["

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "]"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string v0, "localeChanged localeList "

    .line 55
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    const-string v1, "LocaleOverlayManagerWrapper"

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ge v1, v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x3

    .line 99
    if-ne v3, v4, :cond_1

    .line 100
    .line 101
    const-string v3, "LocaleOverlayManagerWrapper"

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v5, "localeChanged: trying to get ISO_639_1 mapping for locale: "

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    sget-object v3, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    .line 124
    .line 125
    check-cast v3, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_2

    .line 136
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/Utils;->handleNewLocaleCodes(Ljava/util/Set;)V

    .line 145
    .line 146
    .line 147
    const-string p1, "LocaleOverlayManagerWrapper"

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "CurrentLocales list from config - "

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    new-instance p1, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v1, "pending_action"

    .line 175
    .line 176
    .line 177
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 178
    .line 179
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v1, "config_locale_list"

    .line 183
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v0, "userId"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 199
    .line 200
    new-instance v0, Landroid/util/Pair;

    .line 201
    .line 202
    invoke-direct {v0, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 206
    .line 207
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .line 212
    .line 213
    monitor-exit p0

    .line 214
    return-void

    .line 215
    :goto_2
    monitor-exit p0

    .line 216
    throw p1
.end method

.method public final applyLocalesForPackage(Ljava/lang/String;IILcom/android/server/pm/OverlayChangeObserverImpl;)V
    .locals 3

    .line 1
    const-string v0, "applyLocalesForPackage() called with: packageName = ["

    .line 2
    .line 3
    const-string v1, "], token = ["

    .line 4
    .line 5
    const-string v2, "], observer = ["

    .line 6
    .line 7
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "]"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "LocaleOverlayManagerWrapper"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "pending_action"

    .line 47
    .line 48
    .line 49
    const-string v2, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "added_package"

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo p1, "token"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo p1, "userId"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 72
    .line 73
    new-instance p2, Landroid/util/Pair;

    .line 74
    .line 75
    invoke-direct {p2, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "applyPerAppLocale() called with: localeList = ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "], packageName = ["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "], userId = ["

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "]"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    const-string v0, "APK_OPTIMIZATION CurrentLocales list from config - "

    .line 46
    .line 47
    const-string v1, "APK_OPTIMIZATION localeChangedPerApp localeList "

    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    const-string v2, "LocaleOverlayManagerWrapper"

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->getLocalesListAsSet(Landroid/os/LocaleList;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "LocaleOverlayManagerWrapper"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v1, "pending_action"

    .line 94
    .line 95
    .line 96
    const-string v2, "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v1, "perAppPackageName"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p2, "config_locale_list"

    .line 108
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo p1, "userId"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 124
    .line 125
    new-instance p2, Landroid/util/Pair;

    .line 126
    .line 127
    const/4 p3, 0x0

    .line 128
    invoke-direct {p2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    monitor-exit p0

    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0

    .line 143
    throw p1

    .line 144
    :cond_0
    :goto_0
    return-void
.end method

.method public final checkSanityOfOverlays(I)V
    .locals 3

    .line 1
    const-string v0, "checkSanityOfOverlays() called with: userId = ["

    .line 2
    .line 3
    const-string v1, "], mContext = "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LocaleOverlayManagerWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string/jumbo v0, "pending_action"

    .line 29
    .line 30
    .line 31
    const-string v1, "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"

    .line 32
    .line 33
    const-string/jumbo v2, "userId"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 41
    .line 42
    new-instance v1, Landroid/util/Pair;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final init(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "pending_action"

    .line 7
    .line 8
    .line 9
    const-string v2, "init_on_boot"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "safeMode"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p1, "startCleanUpOverlay"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 27
    .line 28
    new-instance p2, Landroid/util/Pair;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final initManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 2
    .line 3
    const-string v1, "LocaleOverlayManagerWrapper"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "initManager thread not getting created"

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "initManager thread creation"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 25
    .line 26
    const-string v1, "ResourceOverlayService"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 42
    .line 43
    .line 44
    iput-object p0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mService:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iput-object p0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    return-void
.end method

.method public final declared-synchronized requestPendingActions()V
    .locals 6

    .line 1
    const-string/jumbo v0, "requestPendingAction sending bundle "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "requestPendingAction delayed, handler -> "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 9
    .line 10
    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 19
    .line 20
    const-string/jumbo v1, "requestPendingActions() called - No pending actions!"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 45
    .line 46
    const-wide/16 v3, 0x64

    .line 47
    .line 48
    if-eqz v2, :cond_7

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 59
    .line 60
    iget-object v5, v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    .line 91
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    iget-boolean v1, v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 105
    .line 106
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/util/Pair;

    .line 113
    .line 114
    const-string v2, "LocaleOverlayManagerWrapper"

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Landroid/os/Bundle;

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    const/4 v2, 0x1

    .line 140
    iput-boolean v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    invoke-static {v5, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 148
    .line 149
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v1, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 152
    .line 153
    iput-object v1, v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 154
    .line 155
    iget-object v1, v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 161
    .line 162
    if-nez v0, :cond_5

    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 165
    .line 166
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_6

    .line 173
    .line 174
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 179
    .line 180
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .line 182
    .line 183
    :cond_6
    monitor-exit p0

    .line 184
    return-void

    .line 185
    :cond_7
    :goto_0
    :try_start_3
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 186
    .line 187
    const-string/jumbo v1, "requestPendingAction delayed: Manager not alive"

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    .line 202
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .line 204
    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 207
    :goto_1
    monitor-exit p0

    .line 208
    throw v0
.end method

.method public final waitAndQuit()V
    .locals 4

    .line 1
    const-string v0, "LocaleOverlayManagerWrapper"

    .line 2
    .line 3
    const-string/jumbo v1, "waitAndQuit called"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v1, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsCleanupInProgress:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const-wide/32 v2, 0xea60

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-boolean v1, v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 74
    .line 75
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->quit()Z

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 100
    .line 101
    :cond_3
    :goto_0
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw v0
.end method
