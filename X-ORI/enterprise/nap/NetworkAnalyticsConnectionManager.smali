.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;


# instance fields
.field public activatedProfileCounter:I

.field public binderMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 42
    .line 43
    return-void
.end method

.method public final getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "getBinderForPackage: binder is not null for "

    .line 16
    .line 17
    .line 18
    const-string v1, "NetworkAnalytics:ConnectionManager"

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "getServiceConnectionForPackage: service connection is not null for "

    .line 16
    .line 17
    .line 18
    const-string v1, "NetworkAnalytics:ConnectionManager"

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public final isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "NetworkAnalytics:ConnectionManager"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v2, "isProfilePresentForPackage for packageName = "

    .line 8
    .line 9
    .line 10
    invoke-static {v2, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const-string/jumbo p1, "isProfilePresentForPackage for packageName is = "

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return p0
.end method

.method public final removeBinderForPackage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "removeBinderForPackage completely for packageName = "

    .line 6
    .line 7
    .line 8
    const-string v1, "NetworkAnalytics:ConnectionManager"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "NetworkAnalytics:ConnectionManager"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v2, "removeProfileForPackage for packageName = "

    .line 8
    .line 9
    .line 10
    invoke-static {v2, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/List;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v4, v5, :cond_2

    .line 30
    .line 31
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 47
    .line 48
    add-int/lit8 v5, v5, -0x1

    .line 49
    .line 50
    iput v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-gtz p2, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 67
    .line 68
    if-gez p1, :cond_4

    .line 69
    .line 70
    iput v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 71
    .line 72
    :cond_4
    if-eqz v1, :cond_5

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo p2, "removeProfileForPackage for activatedProfileCounter = "

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 83
    .line 84
    invoke-static {p1, p0, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    return-void
.end method
