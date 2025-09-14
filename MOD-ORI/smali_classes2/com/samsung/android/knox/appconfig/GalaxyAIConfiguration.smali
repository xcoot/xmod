.class public final Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "GalaxyAIConfiguration"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;-><init>(Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    .line 4
    iget-object p1, p1, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final action(Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const v2, 0x30b73d5

    .line 30
    .line 31
    .line 32
    if-eq p2, v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string p2, "key_samsung_interpreter"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    const-string p2, "GalaxyAIConfiguration"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "Unknown restriction key: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_5

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_4
    return-void

    .line 80
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final clearAllRestrictions(Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setInterpreterState(Landroid/os/Bundle;IZ)V
    .locals 2

    .line 1
    const-string v0, "grayout"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    :goto_0
    const-string p1, "com.samsung.android.app.interpreter"

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    filled-new-array {p1}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method
