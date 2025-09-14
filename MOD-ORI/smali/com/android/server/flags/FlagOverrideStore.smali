.class public Lcom/android/server/flags/FlagOverrideStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

.field public final mSettingsProxy:Lcom/android/server/flags/GlobalSettingsProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/GlobalSettingsProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/GlobalSettingsProxy;

    .line 5
    .line 6
    return-void
.end method

.method public static getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "flag|"

    .line 2
    .line 3
    .line 4
    const-string v1, "."

    .line 5
    .line 6
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public erase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/GlobalSettingsProxy;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/ContentResolver;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p0, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/GlobalSettingsProxy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    const-string/jumbo p0, "name"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "value"

    .line 11
    .line 12
    .line 13
    filled-new-array {p0, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "flag|"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const-string v2, "."

    .line 57
    .line 58
    const/4 v3, 0x5

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-gez v4, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v4, 0x1

    .line 67
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    add-int/2addr v2, v4

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/util/Map;

    .line 119
    .line 120
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/GlobalSettingsProxy;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v1, v1, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    invoke-static {v1, v0, p3, v2}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;->onFlagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
