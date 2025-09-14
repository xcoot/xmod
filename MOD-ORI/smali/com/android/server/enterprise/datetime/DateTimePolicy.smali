.class public final Lcom/android/server/enterprise/datetime/DateTimePolicy;
.super Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/enterprise/datetime/DateTimePolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

.field public final mNtpInfoLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/datetime/NtpInfo;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 49
    .line 50
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "Permission Denial: can\'t dump DateTimePolicy"

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 18
    .line 19
    const-string p3, "adminUid"

    .line 20
    .line 21
    const-string v0, "DateTimeEnabled"

    .line 22
    .line 23
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const-string v0, "RESTRICTION"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 34
    .line 35
    const-string/jumbo v6, "ntpPollInterShorter"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v7, "ntpLastAdminUid"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "ntpServer"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v3, "ntpTimeout"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "ntpMaxAttempts"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v5, "ntpPollInterval"

    .line 51
    .line 52
    .line 53
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string/jumbo p3, "generic"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "auto_time"

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    return v0
.end method

.method public final getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "\\byy\\b"

    .line 14
    .line 15
    const-string/jumbo v0, "y"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "\\bMM\\b"

    .line 23
    .line 24
    const-string v0, "M"

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "\\bdd\\b"

    .line 31
    .line 32
    const-string/jumbo v0, "d"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final getDateTime(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final getNtpServer()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getNtpTimeout()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public final getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "RESTRICTION"

    .line 4
    .line 5
    const-string v0, "DateTimeEnabled"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    return p1
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
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string/jumbo v1, "ntpLastAdminUid"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const-string p1, "DateTimePolicyService"

    .line 22
    .line 23
    const-string v0, "admin removed, reverting ntp info"

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_1
    const-string v0, "DateTimePolicyService"

    .line 32
    .line 33
    const-string/jumbo v1, "resetNtpInfo"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    const-wide/16 v9, 0x0

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    move-object v2, p0

    .line 49
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(IIJJJLjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_0
    :goto_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final saveNtpInfoInDbAndUpdateCache(IIJJJLjava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v4, p5

    .line 8
    .line 9
    move-wide/from16 v6, p7

    .line 10
    .line 11
    move-object/from16 v8, p9

    .line 12
    .line 13
    iget-object v9, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    .line 15
    const-string/jumbo v10, "ntpServer"

    .line 16
    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    invoke-virtual {v9, v11, v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    cmp-long v14, v2, v12

    .line 28
    .line 29
    if-nez v14, :cond_0

    .line 30
    .line 31
    const/4 v14, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    :goto_0
    const-string/jumbo v15, "ntpTimeout"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v10, v11, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    and-int/2addr v9, v10

    .line 45
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    .line 47
    cmp-long v14, v4, v12

    .line 48
    .line 49
    if-nez v14, :cond_1

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    :goto_1
    const-string/jumbo v15, "ntpPollInterval"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10, v11, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    and-int/2addr v9, v10

    .line 65
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    .line 67
    cmp-long v12, v6, v12

    .line 68
    .line 69
    if-nez v12, :cond_2

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    :goto_2
    const-string/jumbo v13, "ntpPollInterShorter"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    and-int/2addr v9, v10

    .line 85
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    const/4 v12, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    :goto_3
    const-string/jumbo v13, "ntpMaxAttempts"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v11, v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    and-int/2addr v9, v10

    .line 103
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 104
    .line 105
    invoke-virtual {v10, v8}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v8, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 109
    .line 110
    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 119
    .line 120
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 124
    .line 125
    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 129
    .line 130
    if-nez p2, :cond_4

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    :goto_4
    const-string/jumbo v1, "ntpLastAdminUid"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v11, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    and-int/2addr v0, v9

    .line 146
    return v0
.end method

.method public final setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "device_policy"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final setDateFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 p0, 0x3e8

    .line 20
    .line 21
    div-long p0, p2, p0

    .line 22
    .line 23
    const-wide/32 v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    cmp-long p0, p0, v2

    .line 27
    .line 28
    if-gez p0, :cond_1

    .line 29
    .line 30
    new-instance p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;

    .line 31
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;-><init>(J)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    :goto_0
    return v1
.end method

.method public final setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 11
    .line 12
    const-string v5, "DateTimeEnabled"

    .line 13
    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda5;

    .line 26
    .line 27
    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/knox/ContextInfo;IZ)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return p0
.end method

.method public final setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string v0, "DateTimePolicyService"

    .line 10
    .line 11
    const-string v1, "NtpInfo object should not be null!"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v11, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v11

    .line 20
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    if-eqz v10, :cond_3

    .line 25
    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingIntervalShorter()J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-wide/16 v12, 0x0

    .line 43
    .line 44
    cmp-long v14, v4, v12

    .line 45
    .line 46
    if-ltz v14, :cond_2

    .line 47
    .line 48
    cmp-long v14, v6, v12

    .line 49
    .line 50
    if-ltz v14, :cond_2

    .line 51
    .line 52
    cmp-long v12, v8, v12

    .line 53
    .line 54
    if-ltz v12, :cond_2

    .line 55
    .line 56
    if-gez v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    .line 61
    move-object v1, p0

    .line 62
    move v2, v3

    .line 63
    move v3, v12

    .line 64
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(IIJJJLjava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    :goto_0
    const-string v0, "DateTimePolicyService"

    .line 72
    .line 73
    const-string/jumbo v1, "invalid parameters provided, all values should be 0 or higher"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v11

    .line 80
    return v2

    .line 81
    :cond_3
    const-string v1, "DateTimePolicyService"

    .line 82
    .line 83
    const-string/jumbo v2, "resetNtpInfo"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .line 98
    move-object v1, p0

    .line 99
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(IIJJJLjava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_1
    new-instance v2, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v2, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 109
    .line 110
    .line 111
    monitor-exit v11

    .line 112
    return v1

    .line 113
    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw v0
.end method

.method public final setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    .line 18
    .line 19
    .line 20
    filled-new-array {v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 40
    .line 41
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 48
    .line 49
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    return v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string v2, "android"

    .line 65
    .line 66
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    if-nez p2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "12"

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    const-string v0, "24"

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :cond_4
    :goto_0
    return v1
.end method

.method public final setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    const-string p2, "DateTimePolicyService"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-string/jumbo p0, "setTimeZone() has failed : Invalid input."

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance p1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_4
    :goto_1
    const-string/jumbo p0, "setTimeZone() has failed : Not allowed by admin."

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return v1
.end method

.method public final systemReady()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    const-string/jumbo v2, "ntpServer"

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    .line 21
    const-string/jumbo v2, "ntpMaxAttempts"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :catch_0
    :try_start_2
    const-string v1, "DateTimePolicyService"

    .line 44
    .line 45
    const-string/jumbo v2, "failed to convert max attempts"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    .line 64
    const-string/jumbo v2, "ntpPollInterval"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    :try_start_4
    const-string v1, "DateTimePolicyService"

    .line 86
    .line 87
    const-string/jumbo v2, "failed to convert polling interval"

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 94
    .line 95
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 100
    .line 101
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    .line 106
    const-string/jumbo v2, "ntpPollInterShorter"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_2
    :try_start_6
    const-string v1, "DateTimePolicyService"

    .line 126
    .line 127
    const-string/jumbo v2, "failed to convert polling interval shorter"

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 134
    .line 135
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 140
    .line 141
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 145
    .line 146
    const-string/jumbo v2, "ntpTimeout"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_3
    :try_start_8
    const-string v1, "DateTimePolicyService"

    .line 166
    .line 167
    const-string/jumbo v2, "failed to convert timeout"

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 174
    .line 175
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 180
    .line 181
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    .line 182
    .line 183
    .line 184
    :goto_3
    monitor-exit v0

    .line 185
    return-void

    .line 186
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 187
    throw p0
.end method
