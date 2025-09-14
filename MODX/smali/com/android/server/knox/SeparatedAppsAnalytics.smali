.class public final Lcom/android/server/knox/SeparatedAppsAnalytics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/SeparatedAppsAnalytics;->DEBUG:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 13
    move-result-object v2

    .line 14
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 19
    move-result p0

    .line 20
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 23
    move-result-object p0

    .line 24
    iget-wide v2, p0, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    const-wide/16 v2, 0x0

    .line 42
    :goto_0
    const-string/jumbo p0, "id"

    .line 45
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 50
    const-string v0, "KNOX_APP_SEPARATION"

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 64
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    instance-of v3, v2, Ljava/lang/Integer;

    .line 82
    if-eqz v3, :cond_1

    .line 84
    check-cast v2, Ljava/lang/Integer;

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 92
    if-eqz v3, :cond_2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    .line 102
    if-eqz v3, :cond_3

    .line 104
    check-cast v2, Ljava/lang/Long;

    .line 106
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    instance-of v3, v2, [Ljava/lang/String;

    .line 112
    if-eqz v3, :cond_0

    .line 114
    check-cast v2, [Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-static {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 123
    sget-boolean p1, Lcom/android/server/knox/SeparatedAppsAnalytics;->DEBUG:Z

    .line 125
    if-eqz p1, :cond_5

    .line 127
    const-string p1, " / "

    .line 129
    invoke-static {p2, p1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    const-string p1, "SeparatedAppsAnalytics"

    .line 146
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    return-void

    .line 150
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw p0
.end method
