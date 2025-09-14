.class public final Lcom/android/server/backup/AppSpecificLocalesBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string v0, "app_locales"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 12
    .line 13
    const-class p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    const-string v0, "app_locales"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AppLocalesBackupHelper"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {p1, p0, p2}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->stageAndApplyRestoredPayload(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string p1, "Couldn\'t communicate with locale manager"

    .line 21
    .line 22
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "Unexpected restore key "

    .line 27
    .line 28
    invoke-static {p0, p1, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 3

    .line 1
    const-string v0, "app_locales"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AppLocalesBackupHelper"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->getBackupPayload(I)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "Couldn\'t communicate with locale manager"

    .line 23
    .line 24
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Unexpected backup key "

    .line 29
    .line 30
    invoke-static {p0, p1, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object v2
.end method
