.class public final Lcom/android/server/semclipboard/SemClipboardService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sService:Landroid/content/IClipboard;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field public final mClipboardEventListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public mEnableFormatId:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    const-string v0, "SemClipboardService"

    .line 12
    .line 13
    const-string v1, "SemClipboardService start"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Landroid/sec/clipboard/util/CompatabilityHelper;->migrationClipboard()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 28
    .line 29
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 38
    .line 39
    const-string v1, "clipboard"

    .line 40
    .line 41
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 48
    .line 49
    const-string v0, "appops"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/app/AppOpsManager;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x1

    .line 70
    const/4 v3, -0x1

    .line 71
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    .line 105
    .line 106
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    .line 118
    .line 119
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, v0, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "SemUriListClipData"

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_7

    .line 28
    .line 29
    const-string/jumbo v3, "startDoPDrag"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v3, "text/html"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData(Landroid/content/ClipData;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData(Landroid/content/ClipData;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_3
    const-string/jumbo v3, "text/vnd.android.intent"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData(Landroid/content/ClipData;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_4
    const-string/jumbo v3, "text/uri-list"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    return-object v0

    .line 132
    :cond_6
    :goto_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData(Landroid/content/ClipData;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_7
    :goto_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    :goto_2
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-ge v4, v2, :cond_8

    .line 163
    .line 164
    invoke-virtual {p0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData(Landroid/content/ClipData;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    :goto_3
    return-object v0
.end method

.method public static getService()Landroid/content/IClipboard;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "clipboard"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "SemClipboardService"

    .line 21
    .line 22
    const-string v1, "Original clipboard service is null!"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public final addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final checkUriOwner(ILandroid/net/Uri;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const-string v0, "content"

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p2, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move-object v2, p0

    .line 35
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    move v3, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_a

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v3, :cond_6

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    if-eq v1, v3, :cond_5

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    if-eq v1, v3, :cond_4

    .line 21
    .line 22
    const/16 v3, 0x10

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    const/16 p0, 0x20

    .line 27
    .line 28
    if-eq v1, p0, :cond_1

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Landroid/content/ClipData;

    .line 38
    .line 39
    const-string/jumbo v0, "text/uri-list"

    .line 40
    .line 41
    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Landroid/content/ClipData$Item;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/net/Uri;

    .line 54
    .line 55
    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "SemUriListClipData"

    .line 59
    .line 60
    invoke-direct {p1, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge v2, v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Landroid/content/ClipData$Item;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/net/Uri;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-object p1

    .line 87
    :cond_3
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getLabel()Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getLabel()Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getIntent()Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p0, p1}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_5
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getLabel()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_6
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Ljava/io/File;

    .line 149
    .line 150
    const-string v3, "/data/semclipboard"

    .line 151
    .line 152
    const-string/jumbo v4, "temp"

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_7

    .line 163
    .line 164
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4, v3, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-nez v3, :cond_8

    .line 173
    .line 174
    :cond_7
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-instance v4, Ljava/io/File;

    .line 179
    .line 180
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v1, 0x1fd

    .line 201
    .line 202
    const/4 v2, -0x1

    .line 203
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->insertContentUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string v0, "SemImageClipData"

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :cond_9
    return-object v0

    .line 233
    :cond_a
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getLabel()Ljava/lang/CharSequence;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getFilter()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v0, p1, v1, p2, p0}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p2, "getPrimarySemClip, Exception : "

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "SemClipboardService"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final grantUriPermission(ILandroid/net/Uri;)V
    .locals 10

    .line 1
    const-string v3, "com.samsung.android.honeyboard"

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    move v2, p1

    .line 41
    invoke-interface/range {v0 .. v7}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :catch_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v0, p1, v1, p2, p0}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p2, "hasPrimaryClip, Exception : "

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "SemClipboardService"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 2
    .line 3
    const-string p3, "SemClipboardService"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string p0, "ClipboardDataPasteEvent is null."

    .line 9
    .line 10
    invoke-static {p3, p0}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 21
    .line 22
    invoke-interface {p2, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "pasteClipData, Exception : "

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p3, p1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return v0
.end method

.method public final removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final setPrimaryClip(Landroid/content/ClipData;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "SemClipboardService"

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "copied from "

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->semGetUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_13

    .line 35
    .line 36
    const-string v3, "SemClipboardService"

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    const-string v0, "copy is requested but data is null"

    .line 41
    .line 42
    invoke-static {v3, v0}, Landroid/sec/clipboard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_10

    .line 46
    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x0

    .line 64
    move v7, v6

    .line 65
    :goto_0
    if-ge v7, v5, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    if-eqz v9, :cond_1

    .line 76
    .line 77
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v1, v4, v9}, Lcom/android/server/semclipboard/SemClipboardService;->checkUriOwner(ILandroid/net/Uri;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v8, :cond_2

    .line 89
    .line 90
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v1, v4, v8}, Lcom/android/server/semclipboard/SemClipboardService;->checkUriOwner(ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 101
    .line 102
    .line 103
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const-string v3, "direct_clip"

    .line 107
    .line 108
    const-string v4, "com.microsoft.appmanager"

    .line 109
    .line 110
    const-string v5, "android.content.extra.IS_SENSITIVE"

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-gtz v7, :cond_4

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v10}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 134
    .line 135
    .line 136
    move-result-wide v13

    .line 137
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    .line 138
    .line 139
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v9, "caller_app_uid"

    .line 143
    .line 144
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v15, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    const-string v8, "clip_label"

    .line 152
    .line 153
    if-eqz v11, :cond_5

    .line 154
    .line 155
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    goto/16 :goto_f

    .line 162
    .line 163
    :catch_0
    move-exception v0

    .line 164
    const/4 v3, 0x1

    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_5
    const/4 v9, 0x0

    .line 168
    :goto_1
    invoke-virtual {v15, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    if-eqz v12, :cond_6

    .line 172
    .line 173
    invoke-virtual {v12, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v15, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    move v4, v6

    .line 212
    :goto_2
    invoke-virtual {v10}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    .line 213
    .line 214
    .line 215
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    const-string v8, ","

    .line 217
    .line 218
    if-ge v4, v5, :cond_8

    .line 219
    .line 220
    if-eqz v4, :cond_7

    .line 221
    .line 222
    :try_start_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :cond_7
    invoke-virtual {v10, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    add-int/lit8 v4, v4, 0x1

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_8
    const-string v4, "clip_mimetypes"

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v15, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const-string v4, "clip_text"

    .line 249
    .line 250
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v5, :cond_9

    .line 255
    .line 256
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    goto :goto_3

    .line 265
    :cond_9
    const/4 v5, 0x0

    .line 266
    :goto_3
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v4, "clip_html"

    .line 270
    .line 271
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_a

    .line 283
    .line 284
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    goto :goto_4

    .line 293
    :cond_a
    const/4 v3, 0x0

    .line 294
    :goto_4
    if-eqz v3, :cond_b

    .line 295
    .line 296
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v1, v0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriPermission(ILandroid/net/Uri;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    const-string v0, "clip_uri"

    .line 304
    .line 305
    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string/jumbo v0, "startDoPDrag"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    const/4 v3, 0x1

    .line 316
    if-nez v0, :cond_c

    .line 317
    .line 318
    if-le v7, v3, :cond_f

    .line 319
    .line 320
    :cond_c
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    move v4, v6

    .line 326
    :goto_5
    if-ge v4, v7, :cond_e

    .line 327
    .line 328
    if-eqz v4, :cond_d

    .line 329
    .line 330
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :catch_1
    move-exception v0

    .line 335
    goto :goto_8

    .line 336
    :cond_d
    :goto_6
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    add-int/lit8 v4, v4, 0x1

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_e
    const-string v4, "clip_uri_list"

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v15, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_f
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-string v4, "content://com.samsung.android.honeyboard.provider.RichcontentProvider/clipboard"

    .line 370
    .line 371
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v0, v4, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    .line 377
    .line 378
    :goto_7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :goto_8
    :try_start_4
    const-string v4, "SemClipboardService"

    .line 383
    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v7, "Exception occurs in insertContentUri because "

    .line 390
    .line 391
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v4, v0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    if-eqz v0, :cond_10

    .line 418
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    const-string v2, "direct_clip"

    .line 428
    .line 429
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_10

    .line 434
    .line 435
    const/4 v8, 0x7

    .line 436
    goto :goto_a

    .line 437
    :cond_10
    move v8, v3

    .line 438
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 439
    .line 440
    .line 441
    move-result-wide v2

    .line 442
    :try_start_5
    iget-object v4, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 443
    .line 444
    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 445
    :try_start_6
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 446
    .line 447
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 448
    .line 449
    .line 450
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 451
    :goto_b
    if-ge v6, v0, :cond_12

    .line 452
    .line 453
    :try_start_7
    iget-object v5, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 454
    .line 455
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 460
    .line 461
    iget-object v7, v1, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 462
    .line 463
    iget v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    .line 464
    .line 465
    iget-object v5, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    .line 466
    .line 467
    const/16 v10, 0x1d

    .line 468
    .line 469
    invoke-virtual {v7, v10, v9, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    if-nez v5, :cond_11

    .line 474
    .line 475
    iget-object v5, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 476
    .line 477
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    check-cast v5, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 482
    .line 483
    const/4 v7, 0x0

    .line 484
    :try_start_8
    invoke-interface {v5, v8, v7}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 485
    .line 486
    .line 487
    goto :goto_d

    .line 488
    :catchall_1
    move-exception v0

    .line 489
    goto :goto_c

    .line 490
    :catch_2
    :cond_11
    const/4 v7, 0x0

    .line 491
    goto :goto_d

    .line 492
    :goto_c
    :try_start_9
    iget-object v1, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 493
    .line 494
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    .line 496
    .line 497
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    .line 499
    .line 500
    throw v0

    .line 501
    :catchall_2
    move-exception v0

    .line 502
    goto :goto_e

    .line 503
    :catch_3
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_12
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 507
    .line 508
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 509
    .line 510
    .line 511
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    .line 513
    .line 514
    monitor-exit v4

    .line 515
    goto :goto_10

    .line 516
    :goto_e
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 517
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 518
    :catch_4
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    .line 521
    .line 522
    goto :goto_10

    .line 523
    :goto_f
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    .line 525
    .line 526
    throw v0

    .line 527
    :catch_5
    move-exception v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    const-string v2, "clipData is invalid "

    .line 531
    .line 532
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v3, v0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    :cond_13
    :goto_10
    return-void
.end method

.method public final setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "SemClipboardService"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p2, p3}, Landroid/sec/clipboard/util/SemClipboardPolicy;->canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "setPrimarySemClip failed : isNotSemApp"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    move-object v3, p2

    .line 49
    move v5, p3

    .line 50
    invoke-interface/range {v1 .. v6}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo p2, "setPrimarySemClip, Exception : "

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    return-void
.end method

.method public final updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 8

    .line 1
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    :try_start_2
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 30
    .line 31
    iget v6, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v7, 0x1d

    .line 36
    .line 37
    invoke-virtual {v5, v7, v6, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    .line 50
    .line 51
    invoke-interface {v4, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_3
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    monitor-exit p2

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 82
    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_3
    return-void
.end method
