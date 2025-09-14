.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/service/textclassifier/ITextClassifierCallback;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 10
    .line 11
    return-void
.end method

.method public static rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/app/RemoteAction;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Landroid/graphics/drawable/Icon;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x2

    .line 35
    if-ne v6, v7, :cond_0

    .line 36
    .line 37
    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v4, 0x1

    .line 42
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->toBuilder()Landroid/view/textclassifier/TextClassification$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->clearActions()Landroid/view/textclassifier/TextClassification$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v2}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    :goto_1
    return-object p0
.end method

.method public static validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/RemoteAction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v4, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 24
    .line 25
    monitor-enter v4

    .line 26
    :try_start_0
    iget-object v5, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v5, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    iget-object v5, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 37
    .line 38
    iget-object v6, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    .line 39
    .line 40
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    check-cast v5, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    new-instance v5, Landroid/net/Uri$Builder;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v6, "content"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "com.android.textclassifier.icons"

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v2, v2, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 72
    .line 73
    check-cast v2, Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-virtual {v0, p0}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method


# virtual methods
.method public final onFailure()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "TextClassificationManagerService"

    .line 9
    .line 10
    const-string v1, "Callback error"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/textclassifier/TextClassification;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    instance-of v1, v0, Landroid/view/textclassifier/ConversationActions;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getConversationActions()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    move v5, v4

    .line 51
    :goto_0
    if-ge v4, v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroid/view/textclassifier/ConversationAction;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    invoke-virtual {v7}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getType()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x2

    .line 74
    if-ne v7, v8, :cond_1

    .line 75
    .line 76
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const/4 v5, 0x1

    .line 97
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-eqz v5, :cond_6

    .line 104
    .line 105
    new-instance v1, Landroid/view/textclassifier/ConversationActions;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {v1, v3, v0}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v1}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    instance-of v0, v0, Landroid/view/textclassifier/TextSelection;

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/view/textclassifier/TextSelection;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-nez v1, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->toBuilder()Landroid/view/textclassifier/TextSelection$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 162
    .line 163
    invoke-interface {p0, p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_0
    move-exception p0

    .line 168
    const-string p1, "TextClassificationManagerService"

    .line 169
    .line 170
    const-string v0, "Callback error"

    .line 171
    .line 172
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void
.end method
