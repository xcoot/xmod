.class public final Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    const-string/jumbo v0, "true"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const v4, 0x117000a

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    const-string/jumbo v4, "webviewproviders"

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-nez v6, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 46
    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Landroid/webkit/WebViewProviderInfo;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 66
    .line 67
    const-string v0, "There must be at least one WebView package that is available by default"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    :try_start_2
    const-string/jumbo v7, "webviewprovider"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_8

    .line 81
    .line 82
    const-string/jumbo v6, "packageName"

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    const-string v6, "description"

    .line 92
    .line 93
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-eqz v9, :cond_6

    .line 98
    .line 99
    const-string v6, "availableByDefault"

    .line 100
    .line 101
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    const-string v6, "isFallback"

    .line 110
    .line 111
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    new-instance v6, Landroid/webkit/WebViewProviderInfo;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    move-object v7, v6

    .line 126
    invoke-direct/range {v7 .. v12}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 130
    .line 131
    if-eqz v7, :cond_4

    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 136
    .line 137
    if-eqz v7, :cond_3

    .line 138
    .line 139
    const/4 v7, 0x1

    .line 140
    if-gt v5, v7, :cond_2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 144
    .line 145
    const-string v0, "There can be at most one WebView fallback package."

    .line 146
    .line 147
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    move-object v2, v3

    .line 153
    goto :goto_3

    .line 154
    :catch_0
    move-exception p0

    .line 155
    move-object v2, v3

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 158
    .line 159
    const-string v0, "Each WebView fallback package must be available by default."

    .line 160
    .line 161
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_4
    :goto_1
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 166
    .line 167
    if-eqz v7, :cond_5

    .line 168
    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    :cond_5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 177
    .line 178
    const-string v0, "WebView provider in framework resources missing description"

    .line 179
    .line 180
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_7
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 185
    .line 186
    const-string v0, "WebView provider in framework resources missing package name"

    .line 187
    .line 188
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :cond_8
    const-string v6, "SystemImpl"

    .line 193
    .line 194
    const-string v7, "Found an element that is not a WebView provider"

    .line 195
    .line 196
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catchall_1
    move-exception p0

    .line 202
    goto :goto_3

    .line 203
    :catch_1
    move-exception p0

    .line 204
    :goto_2
    :try_start_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "Error when parsing WebView config "

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    :goto_3
    if-eqz v2, :cond_9

    .line 228
    .line 229
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 230
    .line 231
    .line 232
    :cond_9
    throw p0
.end method

.method public static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string/jumbo v3, "signature"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v2, "SystemImpl"

    .line 38
    .line 39
    const-string v3, "Found an element in a webview provider that is not a signature"

    .line 40
    .line 41
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    new-array p0, p0, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Ljava/lang/String;

    .line 56
    .line 57
    return-object p0
.end method


# virtual methods
.method public final enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo p0, "user"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/UserManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 29
    .line 30
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    move-object v1, p2

    .line 40
    move v4, p1

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Tried to "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "enable "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " for user "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ": "

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "SystemImpl"

    .line 82
    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public final getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    const v0, 0x104004c0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final killPackageDependents(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "failed to call killPackageDependents for "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "SystemImpl"

    .line 26
    .line 27
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    .line 1
    const-class p0, Lcom/android/server/PinnerService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/PinnerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/flags/Flags;->pinWebview()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v0, "pinner.pin_webview_size"

    .line 22
    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v0, p0, Lcom/android/server/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 33
    .line 34
    :goto_0
    if-gtz v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const-string/jumbo v2, "webview"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/android/server/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/PinnerService$PinnedFile;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lcom/android/server/PinnerService;->unpinFile(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 72
    .line 73
    const-string v4, "PIN_SHARED_LIBS_FIRST"

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    array-length v5, v4

    .line 85
    move v6, v1

    .line 86
    :goto_2
    if-ge v6, v5, :cond_4

    .line 87
    .line 88
    aget-object v7, v4, v6

    .line 89
    .line 90
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_b

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/String;

    .line 121
    .line 122
    if-gtz v0, :cond_6

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_6
    const-string/jumbo v4, "webview"

    .line 126
    .line 127
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 130
    .line 131
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lcom/android/server/PinnerService$PinnedFile;

    .line 136
    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    if-eqz v5, :cond_8

    .line 139
    .line 140
    iget v5, v5, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 141
    .line 142
    if-ne v5, v0, :cond_7

    .line 143
    .line 144
    :goto_4
    move v3, v1

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/PinnerService;->unpinFile(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_8
    const-string v5, ".apk"

    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iget-object v6, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v3, v5}, Lcom/android/server/PinnerService;->pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-nez v5, :cond_9

    .line 165
    .line 166
    const-string v4, "PinnerService"

    .line 167
    .line 168
    const-string v5, "Failed to pin file = "

    .line 169
    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    iput-object v4, v5, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 179
    .line 180
    iget v3, v5, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 181
    .line 182
    sub-int v4, v0, v3

    .line 183
    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 186
    .line 187
    iget-object v7, v5, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-lez v4, :cond_a

    .line 194
    .line 195
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/PinnerService$PinnedFile;ILandroid/content/pm/ApplicationInfo;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_5
    sub-int/2addr v0, v3

    .line 199
    goto :goto_3

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    throw p1

    .line 203
    :catchall_1
    move-exception p1

    .line 204
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    throw p1

    .line 206
    :cond_b
    :goto_6
    return-void
.end method

.method public final updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    :cond_0
    const-string/jumbo p1, "webview_provider"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
