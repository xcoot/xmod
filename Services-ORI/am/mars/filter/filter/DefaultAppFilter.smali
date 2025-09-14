.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

.field public mDefaultAppChangedReceiverRegistered:Z

.field public mDefaultDialerPackage:Ljava/lang/String;

.field public mDefaultHomePackage:Ljava/lang/String;

.field public final mDefaultIMEList:Landroid/util/ArrayMap;

.field public mDefaultSmsPackage:Ljava/lang/String;

.field public mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

.field public mInputMethodObserverRegistered:Z

.field public mSecureFolderEnabled:Z

.field public mSecureFolderUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 4

    .line 1
    const-string v0, "MARs:DefaultAppFilter"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string v2, "IllegalArgumentException occurred in unregisterDefaultIMEContentObserver()"

    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_1
    const-string p0, "IllegalArgumentException occurred in unregisterDefaultAppChangedReceiver()"

    .line 46
    .line 47
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 p3, 0xb

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-ne p1, p2, :cond_2

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    return p3

    .line 24
    :cond_0
    if-eqz p4, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    return p3

    .line 35
    :cond_1
    if-eqz p4, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    return p3

    .line 46
    :cond_2
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 52
    .line 53
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    return v0

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    return p3

    .line 90
    :cond_4
    return v0
.end method

.method public final getDefaultIMEPackage(I)V
    .locals 4

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "getDefaultIMEPackage called with invalid userId : "

    .line 4
    .line 5
    .line 6
    const-string v0, "MARs:DefaultAppFilter"

    .line 7
    .line 8
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "default_input_method"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v2, "/"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    aget-object v3, v2, v1

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_1

    .line 47
    .line 48
    aget-object v0, v2, v1

    .line 49
    .line 50
    :cond_1
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 94
    .line 95
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 98
    .line 99
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v2

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_1
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-string/jumbo v2, "persona"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    const/16 v3, 0x96

    .line 83
    .line 84
    if-lt v0, v3, :cond_2

    .line 85
    .line 86
    const/16 v3, 0xa0

    .line 87
    .line 88
    if-gt v0, v3, :cond_2

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 97
    .line 98
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 103
    .line 104
    new-instance v3, Landroid/os/Handler;

    .line 105
    .line 106
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string/jumbo v3, "default_input_method"

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    .line 139
    .line 140
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    new-instance v5, Landroid/content/IntentFilter;

    .line 146
    .line 147
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 151
    .line 152
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 156
    .line 157
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 161
    .line 162
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    .line 166
    .line 167
    invoke-direct {v3, p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    .line 168
    .line 169
    .line 170
    iput-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v8, 0x2

    .line 181
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    .line 185
    .line 186
    :goto_2
    return-void
.end method
