.class public final Lcom/android/server/translation/TranslationManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActiveTranslations:Landroid/util/ArrayMap;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mLastActivityTokens:Ljava/lang/ref/WeakReference;

.field public final mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

.field public mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

.field public final mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

.field public mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

.field public final mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TranslationManagerServiceImpl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 10
    .line 11
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    new-instance p1, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance p1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked$4()V

    .line 40
    .line 41
    .line 42
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 51
    .line 52
    return-void
.end method

.method public static createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string/jumbo v0, "state"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "source_locale"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p1, "target_locale"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string/jumbo p1, "package_name"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public static getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "Cannot find packageManager for"

    .line 23
    .line 24
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "TranslationManagerServiceImpl"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return v0
.end method

.method public static invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "Failed to invoke UiTranslationStateCallback: "

    .line 2
    .line 3
    const-string v1, "TranslationManagerServiceImpl"

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p2, p3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    check-cast p4, Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    .line 32
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    .line 40
    if-ne p0, p4, :cond_1

    .line 41
    .line 42
    :try_start_1
    invoke-interface {p2, p3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception p0

    .line 47
    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    if-eqz p1, :cond_0

    .line 5
    iget-object v3, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v4, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    iget-object v5, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    const/4 v2, 0x3

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 28
    .line 29
    const-string v5, "--dump-dumpable"

    .line 30
    .line 31
    const-string v6, "UiTranslationController"

    .line 32
    .line 33
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 59
    :catch_1
    const-string p1, "  Got a RemoteException while dumping the activity"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "  Failure while dumping the activity: "

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "No requested UiTranslation Activity."

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v0, "number waiting finish callback activities: "

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/os/IBinder;

    .line 128
    .line 129
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v0, "shareableActivityToken: "

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_2
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 2
    .line 3
    const-string v1, "ensureRemoteServiceLocked(): isServiceAvailableForUser="

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 6
    .line 7
    if-nez v2, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "TranslationManagerServiceImpl"

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    check-cast v5, Lcom/android/server/translation/TranslationManagerService;

    .line 21
    .line 22
    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const-string p0, "ensureRemoteServiceLocked(): no service component name."

    .line 27
    .line 28
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v3

    .line 32
    :cond_1
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v9, "android.service.translation.TranslationService"

    .line 43
    .line 44
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const/16 v10, 0x84

    .line 60
    .line 61
    invoke-virtual {v9, v8, v10, v0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    if-eqz v8, :cond_2

    .line 66
    .line 67
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 68
    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    const/4 v8, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v8, 0x0

    .line 74
    :goto_0
    move-object v9, v5

    .line 75
    check-cast v9, Lcom/android/server/translation/TranslationManagerService;

    .line 76
    .line 77
    iget-boolean v9, v9, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 78
    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    if-nez v8, :cond_4

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "ensureRemoteServiceLocked(): "

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " is not available,"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-object v3

    .line 127
    :cond_4
    new-instance v1, Lcom/android/server/translation/RemoteTranslationService;

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 134
    .line 135
    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/server/translation/RemoteTranslationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 146
    .line 147
    return-object p0
.end method

.method public final invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Invoking "

    .line 16
    .line 17
    const-string v1, " callbacks for translation state="

    .line 18
    .line 19
    const-string v2, " for app with uid="

    .line 20
    .line 21
    invoke-static {p3, p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " packageName="

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p4, "TranslationManagerServiceImpl"

    .line 41
    .line 42
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    if-nez p3, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 55
    .line 56
    iget p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 63
    .line 64
    new-instance p4, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {p4, p0, p5, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/service/translation/TranslationServiceInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v2, p1, v1, v3}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final registerUiTranslationStateCallbackLocked(ILandroid/os/IRemoteCallback;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "New registered callback for sourceUid="

    .line 17
    .line 18
    const-string v2, " with currently "

    .line 19
    .line 20
    const-string v3, " active translations"

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "TranslationManagerServiceImpl"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    move v3, v1

    .line 50
    :goto_0
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ge v3, v4, :cond_3

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 65
    .line 66
    iget v5, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 67
    .line 68
    sget-boolean v6, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    .line 69
    .line 70
    iget-object v7, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    const-string v6, "Triggering callback for sourceUid="

    .line 75
    .line 76
    const-string v8, " for translated app with uid="

    .line 77
    .line 78
    const-string/jumbo v9, "packageName="

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v5, v6, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, " isPaused="

    .line 89
    .line 90
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v8, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 94
    .line 95
    invoke-static {v2, v6, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    .line 99
    .line 100
    iget-object v8, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 101
    .line 102
    invoke-static {v1, v6, v8, v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {p1, v5, p2, v6, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 110
    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    iget-object v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    .line 114
    .line 115
    iget-object v4, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 116
    .line 117
    const/4 v8, 0x1

    .line 118
    invoke-static {v8, v6, v4, v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {p1, v5, p2, v4, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return-void
.end method

.method public final updateLocked(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked$4()V

    .line 6
    .line 7
    .line 8
    return p1
.end method

.method public final updateRemoteServiceLocked$4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/translation/TranslationManagerService;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "TranslationManagerServiceImpl"

    .line 14
    .line 15
    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    move/from16 v0, p6

    .line 8
    .line 9
    iget-object v1, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v1, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v5, "TranslationManagerServiceImpl"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Unknown activity or it was finished to query for update translation state for token="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " taskId="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " for state= "

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v15, v5}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    if-ne v15, v4, :cond_1

    .line 55
    .line 56
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 62
    .line 63
    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 64
    .line 65
    move-object v9, v2

    .line 66
    move/from16 v10, p1

    .line 67
    .line 68
    move-object/from16 v11, p2

    .line 69
    .line 70
    move-object/from16 v12, p3

    .line 71
    .line 72
    move-object/from16 v13, p4

    .line 73
    .line 74
    move-object/from16 v14, p7

    .line 75
    .line 76
    invoke-interface/range {v8 .. v14}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "Update UiTranslationState fail: "

    .line 82
    .line 83
    invoke-static {v1, v0, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, v7, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v2, v7, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 99
    .line 100
    invoke-static {v1, v0, v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 115
    .line 116
    const/4 v10, 0x2

    .line 117
    const-string v11, " packageName="

    .line 118
    .line 119
    const-string v12, " for app with uid="

    .line 120
    .line 121
    const-string v13, "Updating to translation state="

    .line 122
    .line 123
    const/4 v14, 0x1

    .line 124
    const/4 v3, 0x0

    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    if-eqz v15, :cond_7

    .line 128
    .line 129
    invoke-static {v15, v8, v13, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, " but no active translation was found for it"

    .line 134
    .line 135
    invoke-static {v0, v9, v1, v5}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_1
    move v0, v3

    .line 139
    :goto_2
    move v2, v15

    .line 140
    goto :goto_4

    .line 141
    :cond_3
    if-eqz v15, :cond_6

    .line 142
    .line 143
    if-eq v15, v14, :cond_5

    .line 144
    .line 145
    if-eq v15, v10, :cond_4

    .line 146
    .line 147
    if-eq v15, v4, :cond_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 151
    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    iget-object v1, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_7

    .line 175
    .line 176
    iget-object v1, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 193
    .line 194
    if-eqz v0, :cond_2

    .line 195
    .line 196
    move v2, v10

    .line 197
    move v0, v14

    .line 198
    goto :goto_4

    .line 199
    :cond_7
    :goto_3
    move v0, v14

    .line 200
    goto :goto_2

    .line 201
    :goto_4
    if-eqz v0, :cond_8

    .line 202
    .line 203
    move-object/from16 v1, p0

    .line 204
    .line 205
    move v0, v3

    .line 206
    move-object/from16 v3, p2

    .line 207
    .line 208
    move-object/from16 v4, p3

    .line 209
    .line 210
    move-object/from16 v16, v5

    .line 211
    .line 212
    move-object v5, v9

    .line 213
    move-object v10, v6

    .line 214
    move v6, v8

    .line 215
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_8
    move v0, v3

    .line 220
    move-object/from16 v16, v5

    .line 221
    .line 222
    move-object v10, v6

    .line 223
    :goto_5
    iget-object v1, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 224
    .line 225
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 230
    .line 231
    if-eqz v15, :cond_d

    .line 232
    .line 233
    if-eq v15, v14, :cond_c

    .line 234
    .line 235
    const/4 v2, 0x2

    .line 236
    if-eq v15, v2, :cond_b

    .line 237
    .line 238
    const/4 v2, 0x3

    .line 239
    if-eq v15, v2, :cond_a

    .line 240
    .line 241
    :cond_9
    :goto_6
    move-object/from16 v2, v16

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_a
    if-eqz v1, :cond_9

    .line 245
    .line 246
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 247
    .line 248
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_b
    if-eqz v1, :cond_9

    .line 253
    .line 254
    iput-boolean v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_c
    if-eqz v1, :cond_9

    .line 258
    .line 259
    iput-boolean v14, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_d
    if-nez v1, :cond_9

    .line 263
    .line 264
    :try_start_1
    invoke-interface {v10, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .line 266
    .line 267
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 268
    .line 269
    new-instance v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 270
    .line 271
    move-object/from16 v3, p2

    .line 272
    .line 273
    move-object/from16 v4, p3

    .line 274
    .line 275
    invoke-direct {v1, v8, v3, v4, v9}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :catch_1
    move-exception v0

    .line 283
    move-object/from16 v3, p2

    .line 284
    .line 285
    move-object/from16 v4, p3

    .line 286
    .line 287
    move-object v1, v0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v2, "Failed to call linkToDeath for translated app with uid="

    .line 291
    .line 292
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v2, "; activity is already dead"

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    move-object/from16 v2, v16

    .line 308
    .line 309
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .line 311
    .line 312
    const/4 v2, 0x3

    .line 313
    move-object/from16 v1, p0

    .line 314
    .line 315
    move-object/from16 v3, p2

    .line 316
    .line 317
    move-object/from16 v4, p3

    .line 318
    .line 319
    move-object v5, v9

    .line 320
    move v6, v8

    .line 321
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    goto :goto_8

    .line 325
    :goto_7
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    .line 326
    .line 327
    if-eqz v0, :cond_e

    .line 328
    .line 329
    invoke-static {v15, v8, v13, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v0, v9, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_e
    :goto_8
    return-void
.end method
