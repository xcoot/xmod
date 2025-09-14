.class public final Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field public static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;


# instance fields
.field public final mCache:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mUserCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.sec.android.app.sbrowser.browser/bookmarks"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 10
    const-string/jumbo v0, "content://com.android.partnerbookmarks/bookmarks"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 23
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    new-instance v2, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 32
    invoke-direct {v2, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 37
    const-string p1, "adminUid"

    .line 39
    const-string/jumbo v2, "proxyServer"

    .line 42
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    :try_start_0
    const-string v4, "BROWSER_PROXY"

    .line 48
    invoke-virtual {v1, v4, v0, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/ContentValues;

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 85
    move-result-wide v4

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_0
    const-wide/16 v4, 0x0

    .line 91
    :goto_1
    const/16 v1, 0x20

    .line 93
    ushr-long v6, v4, v1

    .line 95
    long-to-int v1, v6

    .line 96
    long-to-int v4, v4

    .line 97
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    move-result v5

    .line 101
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_1

    .line 113
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v7

    .line 119
    new-instance v8, Ljava/util/HashMap;

    .line 121
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Ljava/util/HashMap;

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Ljava/util/HashMap;

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v7

    .line 165
    new-instance v8, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 167
    invoke-direct {v8}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>()V

    .line 170
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Ljava/util/HashMap;

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 195
    if-eqz v3, :cond_3

    .line 197
    iput v4, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 199
    iput-object v3, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 201
    goto/16 :goto_0

    .line 203
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto/16 :goto_0

    .line 208
    :goto_2
    const-string p1, "BrowserPolicy"

    .line 210
    const-string/jumbo v0, "loadProxySettings() : failed"

    .line 213
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_4
    return-void
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    const-string/jumbo v0, "http://"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    move-result v1

    .line 8
    const-string/jumbo v2, "https://"

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const/4 v1, 0x7

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    const/16 v1, 0x8

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v3, 0x1

    .line 33
    :cond_1
    :goto_0
    const-string/jumbo v1, "www."

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 42
    const/4 v4, 0x4

    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    :cond_2
    const-string/jumbo v4, "url = "

    .line 50
    const-string v5, " OR url = "

    .line 52
    if-eqz v3, :cond_3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v2, "https://www."

    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 158
    move-object v0, v2

    .line 159
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v6, 0x0

    .line 165
    move-object v1, p0

    .line 166
    move-object v2, p2

    .line 167
    move-object v3, p3

    .line 168
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 171
    move-result-object p0

    .line 172
    return-object p0
.end method


# virtual methods
.method public final addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24

    .line 1
    move-object/from16 v1, p2

    .line 3
    move-object/from16 v2, p3

    .line 5
    const-string/jumbo v3, "url"

    .line 8
    const-string/jumbo v4, "title"

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 14
    move-result v0

    .line 15
    move-object/from16 v5, p0

    .line 17
    iget-object v5, v5, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 19
    const/4 v6, 0x0

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v7

    .line 24
    const-string v8, "android"

    .line 26
    invoke-static {v5, v8, v6, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    const-string v5, "BrowserPolicy"

    .line 32
    if-nez v0, :cond_0

    .line 34
    const-string v0, "addBookmark() - Could not create context for current user!"

    .line 36
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v6

    .line 40
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_13

    .line 46
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 52
    goto/16 :goto_18

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object v8

    .line 58
    const-string v9, "addBookmarkToChrome() - uri: "

    .line 60
    const-string v10, " updateBookmarks : insert bookmark items to db. Exception - "

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    move-result-wide v11

    .line 66
    const/4 v14, 0x0

    .line 67
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/browser/BrowserPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 69
    invoke-virtual {v8, v0, v14, v14, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 72
    move-result-object v16

    .line 73
    if-nez v16, :cond_2

    .line 75
    const-string v0, "addBookmarkToChrome cursor is null"

    .line 77
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    move-object/from16 v19, v7

    .line 85
    goto/16 :goto_5

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-wide/from16 v20, v11

    .line 90
    goto/16 :goto_17

    .line 92
    :catch_0
    move-object/from16 v19, v7

    .line 94
    move-wide/from16 v20, v11

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_2
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    .line 101
    move-result v6

    .line 102
    int-to-long v13, v6

    .line 103
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    const-wide/16 v17, 0x0

    .line 108
    cmp-long v6, v13, v17

    .line 110
    const-string/jumbo v15, "type"

    .line 113
    move-object/from16 v19, v7

    .line 115
    const-string/jumbo v7, "parent"

    .line 118
    move-wide/from16 v20, v11

    .line 120
    const-string v11, "_id"

    .line 122
    const-wide/16 v22, 0x1

    .line 124
    if-nez v6, :cond_3

    .line 126
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    .line 128
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 131
    add-long v13, v13, v22

    .line 133
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v12, "Samsung Mobile"

    .line 142
    invoke-virtual {v6, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    move-wide/from16 v17, v13

    .line 154
    const/4 v12, 0x2

    .line 155
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v6, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :try_start_3
    invoke-virtual {v8, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    goto :goto_0

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    goto/16 :goto_17

    .line 169
    :catch_1
    :try_start_4
    const-string v0, "Exception creating parent folder"

    .line 171
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    move-wide/from16 v13, v17

    .line 176
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    .line 178
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    add-long v13, v13, v22

    .line 183
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v0, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const/4 v6, 0x1

    .line 204
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v0, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    :try_start_5
    sget-object v6, Lcom/android/server/enterprise/browser/BrowserPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 213
    invoke-virtual {v8, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 216
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 217
    goto :goto_1

    .line 218
    :catch_2
    move-exception v0

    .line 219
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .line 239
    :goto_1
    if-eqz v0, :cond_4

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x1

    .line 261
    goto :goto_2

    .line 262
    :cond_4
    const-string v0, "addBookmarkToChrome() - uri is null!"

    .line 264
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 267
    const/4 v0, 0x0

    .line 268
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    goto :goto_4

    .line 272
    :catch_3
    :goto_3
    :try_start_7
    const-string v0, "Chrome provider error - unknown uri"

    .line 274
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 277
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    const/4 v0, 0x0

    .line 281
    :goto_4
    move v6, v0

    .line 282
    :goto_5
    const-string v0, "addBookmarkToSBrowser() - uri: "

    .line 284
    new-instance v7, Landroid/content/ContentValues;

    .line 286
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 292
    move-result-wide v9

    .line 293
    :try_start_8
    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v7, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v11, "editable"

    .line 302
    const/4 v12, 0x1

    .line 303
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v13

    .line 307
    invoke-virtual {v7, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    sget-object v11, Lcom/android/server/enterprise/browser/BrowserPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 312
    invoke-virtual {v8, v11, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 315
    move-result-object v7

    .line 316
    if-eqz v7, :cond_5

    .line 318
    new-instance v11, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v0

    .line 334
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x1

    .line 338
    goto :goto_6

    .line 339
    :catchall_2
    move-exception v0

    .line 340
    goto/16 :goto_16

    .line 342
    :cond_5
    const-string v0, "addBookmarkToSBrowser() - uri is null!"

    .line 344
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 347
    const/4 v0, 0x0

    .line 348
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    goto :goto_7

    .line 352
    :catch_4
    :try_start_9
    const-string v0, "Sbrowser provider error - unknown uri"

    .line 354
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 357
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    const/4 v0, 0x0

    .line 361
    :goto_7
    if-nez v0, :cond_12

    .line 363
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 365
    new-instance v7, Ljava/util/Date;

    .line 367
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 370
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 373
    move-result-wide v9

    .line 374
    new-instance v7, Landroid/content/ContentValues;

    .line 376
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 382
    move-result-wide v11

    .line 383
    :try_start_a
    sget-object v13, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 385
    invoke-static {v8, v1, v0, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 388
    move-result-object v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 389
    if-nez v13, :cond_7

    .line 391
    :try_start_b
    const-string v0, "addBookmarkToAndroidBrowser() - No provider found!!!"

    .line 393
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 396
    if-eqz v13, :cond_6

    .line 398
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    move/from16 v17, v6

    .line 406
    :goto_8
    const/4 v6, 0x0

    .line 407
    goto/16 :goto_12

    .line 409
    :catchall_3
    move-exception v0

    .line 410
    move-object v14, v13

    .line 411
    goto/16 :goto_15

    .line 413
    :catch_5
    move-exception v0

    .line 414
    move/from16 v17, v6

    .line 416
    :goto_9
    move-object v14, v13

    .line 417
    goto/16 :goto_f

    .line 419
    :catch_6
    move/from16 v17, v6

    .line 421
    :catch_7
    move-object v14, v13

    .line 422
    goto/16 :goto_11

    .line 424
    :cond_7
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    .line 427
    move-result v14

    .line 428
    const/4 v15, 0x0

    .line 429
    :goto_a
    if-ge v15, v14, :cond_9

    .line 431
    invoke-interface {v13, v15}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 434
    move/from16 v17, v6

    .line 436
    const/4 v6, 0x5

    .line 437
    :try_start_d
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 440
    move-result-object v6

    .line 441
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_8

    .line 447
    goto :goto_b

    .line 448
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 450
    move/from16 v6, v17

    .line 452
    goto :goto_a

    .line 453
    :catch_8
    move-exception v0

    .line 454
    goto :goto_9

    .line 455
    :cond_9
    move/from16 v17, v6

    .line 457
    :goto_b
    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v7, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v1, "created"

    .line 466
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    const-string/jumbo v1, "bookmark"

    .line 476
    const/4 v2, 0x1

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v7, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const-string/jumbo v1, "date"

    .line 487
    move-object/from16 v2, v19

    .line 489
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 494
    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_a

    .line 500
    const-string/jumbo v1, "thumbnail"

    .line 503
    const/4 v3, 0x0

    .line 504
    invoke-virtual {v7, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 507
    :cond_a
    if-lez v14, :cond_b

    .line 509
    const/4 v1, 0x2

    .line 510
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 513
    move-result v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 514
    goto :goto_c

    .line 515
    :cond_b
    const/4 v1, 0x0

    .line 516
    :goto_c
    const-string/jumbo v3, "visits"

    .line 519
    if-nez v14, :cond_c

    .line 521
    add-int/lit8 v1, v1, 0x3

    .line 523
    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v7, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    goto :goto_d

    .line 531
    :cond_c
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    :goto_d
    const-string v1, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    .line 536
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v8, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 542
    move-result-object v0

    .line 543
    if-eqz v0, :cond_d

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    .line 547
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    const-string v2, "addBookmarkToAndroidBrowser() - uri: "

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object v0

    .line 566
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v6, 0x1

    .line 570
    goto :goto_e

    .line 571
    :cond_d
    const-string v0, "addBookmarkToAndroidBrowser() - uri is null!"

    .line 573
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 576
    const/4 v6, 0x0

    .line 577
    :goto_e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 580
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    goto :goto_12

    .line 584
    :catchall_4
    move-exception v0

    .line 585
    const/4 v3, 0x0

    .line 586
    move-object v14, v3

    .line 587
    goto :goto_15

    .line 588
    :catch_9
    move-exception v0

    .line 589
    move/from16 v17, v6

    .line 591
    const/4 v3, 0x0

    .line 592
    move-object v14, v3

    .line 593
    goto :goto_f

    .line 594
    :catch_a
    move/from16 v17, v6

    .line 596
    const/4 v3, 0x0

    .line 597
    move-object v14, v3

    .line 598
    goto :goto_11

    .line 599
    :goto_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    const-string v2, "Android provider error: "

    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    move-result-object v0

    .line 620
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 623
    if-eqz v14, :cond_e

    .line 625
    :goto_10
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    goto/16 :goto_8

    .line 633
    :catchall_5
    move-exception v0

    .line 634
    goto :goto_15

    .line 635
    :goto_11
    :try_start_10
    const-string v0, "Android provider error - unknown uri"

    .line 637
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 640
    if-eqz v14, :cond_e

    .line 642
    goto :goto_10

    .line 643
    :goto_12
    if-nez v6, :cond_10

    .line 645
    if-eqz v17, :cond_f

    .line 647
    goto :goto_13

    .line 648
    :cond_f
    const/4 v6, 0x0

    .line 649
    goto :goto_14

    .line 650
    :cond_10
    :goto_13
    const/4 v6, 0x1

    .line 651
    :goto_14
    return v6

    .line 652
    :goto_15
    if-eqz v14, :cond_11

    .line 654
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_11
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw v0

    .line 661
    :cond_12
    const/4 v1, 0x1

    .line 662
    return v1

    .line 663
    :goto_16
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    throw v0

    .line 667
    :goto_17
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v0

    .line 671
    :cond_13
    :goto_18
    const-string v0, "addBookmark() - uri or title cannot be empty"

    .line 673
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v1, 0x0

    .line 677
    return v1
.end method

.method public final addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_1

    .line 7
    if-nez p3, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_1

    .line 7
    if-nez p3, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 29
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    const-string v3, "BrowserPolicy"

    .line 45
    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/util/HashMap;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/util/HashMap;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 91
    iget v2, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 93
    if-ne v2, v0, :cond_2

    .line 95
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    const-string v4, "BROWSER_PROXY"

    .line 99
    invoke-virtual {v2, v0, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 105
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/util/HashMap;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 127
    iget v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 129
    const/4 v5, -0x1

    .line 130
    if-eq v4, v5, :cond_0

    .line 132
    iput v5, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 134
    const/4 v4, 0x0

    .line 135
    iput-object v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/util/HashMap;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Ljava/util/HashMap;

    .line 168
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 185
    const-string p1, "BrowserPolicy/getHttpProxy"

    .line 187
    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    const-string/jumbo p0, "clearHttpProxy() : SecContentProvider updated."

    .line 193
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    .line 198
    :cond_3
    :goto_0
    const-string/jumbo p0, "clearHttpProxy() : "

    .line 201
    invoke-static {p0, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    return v0
.end method

.method public final deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    const-string/jumbo v4, "url = ? AND title = ?"

    .line 18
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 21
    move-result v1

    .line 22
    move-object/from16 v5, p0

    .line 24
    iget-object v5, v5, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 26
    const-string v6, "android"

    .line 28
    invoke-static {v5, v6, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    const-string v5, "BrowserPolicy"

    .line 34
    if-nez v1, :cond_1

    .line 36
    const-string/jumbo v0, "removeFromBookmarks() - Could not create context for current user!"

    .line 39
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto/16 :goto_e

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v6, "removeBookmarkFromChrome() - rows: "

    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    move-result-wide v7

    .line 55
    :try_start_0
    sget-object v9, Lcom/android/server/enterprise/browser/BrowserPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 57
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v1, v9, v4, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    move-result v10

    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez v10, :cond_2

    .line 82
    const-string/jumbo v6, "url = ?"

    .line 85
    filled-new-array {v3}, [Ljava/lang/String;

    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v1, v9, v6, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto/16 :goto_10

    .line 97
    :cond_2
    :goto_0
    if-lez v10, :cond_3

    .line 99
    const/4 v6, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v6, v2

    .line 102
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    move v13, v6

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    :try_start_1
    const-string v6, "Chrome provider error - unknown uri"

    .line 109
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    move v13, v2

    .line 116
    :goto_2
    const-string/jumbo v6, "removeBookmarkFromSBrowser() - rows: "

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    move-result-wide v7

    .line 123
    :try_start_2
    sget-object v9, Lcom/android/server/enterprise/browser/BrowserPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 125
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v1, v9, v4, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    move-result v4

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 145
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    if-lez v4, :cond_4

    .line 150
    const/4 v4, 0x1

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    move v4, v2

    .line 153
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    goto :goto_4

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    goto/16 :goto_f

    .line 160
    :catch_1
    :try_start_3
    const-string v4, "Sbrowser provider error - unknown uri"

    .line 162
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    move v4, v2

    .line 169
    :goto_4
    if-nez v4, :cond_a

    .line 171
    const-string v4, "Android provider error: "

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 176
    move-result-wide v14

    .line 177
    const/4 v11, 0x0

    .line 178
    :try_start_4
    sget-object v10, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 180
    sget-object v8, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 182
    const-string/jumbo v9, "url = ? AND title = ?"

    .line 185
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 188
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 189
    const/4 v3, 0x0

    .line 190
    move-object v6, v1

    .line 191
    move-object v7, v10

    .line 192
    move-object v12, v10

    .line 193
    move-object v10, v0

    .line 194
    move-object v11, v3

    .line 195
    :try_start_5
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 198
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 199
    if-nez v11, :cond_6

    .line 201
    :try_start_6
    const-string/jumbo v0, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    .line 204
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 207
    if-eqz v11, :cond_5

    .line 209
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_5
    :goto_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    move v0, v2

    .line 216
    goto/16 :goto_b

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    goto/16 :goto_c

    .line 221
    :catch_2
    move-exception v0

    .line 222
    goto/16 :goto_8

    .line 224
    :cond_6
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_7

    .line 230
    const-string/jumbo v0, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    .line 233
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto :goto_5

    .line 237
    :cond_7
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 240
    move-result v0

    .line 241
    int-to-long v6, v0

    .line 242
    invoke-static {v12, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 245
    move-result-object v0

    .line 246
    const/4 v3, 0x2

    .line 247
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_8

    .line 253
    if-eqz v0, :cond_8

    .line 255
    const-string/jumbo v3, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    .line 258
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    goto :goto_7

    .line 266
    :cond_8
    const/4 v3, 0x0

    .line 267
    new-instance v6, Landroid/content/ContentValues;

    .line 269
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 272
    const-string/jumbo v7, "bookmark"

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 282
    :try_start_8
    const-string/jumbo v7, "removeBookmarkFromAndroidBrowser() - Updating database"

    .line 285
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v1, v0, v6, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 291
    goto :goto_7

    .line 292
    :catch_3
    :try_start_9
    const-string/jumbo v0, "removeFromBookmarks"

    .line 295
    const-string/jumbo v1, "no database!"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 301
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 304
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_b

    .line 309
    :catchall_3
    move-exception v0

    .line 310
    const/4 v3, 0x0

    .line 311
    move-object v11, v3

    .line 312
    goto :goto_c

    .line 313
    :catch_4
    move-exception v0

    .line 314
    const/4 v3, 0x0

    .line 315
    move-object v11, v3

    .line 316
    goto :goto_8

    .line 317
    :catch_5
    const/4 v3, 0x0

    .line 318
    move-object v11, v3

    .line 319
    goto :goto_a

    .line 320
    :catchall_4
    move-exception v0

    .line 321
    move-object v3, v11

    .line 322
    goto :goto_c

    .line 323
    :catch_6
    move-exception v0

    .line 324
    move-object v3, v11

    .line 325
    goto :goto_8

    .line 326
    :catch_7
    move-object v3, v11

    .line 327
    goto :goto_a

    .line 328
    :goto_8
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 347
    if-eqz v11, :cond_5

    .line 349
    :goto_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 352
    goto/16 :goto_6

    .line 354
    :catch_8
    :goto_a
    :try_start_b
    const-string v0, "Android provider error - unknown uri"

    .line 356
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 359
    if-eqz v11, :cond_5

    .line 361
    goto :goto_9

    .line 362
    :goto_b
    if-nez v0, :cond_a

    .line 364
    if-eqz v13, :cond_b

    .line 366
    goto :goto_d

    .line 367
    :goto_c
    if-eqz v11, :cond_9

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    throw v0

    .line 376
    :cond_a
    :goto_d
    const/4 v2, 0x1

    .line 377
    :cond_b
    :goto_e
    return v2

    .line 378
    :goto_f
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    throw v0

    .line 382
    :goto_10
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 19
    const-string/jumbo p1, "browserSettings"

    .line 22
    filled-new-array {p1}, [Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 p3, 0x0

    .line 27
    const-string v0, "BROWSER"

    .line 29
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public final enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5

    .line 1
    const-string v0, "BrowserPolicy"

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    const-string v2, "BROWSER"

    .line 12
    const-string/jumbo v3, "browserSettings"

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v4, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    if-ltz p1, :cond_0

    .line 48
    and-int/2addr p1, p2

    .line 49
    if-eq p2, p1, :cond_0

    .line 51
    move v1, v4

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string/jumbo p0, "getBrowserSettingStatus() : No Policy in BrowserPolicy."

    .line 58
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :goto_0
    const-string/jumbo p1, "getBrowserSettingStatus() : failed. "

    .line 65
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo p1, "getBrowserSettingStatus("

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string p1, ") : "

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1
.end method

.method public final getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/HashMap;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Ljava/util/HashMap;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 63
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p0, 0x0

    .line 67
    :goto_0
    const-string/jumbo p1, "getHttpProxy() : "

    .line 70
    const-string v0, "BrowserPolicy"

    .line 72
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public final getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v1

    .line 7
    if-eqz p2, :cond_0

    .line 9
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 11
    const/4 p2, -0x1

    .line 12
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 18
    move-result-object p2

    .line 19
    iget-boolean v0, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 21
    if-nez v0, :cond_1

    .line 23
    const-string/jumbo v0, "filtering"

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 35
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 38
    :cond_1
    iget-boolean p0, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 40
    return p0
.end method

.method public final getURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getURLFilterList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    const-string v1, "BrowserPolicy"

    .line 7
    const-string/jumbo v2, "getURLFilterList => userId "

    .line 10
    const-string v3, " callerUid "

    .line 12
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v2

    .line 16
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, " allAdmins "

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p2, v1, :cond_2

    .line 43
    iget-object p2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 45
    monitor-enter p2

    .line 46
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 48
    if-nez v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_1

    .line 56
    move-object p1, p0

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 65
    const-string p1, "BrowserPolicy"

    .line 67
    const-string/jumbo v2, "getUrlBlackList - synchronized"

    .line 70
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object p1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 82
    check-cast p1, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    iput-boolean v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    iget-object p0, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 94
    :cond_1
    :goto_0
    monitor-exit p2

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_2
    const/4 p2, 0x0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 102
    move-result-object p0

    .line 103
    :goto_2
    return-object p0
.end method

.method public final getURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "BrowserPolicy"

    .line 3
    const-string/jumbo v1, "getURLFilterReport()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string/jumbo v0, "url"

    .line 12
    const-string/jumbo v1, "time"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 27
    move-result p1

    .line 28
    const-string/jumbo v4, "containerID"

    .line 31
    const-string/jumbo v5, "userID"

    .line 34
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    filled-new-array {v5, p1}, [Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    const-string v5, "WebFilterLogTable"

    .line 55
    invoke-virtual {p0, v5, v4, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p0

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/content/ContentValues;

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    if-eqz v2, :cond_0

    .line 85
    if-eqz p1, :cond_0

    .line 87
    const-string v4, ":"

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    return-object v3
.end method

.method public final getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 11
    if-nez v2, :cond_0

    .line 13
    const-string/jumbo v2, "logging"

    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    iput-boolean p1, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "cache.mUrlFilterReportState=> "

    .line 30
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-boolean v2, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 35
    const-string v3, "WebFilteringCache"

    .line 37
    invoke-static {v3, p1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 43
    :cond_0
    iget-boolean p0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 45
    return p0
.end method

.method public final getURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getURLFilterReportEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getURLFilterReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .locals 7

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    const-string/jumbo v2, "url"

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const-string/jumbo v5, "getUrlBlackList - uid "

    .line 20
    const-string v6, "BrowserPolicy"

    .line 22
    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v5, "WebFilterTable"

    .line 27
    if-nez p2, :cond_3

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    invoke-virtual {p0, v0, v1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object p0

    .line 35
    const/4 p1, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 38
    const-string/jumbo p0, "getUrlBlackList - Cursor is null"

    .line 41
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object p1

    .line 45
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 51
    :cond_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 54
    move-result p2

    .line 55
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez p2, :cond_1

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 76
    goto :goto_4

    .line 77
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v0, "Exception occurred accessing Enterprise db "

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_0

    .line 102
    :catch_1
    const-string/jumbo p2, "getUrlBlackList - IllegalArgumentException"

    .line 105
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 111
    return-object p1

    .line 112
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 115
    throw p1

    .line 116
    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 119
    move-result p1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "Getting URLList called by server for user "

    .line 124
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p2, Ljava/util/ArrayList;

    .line 139
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 144
    invoke-virtual {p0, v1, p1, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p0

    .line 154
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_4

    .line 160
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/content/ContentValues;

    .line 166
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    :goto_4
    return-object v4
.end method

.method public final getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    filled-new-array {p2}, [Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v2, "getUrlFilterState - uid:"

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " containerId:"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " column:"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "BrowserPolicy"

    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 48
    move-result v1

    .line 49
    const-string/jumbo v3, "getUrlFilterState - userId: "

    .line 52
    invoke-static {v1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 59
    const-string v3, "WebFilterSettingsTable"

    .line 61
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p0

    .line 71
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/content/ContentValues;

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_0

    .line 89
    const-string/jumbo v0, "true"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_0

    .line 98
    const/4 p0, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 p0, 0x0

    .line 101
    :goto_0
    const-string/jumbo p1, "getUrlFilterState - ret: "

    .line 104
    invoke-static {p1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    return p0
.end method

.method public final getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 16
    const/4 v0, 0x2

    .line 17
    new-array v2, v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 19
    move v3, v1

    .line 20
    :goto_0
    if-ge v3, v0, :cond_0

    .line 22
    new-instance v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 24
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v5, 0x0

    .line 28
    iput-object v5, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 30
    iput-boolean v1, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 32
    iput-boolean v1, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 34
    iput-boolean v1, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 36
    iput-boolean v1, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 38
    iput-boolean v1, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v5, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 47
    aput-object v4, v2, v3

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object v0, v2

    .line 62
    :cond_1
    aget-object p0, v0, v1

    .line 64
    return-object p0
.end method

.method public final isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "BrowserPolicy"

    .line 9
    if-nez v1, :cond_0

    .line 11
    const-string/jumbo p0, "isUrlBlocked - Policy disabled"

    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v5, "urlBlacklist: "

    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz v1, :cond_a

    .line 42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_a

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v1

    .line 52
    move v4, v2

    .line 53
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_9

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 65
    const-string v6, "*"

    .line 67
    const-string v7, ".*"

    .line 69
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    const-string v7, "/"

    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_2

    .line 89
    invoke-static {v0, v2, v5}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_3

    .line 99
    invoke-static {v0, v2, v6}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 103
    :cond_3
    const-string/jumbo v8, "http://"

    .line 106
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    move-result v9

    .line 110
    const/16 v10, 0x8

    .line 112
    const-string/jumbo v11, "https://"

    .line 115
    const/4 v12, 0x7

    .line 116
    if-eqz v9, :cond_4

    .line 118
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_5

    .line 129
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    move-result-object v6

    .line 133
    :cond_5
    :goto_0
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_6

    .line 139
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_7

    .line 150
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 153
    move-result-object v5

    .line 154
    :cond_7
    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_8

    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_8

    .line 174
    const/16 v7, 0x2f

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 179
    move-result v7

    .line 180
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 191
    move-result v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_2

    .line 193
    :catch_0
    const-string/jumbo v5, "isUrlBlocked - Regex is not valid"

    .line 196
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_8
    :goto_2
    if-ne v4, v0, :cond_1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_9

    .line 207
    const-string/jumbo v0, "saveURLBlockedReport"

    .line 210
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 216
    move-result-object v0

    .line 217
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 220
    move-result p1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v5, "saveURLBlockedReport > userId = "

    .line 226
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v1

    .line 236
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 242
    move-result-wide v0

    .line 243
    const-string/jumbo v5, "url"

    .line 246
    invoke-static {v5, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 249
    move-result-object p2

    .line 250
    const-string/jumbo v5, "time"

    .line 253
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v0

    .line 264
    const-string/jumbo v1, "containerID"

    .line 267
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    move-result-object p1

    .line 274
    const-string/jumbo v0, "userID"

    .line 277
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 282
    const-string p1, "WebFilterLogTable"

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 287
    move-result p0

    .line 288
    if-nez p0, :cond_9

    .line 290
    const-string/jumbo p0, "isUrlBlocked - Failed on inserting log"

    .line 293
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_9
    move v2, v4

    .line 297
    :cond_a
    const-string/jumbo p0, "isUrlBlocked: "

    .line 300
    invoke-static {p0, v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    return v2
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/HashMap;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 62
    iget v1, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 64
    if-ne v1, p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/util/HashMap;

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 88
    iget v1, p1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 90
    const/4 v3, -0x1

    .line 91
    if-eq v1, v3, :cond_0

    .line 93
    iput v3, p1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 95
    const/4 v1, 0x0

    .line 96
    iput-object v1, p1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/util/HashMap;

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/util/HashMap;

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_1

    .line 135
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    iget p1, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 24
    iput-boolean v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 30
    return-void
.end method

.method public final refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v1, 0x0

    .line 40
    aput-object p1, v0, v1

    .line 42
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    return-void
.end method

.method public final setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p2

    .line 5
    move/from16 v3, p3

    .line 7
    const-string v4, "BrowserPolicy"

    .line 9
    const-string/jumbo v5, "setBrowserSettingStatus("

    .line 12
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    move-result-object v0

    .line 16
    iget v12, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result v15

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v13

    .line 26
    const/4 v11, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    const-string v6, "BROWSER"

    .line 32
    const-string/jumbo v7, "browserSettings"

    .line 35
    invoke-virtual {v0, v12, v10, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto/16 :goto_8

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v7, ") : EdmStorageProvider failed to read Data. "

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/16 v0, 0x1f

    .line 66
    :goto_0
    if-ne v11, v2, :cond_0

    .line 68
    or-int/2addr v0, v3

    .line 69
    :goto_1
    move v9, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    not-int v6, v3

    .line 72
    and-int/2addr v0, v6

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    iget-object v6, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    const-string v0, "BROWSER"

    .line 78
    const-string/jumbo v16, "browserSettings"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    const/4 v8, 0x0

    .line 82
    move v7, v12

    .line 83
    move/from16 v17, v10

    .line 85
    move-object v10, v0

    .line 86
    move/from16 v18, v12

    .line 88
    move v12, v11

    .line 89
    move-object/from16 v11, v16

    .line 91
    :try_start_2
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 94
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    goto :goto_4

    .line 99
    :catch_1
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_2
    move-exception v0

    .line 102
    move/from16 v17, v10

    .line 104
    move/from16 v18, v12

    .line 106
    move v12, v11

    .line 107
    :goto_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, ") : failed. "

    .line 117
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    move/from16 v10, v17

    .line 132
    :goto_4
    const-string/jumbo v0, "setBrowserSettingStatus() : = "

    .line 135
    const-string v5, ", enable = "

    .line 137
    const-string v6, ",  setting = "

    .line 139
    invoke-static {v0, v10, v5, v2, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 146
    if-eqz v10, :cond_6

    .line 148
    if-eq v3, v12, :cond_5

    .line 150
    const/4 v0, 0x2

    .line 151
    if-eq v3, v0, :cond_4

    .line 153
    const/4 v0, 0x4

    .line 154
    if-eq v3, v0, :cond_2

    .line 156
    const/16 v0, 0x10

    .line 158
    if-eq v3, v0, :cond_1

    .line 160
    goto :goto_7

    .line 161
    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 163
    const-string v1, "BrowserPolicy/getJavaScriptSetting"

    .line 165
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 168
    goto :goto_7

    .line 169
    :cond_2
    iget-object v0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 171
    const-string v1, "BrowserPolicy/getAutoFillSetting"

    .line 173
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 179
    move-result-wide v5

    .line 180
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 183
    move-result v16

    .line 184
    const-string v17, "BrowserPolicy"

    .line 186
    if-eqz v2, :cond_3

    .line 188
    const-string v0, "Admin %d has enabled Auto Fill Setting"

    .line 190
    goto :goto_5

    .line 191
    :catchall_1
    move-exception v0

    .line 192
    goto :goto_6

    .line 193
    :cond_3
    const-string v0, "Admin %d has disabled Auto Fill Setting"

    .line 195
    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v1

    .line 199
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v18

    .line 207
    const/4 v13, 0x5

    .line 208
    const/4 v14, 0x1

    .line 209
    const/4 v0, 0x1

    .line 210
    move v2, v15

    .line 211
    move v15, v0

    .line 212
    move/from16 v19, v2

    .line 214
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    goto :goto_7

    .line 221
    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v0

    .line 225
    :cond_4
    move v2, v15

    .line 226
    iget-object v0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 228
    const-string v1, "BrowserPolicy/getCookiesSetting"

    .line 230
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 233
    goto :goto_7

    .line 234
    :cond_5
    move v2, v15

    .line 235
    iget-object v0, v1, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 237
    const-string v1, "BrowserPolicy/getPopupsSetting"

    .line 239
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    :goto_7
    const-string/jumbo v0, "setBrowserSettingStatus() : SecContentProvider updated."

    .line 245
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_6
    return v10

    .line 249
    :goto_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    throw v0
.end method

.method public final setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "BrowserPolicy"

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM$3()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 12
    filled-new-array {v3}, [Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    move-result-object p1

    .line 27
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 31
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez p2, :cond_0

    .line 38
    return v3

    .line 39
    :cond_0
    const-string v4, ":"

    .line 41
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    aget-object v5, v4, v3

    .line 53
    const/4 v6, 0x1

    .line 54
    aget-object v4, v4, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v4, "80"

    .line 59
    move-object v5, p2

    .line 60
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_c

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 72
    goto/16 :goto_6

    .line 74
    :cond_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    if-lez v4, :cond_c

    .line 80
    const v6, 0xffff

    .line 83
    if-le v4, v6, :cond_3

    .line 85
    goto/16 :goto_6

    .line 87
    :cond_3
    const-string v4, "^$|^[a-zA-Z0-9\\_]+(\\-[a-zA-Z0-9\\_]+)*(\\.[a-zA-Z0-9\\_]+(\\-[a-zA-Z0-9\\_]+)*)*$"

    .line 89
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_4

    .line 103
    goto/16 :goto_6

    .line 105
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 115
    return v3

    .line 116
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_6

    .line 128
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v6

    .line 134
    new-instance v7, Ljava/util/HashMap;

    .line 136
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/util/HashMap;

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_7

    .line 164
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Ljava/util/HashMap;

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v6

    .line 180
    new-instance v7, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 182
    invoke-direct {v7}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>()V

    .line 185
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Ljava/util/HashMap;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 210
    iget v6, v5, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 212
    const/4 v7, -0x1

    .line 213
    if-eq v6, v7, :cond_9

    .line 215
    if-ne v6, v1, :cond_8

    .line 217
    goto :goto_1

    .line 218
    :cond_8
    move p1, v3

    .line 219
    goto :goto_2

    .line 220
    :cond_9
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    .line 222
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 225
    const-string/jumbo v7, "proxyServer"

    .line 228
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 233
    const-string v8, "BROWSER_PROXY"

    .line 235
    invoke-virtual {v7, v1, p1, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_a

    .line 241
    iput v1, v5, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 243
    iput-object v4, v5, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 245
    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    .line 247
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 249
    const-string v1, "BrowserPolicy/getHttpProxy"

    .line 251
    invoke-static {p0, v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 254
    const-string/jumbo p0, "setHttpProxy() : SecContentProvider updated."

    .line 257
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    goto :goto_3

    .line 261
    :catch_0
    move-exception p0

    .line 262
    goto :goto_4

    .line 263
    :cond_b
    :goto_3
    move v3, p1

    .line 264
    goto :goto_5

    .line 265
    :goto_4
    const-string/jumbo p1, "setHttpProxy() : failed."

    .line 268
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo p1, "setHttpProxy("

    .line 276
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string p1, ") : "

    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p0

    .line 294
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :catch_1
    :cond_c
    :goto_6
    return v3
.end method

.method public final setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 6

    .line 1
    const-string v0, "BrowserPolicy"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "setURLFilterEnabled("

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ")"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 33
    move-result p1

    .line 34
    new-instance v2, Landroid/content/ContentValues;

    .line 36
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string/jumbo v3, "filtering"

    .line 42
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    const-string v4, "WebFilterSettingsTable"

    .line 53
    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 56
    move-result v0

    .line 57
    const/4 v2, 0x1

    .line 58
    if-ne v0, v2, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 63
    move-result-object v2

    .line 64
    iget-object v3, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 66
    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 69
    check-cast v4, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 74
    const/4 v4, 0x0

    .line 75
    iput-boolean v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 77
    iput-boolean v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 79
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 82
    if-nez p2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    const-string v5, "WebFilterTable"

    .line 88
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 97
    const-string v1, "FirewallPolicy/getURLFilterEnabled"

    .line 99
    invoke-static {p0, v1, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    goto :goto_2

    .line 103
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_1
    :goto_2
    const-string p0, "BrowserPolicy"

    .line 107
    const-string/jumbo p1, "setURLFilterEnabled : "

    .line 110
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    return v0
.end method

.method public final setURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 9

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p2

    .line 17
    new-instance v3, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string v5, "WebFilterTable"

    .line 26
    invoke-virtual {v4, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v4, :cond_2

    .line 36
    invoke-static {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    const-string v7, "adminUid"

    .line 46
    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 55
    const-string/jumbo v7, "url"

    .line 58
    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v7, "saveUrlBlackList - cv: "

    .line 66
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    const-string v7, "BrowserPolicy"

    .line 78
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_1

    .line 89
    move p2, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move p2, v6

    .line 96
    :goto_1
    if-ne p2, v6, :cond_3

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 101
    move-result-object v0

    .line 102
    iget-object v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 104
    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 107
    check-cast v3, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 112
    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 120
    const-string v0, "FirewallPolicy/getURLFilterList"

    .line 122
    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_2
    return p2
.end method

.method public final setURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 6

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v2

    .line 9
    new-instance v3, Landroid/content/ContentValues;

    .line 11
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 14
    const-string/jumbo v4, "logging"

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    const-string v5, "WebFilterSettingsTable"

    .line 28
    invoke-virtual {v4, v1, v0, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    const-string v3, "BrowserPolicy"

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ne v0, v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v5, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    .line 43
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 59
    move-result-object v1

    .line 60
    iput-boolean v4, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 62
    iput-boolean v4, v1, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 67
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 69
    const-string v5, "FirewallPolicy/getURLFilterReportEnabled"

    .line 71
    invoke-static {v1, v5, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 77
    move-result p1

    .line 78
    if-eqz p2, :cond_1

    .line 80
    if-nez p1, :cond_2

    .line 82
    :cond_1
    const-string/jumbo p1, "setURLFilterReportEnabled - Clean url report"

    .line 85
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo p1, "containerID"

    .line 91
    const-string/jumbo p2, "userID"

    .line 94
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    move-result-object p2

    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    filled-new-array {p2, v1}, [Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 112
    const-string v1, "WebFilterLogTable"

    .line 114
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 117
    :cond_2
    const-string/jumbo p0, "setURLFilterReportEnabled - return = "

    .line 120
    invoke-static {p0, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    return v0
.end method

.method public final setURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
