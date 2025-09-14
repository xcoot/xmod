.class public final Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mNLSPkgMap:Landroid/util/ArrayMap;

.field public final mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    new-instance v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    .line 25
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    .line 3
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "Failed to unregister notification listener, "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const-string v0, "MARs:OngoingNotiPackageFilter"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result p3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p3, v0

    .line 22
    :goto_0
    const/4 v1, 0x3

    .line 23
    const-string v2, ")"

    .line 25
    const-string v3, "("

    .line 27
    const-string v4, "MARs:OngoingNotiPackageFilter"

    .line 29
    if-eqz p3, :cond_1

    .line 31
    const-string/jumbo p0, "filter(NotiListener) : "

    .line 34
    invoke-static {p1, p0, p4, v3, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    if-eqz p0, :cond_3

    .line 46
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p0

    .line 54
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_3

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object p3

    .line 64
    check-cast p3, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/service/notification/StatusBarNotification;

    .line 72
    if-eqz p3, :cond_2

    .line 74
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 84
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 87
    move-result v5

    .line 88
    if-ne v5, p2, :cond_2

    .line 90
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 93
    move-result-object p3

    .line 94
    iget p3, p3, Landroid/app/Notification;->flags:I

    .line 96
    and-int/lit8 p3, p3, 0x22

    .line 98
    if-eqz p3, :cond_2

    .line 100
    const-string/jumbo p0, "filter : "

    .line 103
    invoke-static {p1, p0, p4, v3, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1

    .line 111
    :cond_3
    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    .line 3
    new-instance v0, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "Failed to register notification listener, "

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "MARs:OngoingNotiPackageFilter"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
.end method
