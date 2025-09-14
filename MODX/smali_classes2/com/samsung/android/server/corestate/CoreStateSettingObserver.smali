.class public final Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mGlobalSettingToTypeMap:Ljava/util/Map;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;

.field public final mSecureSettingToTypeMap:Ljava/util/Map;

.field public final mSecureSettingToTypeMapForUser:Ljava/util/Map;

.field public final mSystemSettingToTypeMap:Ljava/util/Map;

.field public final mSystemSettingToTypeMapForUser:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance p2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo p0, "open_in_pop_up_view"

    .line 51
    .line 52
    .line 53
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final beginObserveCoreStateSettings()V
    .locals 6

    .line 1
    const-string v0, "CoreStateSettingObserver"

    .line 2
    .line 3
    const-string v1, "beginObserveCoreStateSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "beginObserveCoreStateSettings : "

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 59
    .line 60
    check-cast v1, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 106
    .line 107
    check-cast v1, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final beginObserveCoreStateSettingsForSingleUser(I)V
    .locals 5

    .line 1
    const-string v0, "beginObserveCoreStateSettingsForSingleUser(u"

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, "CoreStateSettingObserver"

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v3, "beginObserveCoreStateSettings : "

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 60
    .line 61
    check-cast v0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onChange(u"

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, ") : uri="

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "CoreStateSettingObserver"

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 11

    .line 1
    check-cast p2, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_19

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Class;

    .line 36
    .line 37
    const-class v5, Ljava/lang/String;

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-ne v3, v5, :cond_6

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 43
    .line 44
    if-ne p2, v3, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 58
    .line 59
    if-ne p2, v3, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 73
    .line 74
    if-ne p2, v3, :cond_3

    .line 75
    .line 76
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 88
    .line 89
    if-ne p2, v3, :cond_4

    .line 90
    .line 91
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 103
    .line 104
    if-ne p2, v3, :cond_5

    .line 105
    .line 106
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3, v4, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    const-string v3, ""

    .line 118
    .line 119
    :goto_1
    if-eqz v3, :cond_0

    .line 120
    .line 121
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_0

    .line 130
    .line 131
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    move v2, v6

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    if-ne v3, v5, :cond_d

    .line 139
    .line 140
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 141
    .line 142
    check-cast v3, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/Integer;

    .line 149
    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    goto :goto_3

    .line 157
    :cond_7
    move v3, v1

    .line 158
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 159
    .line 160
    if-ne p2, v5, :cond_8

    .line 161
    .line 162
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    goto :goto_4

    .line 173
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 174
    .line 175
    if-ne p2, v5, :cond_9

    .line 176
    .line 177
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v5, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    goto :goto_4

    .line 188
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 189
    .line 190
    if-ne p2, v5, :cond_a

    .line 191
    .line 192
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    goto :goto_4

    .line 203
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 204
    .line 205
    if-ne p2, v5, :cond_b

    .line 206
    .line 207
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    goto :goto_4

    .line 218
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 219
    .line 220
    if-ne p2, v5, :cond_c

    .line 221
    .line 222
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    goto :goto_4

    .line 233
    :cond_c
    move v5, v1

    .line 234
    :goto_4
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eq v5, v3, :cond_0

    .line 239
    .line 240
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_d
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 245
    .line 246
    if-ne v3, v5, :cond_13

    .line 247
    .line 248
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    if-ne p2, v3, :cond_e

    .line 252
    .line 253
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    goto :goto_5

    .line 264
    :cond_e
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 265
    .line 266
    if-ne p2, v3, :cond_f

    .line 267
    .line 268
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    goto :goto_5

    .line 279
    :cond_f
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 280
    .line 281
    if-ne p2, v3, :cond_10

    .line 282
    .line 283
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    goto :goto_5

    .line 294
    :cond_10
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 295
    .line 296
    if-ne p2, v3, :cond_11

    .line 297
    .line 298
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    goto :goto_5

    .line 309
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 310
    .line 311
    if-ne p2, v3, :cond_12

    .line 312
    .line 313
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    :cond_12
    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    cmpl-float v3, v5, v3

    .line 328
    .line 329
    if-eqz v3, :cond_0

    .line 330
    .line 331
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_13
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 337
    .line 338
    if-ne v3, v5, :cond_0

    .line 339
    .line 340
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 341
    .line 342
    const-wide/16 v7, 0x0

    .line 343
    .line 344
    if-ne p2, v3, :cond_14

    .line 345
    .line 346
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 353
    .line 354
    .line 355
    move-result-wide v7

    .line 356
    goto :goto_6

    .line 357
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 358
    .line 359
    if-ne p2, v3, :cond_15

    .line 360
    .line 361
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 362
    .line 363
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v7

    .line 371
    goto :goto_6

    .line 372
    :cond_15
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 373
    .line 374
    if-ne p2, v3, :cond_16

    .line 375
    .line 376
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 377
    .line 378
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 383
    .line 384
    .line 385
    move-result-wide v7

    .line 386
    goto :goto_6

    .line 387
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 388
    .line 389
    if-ne p2, v3, :cond_17

    .line 390
    .line 391
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 392
    .line 393
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 398
    .line 399
    .line 400
    move-result-wide v7

    .line 401
    goto :goto_6

    .line 402
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 403
    .line 404
    if-ne p2, v3, :cond_18

    .line 405
    .line 406
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 413
    .line 414
    .line 415
    move-result-wide v7

    .line 416
    :cond_18
    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 417
    .line 418
    .line 419
    move-result-wide v9

    .line 420
    cmp-long v3, v7, v9

    .line 421
    .line 422
    if-eqz v3, :cond_0

    .line 423
    .line 424
    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :cond_19
    return v2
.end method

.method public final registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
