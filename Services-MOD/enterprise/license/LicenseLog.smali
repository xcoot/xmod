.class public abstract Lcom/android/server/enterprise/license/LicenseLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v0, "value"

    .line 6
    const-string/jumbo v1, "id"

    .line 9
    const-string/jumbo v2, "date"

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    .line 15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    new-instance v6, Landroid/content/ContentValues;

    .line 24
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string/jumbo v7, "pkgName"

    .line 30
    invoke-virtual {v6, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    const-string v7, "LICENSE_LOG"

    .line 37
    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_3

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v6, v3

    .line 55
    move-object v7, v6

    .line 56
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_2

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/content/ContentValues;

    .line 68
    if-eqz v8, :cond_0

    .line 70
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v5

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_0
    :goto_1
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 92
    move-result-object v8

    .line 93
    if-nez v8, :cond_1

    .line 95
    new-instance v8, Landroid/os/Bundle;

    .line 97
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move-object v3, v4

    .line 116
    goto :goto_3

    .line 117
    :goto_2
    const-string v0, "LicenseLogService"

    .line 119
    const-string/jumbo v1, "getLog() failed"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_3
    :goto_3
    return-object v3
.end method
